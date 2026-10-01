"""
Exemplo de código Python para demonstração
Autor: Seu Nome
Data: 2024
"""

def calcular_media(valores):
    """
    Calcula a média aritmética de uma lista de valores
    
    Args:
        valores (list): Lista de números
        
    Returns:
        float: Média dos valores
    """
    if not valores:
        return 0
    return sum(valores) / len(valores)


def processar_dados(dados):
    """
    Processa um conjunto de dados
    
    Args:
        dados (dict): Dicionário com dados a processar
        
    Returns:
        dict: Dados processados
    """
    resultado = {}
    
    for chave, valor in dados.items():
        if isinstance(valor, list):
            resultado[chave] = calcular_media(valor)
        else:
            resultado[chave] = valor
    
    return resultado


# Exemplo de uso
if __name__ == "__main__":
    dados_exemplo = {
        'temperaturas': [23.5, 24.1, 22.8, 25.3],
        'umidade': [65, 68, 70, 67],
        'local': 'Laboratório A'
    }
    
    resultado = processar_dados(dados_exemplo)
    
    print("Resultados do processamento:")
    for chave, valor in resultado.items():
        print(f"{chave}: {valor}")