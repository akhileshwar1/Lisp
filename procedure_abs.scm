what do you want?
I want an algorithm that takes assembly as an input and produces two teams out of them based on the weight and position.

for example: there are 2 players in a team , point is to have a team weight cap and a player weight cap. since we are talking abput 2 playher teams, i think that 5 should be cap for each player and 10 for the team. the relation is team_cap=2*player_cap. initialize the player cap to your fancy(5). now for example, I get ['akhil',4] ['anuj',3]['bitoo',4]['madhav',3], I need to distribute them in such a way that it is fair, fair here means that combination where the difference is the minimum, preferably 0. So it will have to try different combinations and check.

step wise:

1.get assembly.
2.get all exclusive  combinations of 2.(represented by a pair of sequences and returns a sequence of pairs and need for a selector function).
3.get total weights of them.(function for total  weight of a sequence).
4.check the minimum of them.(function for a minimum of a pair of sequences.)
5.out put the combinations pertaining to the minimum.
																																									   
