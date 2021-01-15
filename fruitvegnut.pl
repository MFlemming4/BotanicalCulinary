% just for testing here are the names of some plant-based foods
food(apple).
food(walnut).
food(carrot).
food(cucumber).

has_seeds(apple).
has_seeds(cucumber).
has_seeds(walnut).

comes_from(apple, flower).
comes_from(walnut, flower).
comes_from(cucumber, flower).
comes_from(carrot, root).

has_shell(walnut).

is_sweet(apple).

is_savory(walnut).
is_savory(carrot).
is_savory(cucumber).

% botanical fruits come from flowers and they have seeds
botanical_fruit(X) :- comes_from(X, flower), has_seeds(X).

% botanical vegetables technically do not exist. they are not botanical fruits
% they are the parts of plants that do not come from flowers
botanical_vegetable(X) :- not comes_from(X, flower).

% botanical nuts are just more specific kind of botanical fruit because they come from 
% flowers and they have shells. 
botanical_nut(X):- botanical_fruit(X), has_shell(X).


% culinary fruits are just edible plants that taste sweet and are not nuts
culinary_fruit(X) :- is_sweet(X), not has_shell(X).

culinary_vegetable(X) :- is_savory(X), not is_sweet(X), not culinary_fruit(X), not has_shell(X).

culinary_nut(X) :- has_shell(X).
