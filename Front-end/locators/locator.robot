***Variables***

 #home
${txtTitle}                      xpath=/html/head/title
${txtBuscaEnde}                  id=fake-address-search-input
${txtPreencheEnde}               xpath=//input[@id="address-search-input-address"]
${EndeNaoEncontrado}             xpath=//*[@id="address-not-found"]/p[1]
${listaEnde}                     xpath=//li[@itemid="google-address"]
${txtNumeroEnde}                 id=address-details-input-number
${checkNtemComplemento}          id=address-details-checkbox-without-complement
${btnVerProdutosDisponiveis}     id=address-details-button-continue
#area logada 
${nomeUserLogado}               xpath=//*[@id="aside"]/div/div[1]/div[3]
${contaUsuario}                 xpath=//*[@id="header-user-badge"]/figure/img
#login / cadastro usuario 
${btnEntrar}                     id=welcome-button-sign-in
${btnNovoCadastro}               id=create-account-link
${formNome}                      id=signup-form-input-name
${formEmail}                     id=signup-form-input-email
${formSenha}                     id=signup-form-input-password
${formCPF}                       id=signup-form-input-document
${formCelular}                   id=signup-form-input-phone
${formData}                      id=signup-form-input-age
${okPoliticaPrivacidade}         id=sign-up-form-input-terms
${btnRegistro}                   id=signup-form-button-signup
${btnValidarDepois}              id=confirm-phone-link-validate-later
#pós pesquisa de endereço
${btnIdadeSIM}                   id=age-gate-button-yes

#produtos
${txtPesquisaProduto}           id=search-product-input
${produtoSelecionado}           id=search-product-list-item-product-12884
${selecionaQtd}                 id=add-amount-15
${btnAdiciona15Sacola}          id=product-amount

#sacola
${removeUmaUnidade}             id=product-minus-button
${qtdFinalProdutos}             id=total-qty-products 