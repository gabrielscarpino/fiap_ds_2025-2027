import streamlit as st
import pandas as pd
import plotly.express as px

st.set_page_config(
    page_title = "Teia Geoespacial",
    page_icon = "🕸️",
    layout = "wide"
)

@st.cache_data
def carrega_dado():
    dado = {
        "id": [1, 2, 3, 4, 5],
        "bairro": ["Franco da Rocha", "Avenida Professor Luiz Ignácio Anhaia Mello", "Mairiporã", "Avenida Aricanduva", "Litoral Paulista"],
        "classificacao": ["Deslizamento", "Inundação", "Deslizamento", "Inundação", "Deslizamento"],
        "latitude": [-23.3220, -23.5820, -23.2030, -23.5650, -23.5000],
        "longitude": [-46.7270, -46.5823, -46.3513, -46.5090, -48.0538],
        "populacao": [150.241, 500.000, 97.835, 266.000, 200.200],
        "risco": [50, 30, 80, 25, 50]
    }
    return pd.DataFrame(dado)

df = carrega_dado()

with st.sidebar:
    st.title("🤖 **Controle de Simulação**")
    st.info("Simule os dados de satélite para a previsão e alerta de desastres naturais!")
    st.subheader("⚙️ **Configuração**")
    chuva_teste = {}
    for i, row in df.iterrows():
        chuva_teste[row['id']] = st.slider(
            f"{row['bairro']} (MM)",
            0.0, 100.0, float(row['risco'] - 10.0)
        )

df['chuva'] = df['id'].map(chuva_teste)
df['saturacao'] = (df['chuva'] / df['risco'] * 100).round(1)
df['status'] = df.apply(lambda x: "Estado Crítico! ⚠️" if x['chuva'] >= x["risco"] else "Estado Estável ✅", axis = 1)

st.title("**🕸️ Teia Geoespacial** | Inteligência Geoespacial Comunitária")
st.markdown("**Global Solution:** Space Connect")
st.markdown("**ODS 11:** Cidades Sustentáveis")

c1, c2, c3, c4 = st.columns(4)
area_risco = df[df['status'] == "Estado Crítico! ⚠️"]
populacao_risco = area_risco['populacao'].sum()
with c1:
    st.metric("Áreas Monitoradas:", len(df))
with c2:
    st.metric("Alertas:", len(area_risco), delta = len(area_risco), delta_color = "inverse")
with c3:
    st.metric("População em Risco:", f"{populacao_risco:.3f} mil" if populacao_risco > 0 else "0")
with c4:
    st.metric("Status:", "Alerta! ⚠️" if len(area_risco) > 0 else "Estável ✅")

st.subheader("Mapa de Controle:")
img = px.scatter_mapbox(
    df, lat = "latitude", lon = "longitude", color = "status",
    size = "populacao", size_max = 50,
    color_discrete_map = {"Estado Estável ✅": "#008000" , "Estado Crítico! ⚠️": "#FF0000"},
    hover_name = "bairro",
    hover_data = {"chuva": True, "saturacao": True, "classificacao": True, "latitude": False, "longitude": False},
    mapbox_style = "carto-positron", zoom = 10, height = 500
)
img.update_layout(margin = {"r": 0, "t": 0, "l": 0, "b": 0})
st.plotly_chart(img, use_container_width = True)

st.divider()

t1, t2 = st.tabs(["📱 Alerta em SMS", "📁 Log da Defesa Civil"])
with t1:
    st.subheader("Simulação de SMS:")
    st.write("Um resumo de como seria a mensagem traduzindo dados espaciais complexos para uma linguagem simplificada via SMS!")
    if len(area_risco) == 0:
        st.success("Nenhum alerta. O clima e o solo estão estáveis!")
    else:
        for _, area in area_risco.iterrows():
            with st.chat_message("user", avatar = "🧑‍🚒"):
                st.write(f"**Defesa Civil:** Atenção moradores de {area['bairro']}!")
                st.error(f"""
                        Houve a detecção de saturação de solo de {area['saturacao']}% na região!

                        **Risco Iminente:** {area['classificacao'].lower()}

                        **Como Prosseguir:** Se encaminhe até o ponto de apoio mais próximo

                        **📞 Emergência: 199 (Defesa Civil)**
                        """)
                
with t2:
    st.subheader("📁 Registro de Ocorrências:")
    st.write("Um resumo de como seria a mensagem para a Defesa Civil!")
    st.dataframe(df, use_container_width = True)

st.divider()

st.caption("🕸️ **Teia Geoespacial** - Desenvolvido para o Global Solution: **FIAP**")