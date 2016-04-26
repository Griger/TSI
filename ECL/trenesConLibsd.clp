:-lib(sd).

%cuando decidimos usar una libería hemos de tener en cuenta que para definir
%restricciones hay que seguir una cierta sintaxis específica para dicha librería

csp(Lista):-
  Lista = [T1,T2,T3,T4],
  Lista &:: [l1,l2,l3], %def. de dominios, el mismo dominio para todas las vars. (no podemos usar valores enteros por usar sd)

  %pasamos ahora a definir restricciones, pero claro como los dominios los hemos definido
  %con los operadores de la sd pues hemos de usar los operadores de esa libería

  T1 &\= T2, T2 &\= T3, T2 &\= T4, T3 &\= T4,
  T3 &\= l3,
  T4 &\= l3, T4 &\=l2,

  %búsqueda

  indomain(T1),
  indomain(T2),
  indomain(T3),
  indomain(T4).
