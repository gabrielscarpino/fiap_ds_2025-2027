"""
    desafio03.py

    Este script foi escrito seguindo as específicações presentes na descrição do
terceiro desafio da fase 02 do curso de Data Science de 2025 da FIAP.
    O conteúdo que aparecer entre parênteses em cada linha de comentário iniciada
com um "#" abaixo faz referência ao item que solicitou a criação do recurso 
citado antes da abertura do parênteses. 
    Por exemplo:
# Loop (item "c") que permite o cadastro de NO MÍNIMO 5 produtos (item "d")

No exemplo acima, o comentário indica que será criado um loop (conforme pede o 
item "c"), e ainda, este loop deverá ser executado PELO MENOS 5 vezes para 
garantir que o usuário cadastre no mínimo 5 produtos (solicitado do item "e").

Observações:
- O primeiro bloco "try" foi colocado após a definição das estruturas principais
(como definições de funções e coleções de armazenamento de escopo global) pois é 
somente após essas definições que o usuário realmente irá interagir com
a aplicação. Sendo assim, esse é o principal motivo deste bloco "try" mais 
genérico ter sido colocado nessa posição e não na linha 1 do script, por exemplo. 
"""

import json
# Cria a estrutura do produto (itens "a" e "b") e retorna um dicionário
def cadastra_produto():
    """Solicita as principais informações sobre o produto a ser cadastrado"""
    descricao_produto = ''    # Serve como flag (somente para evitar valores vazios)
    while not descricao_produto.strip():
        descricao_produto = input('Digite uma breve descrição para o produto: ')
        if not descricao_produto.strip():
            print('A descrição não pode estar em branco!\n')
    
    valor_produto = 0
    while not valor_produto:    # Tratando exceções genéricas e específicas (item "d")
        try: 
            valor_produto = float(input('Digite um valor para o produto: '))
        except ValueError:
            print('Erro. Digite um valor numérico!\n')
        except Exception:
            print('Ops. Houve um erro inesperado.\n')
        else:
            if not valor_produto:
                print('O valor do produto não pode ser igual a 0\n')
        
    tipo_embalagem = ''
    while not tipo_embalagem.strip():
        tipo_embalagem = input('Digite um tipo de embalagem para o produto: ')
        if not tipo_embalagem.strip():
            print('O tipo de embalagem não pode estar em branco!\n')
    
    valor_icms = calcula_icms(valor_produto)    # Utilizando lambda (item "b")
    
    produto = { 
        'descricao_produto': descricao_produto,
        'valor_produto': valor_produto,
        'tipo_embalagem': tipo_embalagem,
        'valor_icms': valor_icms
    }
    return produto
 
# Gerando arquivo ".json" final (item "e")
def cria_json(dicio_produtos):
    """Gera um arquivo ".json" com base no dicionário passado como argumento"""
    # Obs.: Esta função pode gerar algum erro e cair no 1º bloco try
    conteudo_json = json.dumps(dicio_produtos, indent=4, ensure_ascii=False)
    with open('1_5_arquivo_produto.json', mode='wt', encoding='utf-8') as arq:
        arq.write(conteudo_json)

if __name__ == '__main__':
    # Estrutura que será utilizada para gerar um arquivo ".json" (item "c")
    produtos = {}
    # Lambda que irá calcular o valor do icms de um produto (item "b")
    calcula_icms = lambda valor_produto: float(f'{(valor_produto * 0.18):.02f}')

    # Tratando exceções mais genéricas (item "d")
    try:
        # Orientando usuário
        print('Bem vindo à aplicação de cadastro de produtos. Cadastre PELO MENOS 5 produtos no sistema!')    
        # Loop (item "c") que permite o cadastro de NO MÍNIMO 5 produtos (item "d")
        while True:
            # Feedback visual do progresso do usuário
            print('\nProdutos cadastrados até o momento: {}/5'.format(len(produtos)))    
            resposta = input('Deseja cadastrar um novo produto: ')
            # Validando entrada especificações (itens "c" e "d")
            match resposta:
                case 'sim':
                    pass    # Não realiza nenhuma ação e ignora o restante do bloco "match"
                case 'não':
                    if (len(produtos) >= 5):
                        print('\nGerando arquivo ".json" com os produtos cadastrados...')
                        break    # Saindo do loop
                    else:
                        print('\nOps. A lista final de produtos possui somente {}/5 cadastrados!'.format(len(produtos)))
                        continue
                case _:
                    print('Entrada inválida')
                    continue 
            novo_produto = cadastra_produto()    # Gerando dicionário com informações de um produto (item "c")
            produtos[f'produto_{len(produtos)+1}'] = novo_produto    
            print('Cadastro de produto realizado com sucesso!')    
        # Varrendo a coleção final e gerando ".json" (item "e")
        cria_json(produtos)
    except:    # Encerrando elegantemente no caso de exceções genéricas não tratadas (item "d")
        print('\n====== Erro inesperado. Tente novamente depois. ======')
    else:
        print('\n===== Arquivo ".json" gerado com sucesso! =====')