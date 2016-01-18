
sentenca(sent(Frase_nom,Frase_verb))-->frase_nom(Frase_nom),frase_verb(Frase_verb).      %SINGULAR
sentenca(sent(Frase_nom,Frase_verb))-->frase_nom_p(Frase_nom),frase_verb_p(Frase_verb).  %PLURAL


%FRASE NOMINAL
frase_nom(Sub)-->subst_m(Sub).                                                %MASCULINO (caso base - singular)                   
frase_nom_p(Sub)-->subst_p_m(Sub).                                            %MASCULINO (caso base - plural)         
frase_nom(frase_nom(Sub))-->subst_f(Sub).                                     %FEMININO  (caso base - singular)                 
frase_nom_p(frase_nom(Sub))-->subst_p_f(Sub).                                 %FEMININO  (caso base - plural) 
frase_nom(frase_nom(Artigo,Sub))-->artigo_m(Artigo), subst_m(Sub).                %MASCULINO - singular
frase_nom(frase_nom(Artigo,Sub))-->artigo_f(Artigo), subst_f(Sub).                %FEMININO - singular
frase_nom_p(frase_nom(Artigo,Sub))-->artigo_p_m(Artigo), subst_p_m(Sub).          %MASCULINO - plural
frase_nom_p(frase_nom(Artigo,Sub))-->artigo_p_f(Artigo), subst_p_f(Sub).          %FEMININO - plural


%FRASE VERBAL
frase_verb(frase_verb(Verb))-->verbo(Verb).                                                               %CASO BASE (singular)
frase_verb_p(frase_verb(Verb))-->verbo_p(Verb).                                                           %CASO BASE (plural)

frase_verb(frase_verb(Verb,Prep,Sub))-->verbo(Verb), prep(Prep), subst_m(Sub).                            %MASCULINO SINGULAR
frase_verb(frase_verb(Verb,Art,Sub))-->verbo(Verb), artigo_m(Art), subst_m(Sub).                          %MASCULINO SINGULAR
frase_verb(frase_verb(Verb,Art,Sub))-->verbo(Verb), artigo_p_m(Art), subst_p_m(Sub).                      %MASCULINO SINGULAR
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verbo(Verb), prep(Prep), artigo_m(Art), subst_m(Sub).         %MASCULINO SINGULAR
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verbo(Verb), prep(Prep), artigo_p_m(Art), subst_p_m(Sub).     %MASCULINO SINGULAR

frase_verb(frase_verb(Verb,Prep,Sub))-->verbo(Verb), prep(Prep), subst_f(Sub).                            %FEMININO SINGULAR
frase_verb(frase_verb(Verb,Art,Sub))-->verbo(Verb), artigo_f(Art), subst_f(Sub).                          %FEMININO SINGULAR
frase_verb(frase_verb(Verb,Art,Sub))-->verbo(Verb), artigo_p_f(Art), subst_p_f(Sub).                      %FEMININO SINGULAR
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verbo(Verb), prep(Prep), artigo_f(Art), subst_f(Sub).         %FEMININO SINGULAR
frase_verb(frase_verb(Verb,Prep,Art,Sub))-->verbo(Verb), prep(Prep), artigo_p_f(Art), subst_p_f(Sub).     %FEMININO SINGULAR

frase_verb_p(frase_verb(Verb,Prep,Sub))-->verbo_p(Verb), prep(Prep), subst_p_m(Sub).                      %MASCULINO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Sub))-->verbo_p(Verb), prep(Prep), subst_m(Sub).                        %MASCULINO PLURAL
frase_verb_p(frase_verb(Verb,Art,Sub))-->verbo_p(Verb), artigo_p_m(Art), subst_p_m(Sub).                  %MASCULINO PLURAL
frase_verb_p(frase_verb(Verb,Art,Sub))-->verbo_p(Verb), artigo_m(Art), subst_m(Sub).                      %MASCULINO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verbo_p(Verb), prep(Prep), artigo_p_m(Art), subst_p_m(Sub). %MASCULINO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verbo_p(Verb), prep(Prep), artigo_m(Art), subst_m(Sub).     %MASCULINO PLURAL

frase_verb_p(frase_verb(Verb,Prep,Sub))-->verbo_p(Verb), prep(Prep), subst_p_f(Sub).                      %FEMININO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Sub))-->verbo_p(Verb), prep(Prep), subst_f(Sub).                        %FEMININO PLURAL
frase_verb_p(frase_verb(Verb,Art,Sub))-->verbo_p(Verb), artigo_p_f(Art), subst_p_f(Sub).                  %FEMININO PLURAL
frase_verb_p(frase_verb(Verb,Art,Sub))-->verbo_p(Verb), artigo_f(Art), subst_f(Sub).                      %FEMININO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verbo_p(Verb), prep(Prep), artigo_p_f(Art), subst_p_f(Sub). %FEMININO PLURAL
frase_verb_p(frase_verb(Verb,Prep,Art,Sub))-->verbo_p(Verb), prep(Prep), artigo_f(Art), subst_f(Sub).     %FEMININO PLURAL


%BASE DE DADOS..............................................................................................................................

%ARTIGOS 
artigo_m(artigo('O'))-->['O'].      
artigo_m(artigo(o))-->[o].          
artigo_p_m(artigo('Os'))-->['Os'].  
artigo_p_m(artigo(os))-->[os].      
artigo_f(artigo('A'))-->['A'].      
artigo_f(artigo(a))-->[a].          
artigo_p_f(artigo('As'))-->['As'].  
artigo_p_f(artigo(as))-->[as].      
    

%SUBSTANTIVOS  
subst_f(substantivo(menina))-->[menina].        
subst_f(substantivo(floresta))-->[floresta].    
subst_f(substantivo(mae))-->[mae].              
subst_f(substantivo(vida))-->[vida].            
subst_f(substantivo(noticia))-->[noticia].      
subst_f(substantivo(porta))-->[porta].          
subst_f(substantivo(cidade))-->[cidade].        
subst_p_f(substantivo(lagrimas))-->[lagrimas].  
subst_p_f(substantivo(meninas))-->[meninas].    
subst_m(substantivo(tempo))-->[tempo].          
subst_m(substantivo(cacador))-->[cacador].      
subst_m(substantivo(rosto))-->[rosto].          
subst_m(substantivo(rio))-->[rio].              
subst_m(substantivo(mar))-->[mar].              
subst_m(substantivo(vento))-->[vento].          
subst_m(substantivo(martelo))-->[martelo].      
subst_m(substantivo(cachorro))-->[cachorro].    
subst_m(substantivo(tambor))-->[tambor].        
subst_m(substantivo(sino))-->[sino].            
subst_p_m(substantivo(lobos))-->[lobos].        
subst_p_m(substantivo(tambores)) -->[tambores]. 

%VERBOS
verbo(verbo(corre))-->[corre].          
verbo(verbo(correu))-->[correu].        
verbo(verbo(bateu))-->[bateu].          
verbo_p(verbo(bateram))-->[bateram].    
verbo_p(verbo(correram))-->[correram].  
verbo_p(verbo(corriam))-->[corriam].    

%PREPOSICOES
prep(preposicao(para))-->[para].
prep(preposicao(com))-->[com].
prep(preposicao(pelo))-->[pelo].
prep(preposicao(pela))-->[pela].
prep(preposicao(no))-->[no].
prep(preposicao(na))-->[na].

