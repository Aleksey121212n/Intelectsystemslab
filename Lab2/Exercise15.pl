%15. Найти сумму элементов списка, стоящих на нечетных местах в списке.


sum_odd([], 0). % Случай когда сумма элементов пустого списка равна 0
sum_odd([X], X). % Случай с единственным элементом - Sum = 1
sum_odd([X, _ | T], Sum) :-
    sum_odd(T, Rest), Sum is X + Rest.
% Рекурсия: складывается первый элемент, пропускается второй и обрабатываются оставшиеся элементы

% Пример:
% sum_odd([1, 2, 3, 4, 5], Sum).
% Sum = 9
