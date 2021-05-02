cheetah :- mammal, 
           carnivore, 
           verify(has_tawny_color),
           verify(has_dark_spots).

tiger :- mammal,  
         carnivore,
         verify(has_tawny_color), 
         verify(has_black_stripes).
		 
echinada :- mammal,
			verify(lays_eggs),
			verify(spikes_on_back).

giraffe :- ungulate, 
           verify(has_long_neck), 
           verify(has_long_legs).

zebra :- ungulate,  
         verify(has_black_stripes).

ostrich :- bird,  
           verify(does_not_fly), 
           verify(has_long_neck).

penguin :- bird, 
           verify(does_not_fly), 
           verify(swims),
           verify(is_black_and_white).

albatross :- bird,
             verify(appears_in_story_Ancient_Mariner),
             verify(flys_well).
			 
turtle	:-	reptile,
			verify(has_bony_shell),
			verify(flipper_like_legs).

chameleon:-	reptile,
			verify(changes_color),
			verify(has_long_tounge).
			
catfish :-	fish,
			verify(has_whiskers),
			verify(has_no_scales).
			
seahorse:-	fish,
			verify(has_long_tail),
			verify(long_snout).
			
frog	:-	amphibian,
			verify(has_webbed_feet),
			verify(has_no_tail).
			
salamander :- amphibian,
			  verify(looks_like_lizard),
			  verify(round_mouth),
			  verify(slipery_body).



mammal	:-	verify(live_birth),!.
mammal  :-	verify(is_warm-blooded),
			verify(gives_milk).

bird      :- verify(lays_eggs),!.
bird      :- verify(flys), 
             verify(has_feathers).

carnivore :- verify(eats_meat),!.
carnivore :- verify(has_pointed_teeth), 
             verify(has_claws),
             verify(has_forward_eyes).

ungulate :- mammal, 
            verify(has_hooves),
			verify(chews_cud).

reptile :-	verify(is_coldblooded),
			verify(lays_eggs),
			verify(has_scales).
			
amphibian:- verify(is_cold-blooded),
			verify(has_a_skin_gland),
			verify(breaths_through_skin).

fish	:- 	verify(has_scales),!.			 
fish 	:-	verify(is_coldblooded),
			verify(lives_underwater),
			verify(has_fins).