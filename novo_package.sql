CREATE OR REPLACE PACKAGE HAUT.exemplo_package IS
                      -- Procedimento que imprime uma mensagem
                      PROCEDURE diga_ola(nome IN VARCHAR2);

                      -- Função que retorna uma saudação personalizada
                      FUNCTION saudacao(nome IN VARCHAR2) RETURN VARCHAR2;
                      END exemplo_package;
/
CREATE OR REPLACE PACKAGE BODY HAUT.exemplo_package IS
                      -- Implementação do procedimento que imprime uma mensagem
                      PROCEDURE diga_ola(nome IN VARCHAR2) IS
                      BEGIN
                      DBMS_OUTPUT.PUT_LINE(''Olá, '' || nome || ''!'');
                      END diga_ola;

                      -- Implementação da função que retorna uma saudação personalizada
                      FUNCTION saudacao(nome IN VARCHAR2) RETURN VARCHAR2 IS
                      BEGIN
                      RETURN ''Saudações, '' || nome || ''!'';
                      END saudacao;
                      END exemplo_package;
/
