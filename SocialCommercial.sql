��U S E   [ m a s t e r ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     D a t a b a s e   [ S W P 3 9 1 ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 C R E A T E   D A T A B A S E   [ S W P 3 9 1 ] 
 
   C O N T A I N M E N T   =   N O N E 
 
   O N     P R I M A R Y   
 
 (   N A M E   =   N ' S W P 3 9 1 ' ,   F I L E N A M E   =   N ' C : \ P r o g r a m   F i l e s \ M i c r o s o f t   S Q L   S e r v e r \ M S S Q L 1 6 . H A N I \ M S S Q L \ D A T A \ S W P 3 9 1 . m d f '   ,   S I Z E   =   8 1 9 2 K B   ,   M A X S I Z E   =   U N L I M I T E D ,   F I L E G R O W T H   =   6 5 5 3 6 K B   ) 
 
   L O G   O N   
 
 (   N A M E   =   N ' S W P 3 9 1 _ l o g ' ,   F I L E N A M E   =   N ' C : \ P r o g r a m   F i l e s \ M i c r o s o f t   S Q L   S e r v e r \ M S S Q L 1 6 . H A N I \ M S S Q L \ D A T A \ S W P 3 9 1 _ l o g . l d f '   ,   S I Z E   =   8 1 9 2 K B   ,   M A X S I Z E   =   2 0 4 8 G B   ,   F I L E G R O W T H   =   6 5 5 3 6 K B   ) 
 
   W I T H   C A T A L O G _ C O L L A T I O N   =   D A T A B A S E _ D E F A U L T ,   L E D G E R   =   O F F 
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   C O M P A T I B I L I T Y _ L E V E L   =   1 5 0 
 
 G O 
 
 I F   ( 1   =   F U L L T E X T S E R V I C E P R O P E R T Y ( ' I s F u l l T e x t I n s t a l l e d ' ) ) 
 
 b e g i n 
 
 E X E C   [ S W P 3 9 1 ] . [ d b o ] . [ s p _ f u l l t e x t _ d a t a b a s e ]   @ a c t i o n   =   ' e n a b l e ' 
 
 e n d 
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A N S I _ N U L L _ D E F A U L T   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A N S I _ N U L L S   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A N S I _ P A D D I N G   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A N S I _ W A R N I N G S   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A R I T H A B O R T   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A U T O _ C L O S E   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A U T O _ S H R I N K   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S   O N   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   C U R S O R _ C L O S E _ O N _ C O M M I T   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   C U R S O R _ D E F A U L T     G L O B A L   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   C O N C A T _ N U L L _ Y I E L D S _ N U L L   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   N U M E R I C _ R O U N D A B O R T   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   Q U O T E D _ I D E N T I F I E R   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   R E C U R S I V E _ T R I G G E R S   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T     D I S A B L E _ B R O K E R   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A U T O _ U P D A T E _ S T A T I S T I C S _ A S Y N C   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   D A T E _ C O R R E L A T I O N _ O P T I M I Z A T I O N   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   T R U S T W O R T H Y   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A L L O W _ S N A P S H O T _ I S O L A T I O N   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   P A R A M E T E R I Z A T I O N   S I M P L E   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   R E A D _ C O M M I T T E D _ S N A P S H O T   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   H O N O R _ B R O K E R _ P R I O R I T Y   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   R E C O V E R Y   F U L L   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T     M U L T I _ U S E R   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   P A G E _ V E R I F Y   C H E C K S U M     
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   D B _ C H A I N I N G   O F F   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   F I L E S T R E A M (   N O N _ T R A N S A C T E D _ A C C E S S   =   O F F   )   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   T A R G E T _ R E C O V E R Y _ T I M E   =   6 0   S E C O N D S   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   D E L A Y E D _ D U R A B I L I T Y   =   D I S A B L E D   
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   A C C E L E R A T E D _ D A T A B A S E _ R E C O V E R Y   =   O F F     
 
 G O 
 
 E X E C   s y s . s p _ d b _ v a r d e c i m a l _ s t o r a g e _ f o r m a t   N ' S W P 3 9 1 ' ,   N ' O N ' 
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T   Q U E R Y _ S T O R E   =   O F F 
 
 G O 
 
 U S E   [ S W P 3 9 1 ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ A p p U s e r ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ A p p U s e r ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ n a m e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ p a s s w o r d ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ e m a i l ]   [ n v a r c h a r ] ( 2 5 5 )   N U L L , 
 
 	 [ n u m b e r ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ r o l e _ i d ]   [ i n t ]   N U L L , 
 
 	 [ i m a g e ]   [ n v a r c h a r ] ( m a x )   N U L L , 
 
 	 [ f u l l N a m e ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L , 
 
 	 [ g e n d e r ]   [ n v a r c h a r ] ( 1 0 )   N U L L , 
 
 	 [ s t a t u s N o w ]   [ n v a r c h a r ] ( 5 0 )   N U L L , 
 
 	 [ s c h o o l ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L , 
 
 	 [ f a v o u r ]   [ n v a r c h a r ] ( 1 0 0 )   N U L L , 
 
 	 [ b i o ]   [ n v a r c h a r ] ( m a x )   N U L L , 
 
   C O N S T R A I N T   [ P K _ _ A p p U s e r _ _ 3 2 1 3 E 8 3 F F 4 4 5 C 7 0 7 ]   P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ C u s t o m e r O r d e r ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ C u s t o m e r O r d e r ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ c u s t o m e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ o r d e r _ s u b t o t a l ]   [ d e c i m a l ] ( 1 0 ,   2 )   N U L L , 
 
 	 [ o r d e r _ t o t a l ]   [ d e c i m a l ] ( 1 0 ,   2 )   N U L L , 
 
 	 [ o r d e r _ d a t e ]   [ d a t e ]   N U L L , 
 
 	 [ o r d e r _ c o u n t r y ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ o r d e r _ p r o v i n c e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ o r d e r _ d i s t r i c t ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ o r d e r _ t o w n ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ o r d e r _ l o c a t i o n ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ s t a t u s _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ O r d e r I t e m I n f o ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ O r d e r I t e m I n f o ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ o r d e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ p r o d u c t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ O r d e r S t a t u s ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ O r d e r S t a t u s ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ s t a t u s ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o d u c t C a t e g o r y ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ P r o d u c t C a t e g o r y ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ t y p e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ P r o d u c t I n f o ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ P r o d u c t I n f o ] ( 
 
 	 [ p r o d u c t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ s e l l e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ t y p e _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ p r o d u c t _ n a m e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ p r o d u c t _ i m a g e ]   [ n v a r c h a r ] ( 2 5 5 )   N U L L , 
 
 	 [ p r o d u c t _ a v a i l a b l e ]   [ i n t ]   N U L L , 
 
 	 [ p r o d u c t _ s a l e s ]   [ i n t ]   N U L L , 
 
 	 [ p r o d u c t _ p r i c e ]   [ d e c i m a l ] ( 1 0 ,   2 )   N U L L , 
 
 	 [ p r o d u c t _ v o u c h e r ]   [ d e c i m a l ] ( 1 0 ,   2 )   N U L L , 
 
 	 [ p r o d u c t _ d e s c r i p t i o n ]   [ n v a r c h a r ] ( m a x )   N U L L , 
 
   C O N S T R A I N T   [ P K _ _ P r o d u c t I _ _ 3 2 1 3 E 8 3 F 8 1 E A 1 8 3 2 ]   P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ p r o d u c t _ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ r e q u e s t S e t R o l e ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ r e q u e s t S e t R o l e ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ u s e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ e m a i l ]   [ n v a r c h a r ] ( 2 5 5 )   N U L L , 
 
 	 [ f u l l N a m e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ s h o p N a m e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ c o m m o d i t i e s S e c t o r ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ a d d r e s s ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ p h o n e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ s t a t u s ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
   C O N S T R A I N T   [ P K _ _ r e q u e s t S _ _ 3 2 1 3 E 8 3 F 7 1 8 D 8 C 4 8 ]   P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ S h o p C o m m e n t ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ S h o p C o m m e n t ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ p r o d u c t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ c o m m e n t o r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ c o m m e n t _ c o n t e n t ]   [ n v a r c h a r ] ( m a x )   N U L L , 
 
 	 [ c o m m e n t _ d a t e ]   [ d a t e t i m e ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ S h o p L i k e ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ S h o p L i k e ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ p r o d u c t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ l i k e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ S h o p p i n g C a r t ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ S h o p p i n g C a r t ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ u s e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ c a r t _ q u a n t i t y ]   [ i n t ]   N U L L , 
 
 	 [ c a r t _ t o t a l ]   [ d e c i m a l ] ( 1 0 ,   2 )   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ S h o p p i n g C a r t I t e m ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ S h o p p i n g C a r t I t e m ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ c a r t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ p r o d u c t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ i t e m _ q u a n t i t y ]   [ i n t ]   N U L L , 
 
 	 [ i t e m _ s u b t o t a l ]   [ d e c i m a l ] ( 1 0 ,   2 )   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ S o c i a l C o m m e n t ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ S o c i a l C o m m e n t ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ p o s t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ c o m m e n t o r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ c o m m e n t _ c o n t e n t ]   [ n v a r c h a r ] ( m a x )   N U L L , 
 
 	 [ c o m m e n t _ d a t e ]   [ d a t e t i m e ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ S o c i a l L i k e ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ S o c i a l L i k e ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ p o s t _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ l i k e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r F o l l o w ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ U s e r F o l l o w ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ f o l l o w e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ f o l l o w i n g _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r M e s s a g e ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ U s e r M e s s a g e ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ s e n d e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ r e c e i v e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ m e s s a g e _ d a t e ]   [ d a t e t i m e ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r N o t i f i c a t i o n ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ U s e r N o t i f i c a t i o n ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ u s e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ n o t i f i c a t i o n _ c o n t e n t ]   [ n v a r c h a r ] ( m a x )   N U L L , 
 
 	 [ n o t i f i c a t i o n _ d a t e ]   [ d a t e ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r P o s t ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ U s e r P o s t ] ( 
 
 	 [ i d ]   [ u n i q u e i d e n t i f i e r ]   N O T   N U L L , 
 
 	 [ u s e r _ i d ]   [ u n i q u e i d e n t i f i e r ]   N U L L , 
 
 	 [ p o s t _ t i t l e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
 	 [ p o s t _ c o n t e n t ]   [ n v a r c h a r ] ( m a x )   N U L L , 
 
 	 [ p o s t _ i m a g e ]   [ n v a r c h a r ] ( 2 5 5 )   N U L L , 
 
 	 [ p o s t _ d a t e ]   [ d a t e ]   N U L L , 
 
 P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ]   T E X T I M A G E _ O N   [ P R I M A R Y ] 
 
 G O 
 
 / * * * * * *   O b j e c t :     T a b l e   [ d b o ] . [ U s e r R o l e ]         S c r i p t   D a t e :   2 5 / 0 9 / 2 0 2 3   4 : 1 8 : 0 7   C H   * * * * * * / 
 
 S E T   A N S I _ N U L L S   O N 
 
 G O 
 
 S E T   Q U O T E D _ I D E N T I F I E R   O N 
 
 G O 
 
 C R E A T E   T A B L E   [ d b o ] . [ U s e r R o l e ] ( 
 
 	 [ i d ]   [ i n t ]   N O T   N U L L , 
 
 	 [ r o l e ]   [ n v a r c h a r ] ( 2 0 0 )   N U L L , 
 
   C O N S T R A I N T   [ P K _ U s e r R o l e ]   P R I M A R Y   K E Y   C L U S T E R E D   
 
 ( 
 
 	 [ i d ]   A S C 
 
 ) W I T H   ( P A D _ I N D E X   =   O F F ,   S T A T I S T I C S _ N O R E C O M P U T E   =   O F F ,   I G N O R E _ D U P _ K E Y   =   O F F ,   A L L O W _ R O W _ L O C K S   =   O N ,   A L L O W _ P A G E _ L O C K S   =   O N ,   O P T I M I Z E _ F O R _ S E Q U E N T I A L _ K E Y   =   O F F )   O N   [ P R I M A R Y ] 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 I N S E R T   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ,   [ n a m e ] ,   [ p a s s w o r d ] ,   [ e m a i l ] ,   [ n u m b e r ] ,   [ r o l e _ i d ] ,   [ i m a g e ] ,   [ f u l l N a m e ] ,   [ g e n d e r ] ,   [ s t a t u s N o w ] ,   [ s c h o o l ] ,   [ f a v o u r ] ,   [ b i o ] )   V A L U E S   ( N ' 5 9 b 5 8 9 6 f - 9 8 b 2 - 4 6 9 9 - 8 2 e c - 1 b 8 b 9 9 c e b c b 2 ' ,   N ' a d m i n ' ,   N ' a d m i n ' ,   N U L L ,   N U L L ,   1 ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ) 
 
 I N S E R T   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ,   [ n a m e ] ,   [ p a s s w o r d ] ,   [ e m a i l ] ,   [ n u m b e r ] ,   [ r o l e _ i d ] ,   [ i m a g e ] ,   [ f u l l N a m e ] ,   [ g e n d e r ] ,   [ s t a t u s N o w ] ,   [ s c h o o l ] ,   [ f a v o u r ] ,   [ b i o ] )   V A L U E S   ( N ' 4 1 e a b 6 2 f - a 9 5 4 - 4 a a b - b 7 c 4 - 6 f 1 1 d 3 0 1 d 2 d 0 ' ,   N ' C a p ' ,   N ' c a p ' ,   N ' a s d f @ g m a i l . c o m ' ,   N ' 0 2 3 4 5 6 ' ,   2 ,   N ' C : \ U s e r s \ A d m i n \ D o c u m e n t s \ N e t B e a n s P r o j e c t s \ S o c i a l C o m m e r c i a l \ b u i l d \ w e b \ S a v e d I m a g e s / S c r e e n s h o t   2 0 2 3 - 0 8 - 1 1   0 0 2 0 5 7 . p n g ' ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ) 
 
 I N S E R T   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ,   [ n a m e ] ,   [ p a s s w o r d ] ,   [ e m a i l ] ,   [ n u m b e r ] ,   [ r o l e _ i d ] ,   [ i m a g e ] ,   [ f u l l N a m e ] ,   [ g e n d e r ] ,   [ s t a t u s N o w ] ,   [ s c h o o l ] ,   [ f a v o u r ] ,   [ b i o ] )   V A L U E S   ( N ' 3 3 9 3 c 2 b b - 1 6 3 0 - 4 1 8 4 - a d 6 7 - 9 a 7 8 9 c f 7 7 0 d e ' ,   N ' a s d ' ,   N ' v i n h ' ,   N ' a s d f @ g m a i l . c o m ' ,   N ' 1 2 3 3 4 5 3 2 ' ,   2 ,   N ' C : \ U s e r s \ A d m i n \ D o c u m e n t s \ N e t B e a n s P r o j e c t s \ S o c i a l C o m m e r c i a l \ b u i l d \ w e b \ S a v e d I m a g e s / S c r e e n s h o t   2 0 2 3 - 0 8 - 0 9   0 2 4 7 2 4 . p n g ' ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ) 
 
 I N S E R T   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ,   [ n a m e ] ,   [ p a s s w o r d ] ,   [ e m a i l ] ,   [ n u m b e r ] ,   [ r o l e _ i d ] ,   [ i m a g e ] ,   [ f u l l N a m e ] ,   [ g e n d e r ] ,   [ s t a t u s N o w ] ,   [ s c h o o l ] ,   [ f a v o u r ] ,   [ b i o ] )   V A L U E S   ( N ' 3 8 9 7 a 0 a 3 - 0 8 2 2 - 4 4 6 4 - b 3 e 2 - a d 2 7 2 e 4 2 e 7 e a ' ,   N ' B i g B o s s ' ,   N ' v i n h ' ,   N ' g o g o g o g o 1 3 0 3 @ g m a i l . c o m ' ,   N ' 1 2 3 3 4 5 3 2 ' ,   2 ,   N ' C : \ U s e r s \ A d m i n \ D o c u m e n t s \ N e t B e a n s P r o j e c t s \ S o c i a l C o m m e r c i a l \ b u i l d \ w e b \ S a v e d I m a g e s / S c r e e n s h o t   2 0 2 3 - 0 8 - 0 1   1 8 2 1 4 0 . p n g ' ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ) 
 
 I N S E R T   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ,   [ n a m e ] ,   [ p a s s w o r d ] ,   [ e m a i l ] ,   [ n u m b e r ] ,   [ r o l e _ i d ] ,   [ i m a g e ] ,   [ f u l l N a m e ] ,   [ g e n d e r ] ,   [ s t a t u s N o w ] ,   [ s c h o o l ] ,   [ f a v o u r ] ,   [ b i o ] )   V A L U E S   ( N ' 9 c 2 c 5 a 4 4 - 2 f 5 7 - 4 f 1 d - 8 a 4 c - b f 4 e c 0 6 1 5 1 1 3 ' ,   N ' � � d a s d ' ,   N ' 1 2 3 4 5 6 ' ,   N ' g o g o g o g o 1 3 0 3 @ g m a i l . c o m ' ,   N ' a � � d a s d ' ,   2 ,   N ' C : \ U s e r s \ A d m i n \ D o c u m e n t s \ N e t B e a n s P r o j e c t s \ S o c i a l C o m m e r c i a l \ b u i l d \ w e b \ S a v e d I m a g e s / S c r e e n s h o t   2 0 2 3 - 0 8 - 1 1   0 0 0 9 0 6 . p n g ' ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ) 
 
 I N S E R T   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ,   [ n a m e ] ,   [ p a s s w o r d ] ,   [ e m a i l ] ,   [ n u m b e r ] ,   [ r o l e _ i d ] ,   [ i m a g e ] ,   [ f u l l N a m e ] ,   [ g e n d e r ] ,   [ s t a t u s N o w ] ,   [ s c h o o l ] ,   [ f a v o u r ] ,   [ b i o ] )   V A L U E S   ( N ' 1 c a f 9 a d 4 - a f e a - 4 e e 9 - b f c 1 - e 0 a f c 5 5 6 3 7 0 f ' ,   N ' G a u ' ,   N ' p a s s w o r d 1 2 3 ' ,   N ' a @ g m a i l . c o m ' ,   N ' 1 2 3 4 5 6 ' ,   2 ,   N ' C : \ U s e r s \ A d m i n \ D o c u m e n t s \ N e t B e a n s P r o j e c t s \ S o c i a l C o m m e r c i a l \ b u i l d \ w e b \ S a v e d I m a g e s / S c r e e n s h o t   2 0 2 3 - 0 8 - 1 1   0 0 0 9 0 6 . p n g ' ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ,   N U L L ) 
 
 G O 
 
 I N S E R T   [ d b o ] . [ P r o d u c t C a t e g o r y ]   ( [ i d ] ,   [ t y p e ] )   V A L U E S   ( N ' 4 e e b 1 9 c 1 - 7 5 e 4 - 4 2 5 3 - b 0 8 7 - 6 b 9 6 7 d 6 3 c 3 a 5 ' ,   N ' S h o e s ' ) 
 
 I N S E R T   [ d b o ] . [ P r o d u c t C a t e g o r y ]   ( [ i d ] ,   [ t y p e ] )   V A L U E S   ( N ' 9 8 a 4 8 3 8 e - f 2 d b - 4 b 7 a - 9 4 c a - c 9 e c d 1 8 7 f 7 3 9 ' ,   N ' K e y b o a r d ' ) 
 
 I N S E R T   [ d b o ] . [ P r o d u c t C a t e g o r y ]   ( [ i d ] ,   [ t y p e ] )   V A L U E S   ( N ' 3 2 8 9 b 8 b e - 8 0 b 3 - 4 2 f d - 8 c 5 d - c b c c 4 5 1 7 2 7 b 5 ' ,   N ' P h a r m a ' ) 
 
 I N S E R T   [ d b o ] . [ P r o d u c t C a t e g o r y ]   ( [ i d ] ,   [ t y p e ] )   V A L U E S   ( N ' b 9 5 6 0 4 a 6 - 0 3 a 1 - 4 5 d 9 - 9 d 3 e - c f 1 6 5 4 e 3 5 1 b 0 ' ,   N ' M o u s e ' ) 
 
 G O 
 
 I N S E R T   [ d b o ] . [ U s e r P o s t ]   ( [ i d ] ,   [ u s e r _ i d ] ,   [ p o s t _ t i t l e ] ,   [ p o s t _ c o n t e n t ] ,   [ p o s t _ i m a g e ] ,   [ p o s t _ d a t e ] )   V A L U E S   ( N ' 4 6 5 b 2 b 7 1 - 3 b f b - 4 d 2 a - 9 f 8 8 - e 8 9 f 1 0 e e 4 7 c 1 ' ,   N ' 3 3 9 3 c 2 b b - 1 6 3 0 - 4 1 8 4 - a d 6 7 - 9 a 7 8 9 c f 7 7 0 d e ' ,   N ' c v z x c v x z c v z x c v ' ,   N ' x c z x z x v ' ,   N ' C : \ U s e r s \ A d m i n \ D o c u m e n t s \ N e t B e a n s P r o j e c t s \ S o c i a l C o m m e r c i a l \ b u i l d \ w e b \ S a v e d I m a g e s / S c r e e n s h o t   2 0 2 3 - 0 8 - 0 1   1 8 2 1 4 0 . p n g ' ,   C A S T ( N ' 2 0 2 3 - 0 9 - 2 1 '   A S   D a t e ) ) 
 
 G O 
 
 I N S E R T   [ d b o ] . [ U s e r R o l e ]   ( [ i d ] ,   [ r o l e ] )   V A L U E S   ( 1 ,   N ' a d m i n ' ) 
 
 I N S E R T   [ d b o ] . [ U s e r R o l e ]   ( [ i d ] ,   [ r o l e ] )   V A L U E S   ( 2 ,   N ' U s e r   ' ) 
 
 I N S E R T   [ d b o ] . [ U s e r R o l e ]   ( [ i d ] ,   [ r o l e ] )   V A L U E S   ( 3 ,   N ' S e l l e r   ' ) 
 
 I N S E R T   [ d b o ] . [ U s e r R o l e ]   ( [ i d ] ,   [ r o l e ] )   V A L U E S   ( 4 ,   N ' S h i p p e r   ' ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ A p p U s e r ]   A D D     C O N S T R A I N T   [ D F _ _ A p p U s e r _ _ i d _ _ 2 7 6 E D E B 3 ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ C u s t o m e r O r d e r ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ O r d e r I t e m I n f o ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ O r d e r S t a t u s ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t C a t e g o r y ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t I n f o ]   A D D     C O N S T R A I N T   [ D F _ _ P r o d u c t I n f o _ _ i d _ _ 5 C D 6 C B 2 B ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ p r o d u c t _ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ r e q u e s t S e t R o l e ]   A D D     C O N S T R A I N T   [ D F _ _ r e q u e s t S e t R o _ _ i d _ _ 5 D C A E F 6 4 ]     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p C o m m e n t ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p C o m m e n t ]   A D D     D E F A U L T   ( g e t d a t e ( ) )   F O R   [ c o m m e n t _ d a t e ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p L i k e ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p p i n g C a r t ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p p i n g C a r t I t e m ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l C o m m e n t ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l C o m m e n t ]   A D D     D E F A U L T   ( g e t d a t e ( ) )   F O R   [ c o m m e n t _ d a t e ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l L i k e ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r F o l l o w ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r M e s s a g e ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r M e s s a g e ]   A D D     D E F A U L T   ( g e t d a t e ( ) )   F O R   [ m e s s a g e _ d a t e ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r N o t i f i c a t i o n ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r N o t i f i c a t i o n ]   A D D     D E F A U L T   ( g e t d a t e ( ) )   F O R   [ n o t i f i c a t i o n _ d a t e ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r P o s t ]   A D D     D E F A U L T   ( n e w i d ( ) )   F O R   [ i d ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ A p p U s e r ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ A p p U s e r _ U s e r R o l e ]   F O R E I G N   K E Y ( [ r o l e _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ U s e r R o l e ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ A p p U s e r ]   C H E C K   C O N S T R A I N T   [ F K _ A p p U s e r _ U s e r R o l e ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ C u s t o m e r O r d e r ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ C u s t o m e r O _ _ c u s t o _ _ 3 E 5 2 4 4 0 B ]   F O R E I G N   K E Y ( [ c u s t o m e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ C u s t o m e r O r d e r ]   C H E C K   C O N S T R A I N T   [ F K _ _ C u s t o m e r O _ _ c u s t o _ _ 3 E 5 2 4 4 0 B ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ C u s t o m e r O r d e r ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ C u s t o m e r O r d e r _ O r d e r S t a t u s ]   F O R E I G N   K E Y ( [ s t a t u s _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ O r d e r S t a t u s ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ C u s t o m e r O r d e r ]   C H E C K   C O N S T R A I N T   [ F K _ C u s t o m e r O r d e r _ O r d e r S t a t u s ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ O r d e r I t e m I n f o ]     W I T H   C H E C K   A D D   F O R E I G N   K E Y ( [ o r d e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ C u s t o m e r O r d e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ O r d e r I t e m I n f o ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ O r d e r I t e m _ _ p r o d u _ _ 6 F E 9 9 F 9 F ]   F O R E I G N   K E Y ( [ p r o d u c t _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t I n f o ]   ( [ p r o d u c t _ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ O r d e r I t e m I n f o ]   C H E C K   C O N S T R A I N T   [ F K _ _ O r d e r I t e m _ _ p r o d u _ _ 6 F E 9 9 F 9 F ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t I n f o ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ P r o d u c t I n _ _ s e l l e _ _ 2 F 1 0 0 0 7 B ]   F O R E I G N   K E Y ( [ s e l l e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t I n f o ]   C H E C K   C O N S T R A I N T   [ F K _ _ P r o d u c t I n _ _ s e l l e _ _ 2 F 1 0 0 0 7 B ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t I n f o ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ P r o d u c t I n _ _ t y p e _ _ _ 7 1 D 1 E 8 1 1 ]   F O R E I G N   K E Y ( [ t y p e _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t C a t e g o r y ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ P r o d u c t I n f o ]   C H E C K   C O N S T R A I N T   [ F K _ _ P r o d u c t I n _ _ t y p e _ _ _ 7 1 D 1 E 8 1 1 ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ r e q u e s t S e t R o l e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ r e q u e s t S e _ _ u s e r _ _ _ 6 F E 9 9 F 9 F ]   F O R E I G N   K E Y ( [ u s e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ r e q u e s t S e t R o l e ]   C H E C K   C O N S T R A I N T   [ F K _ _ r e q u e s t S e _ _ u s e r _ _ _ 6 F E 9 9 F 9 F ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p C o m m e n t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ S h o p C o m m e _ _ c o m m e _ _ 5 8 1 2 1 6 0 E ]   F O R E I G N   K E Y ( [ c o m m e n t o r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p C o m m e n t ]   C H E C K   C O N S T R A I N T   [ F K _ _ S h o p C o m m e _ _ c o m m e _ _ 5 8 1 2 1 6 0 E ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p C o m m e n t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ S h o p C o m m e _ _ p r o d u _ _ 7 4 A E 5 4 B C ]   F O R E I G N   K E Y ( [ p r o d u c t _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t I n f o ]   ( [ p r o d u c t _ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p C o m m e n t ]   C H E C K   C O N S T R A I N T   [ F K _ _ S h o p C o m m e _ _ p r o d u _ _ 7 4 A E 5 4 B C ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p L i k e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ S h o p L i k e _ _ l i k e r _ _ _ 5 C D 6 C B 2 B ]   F O R E I G N   K E Y ( [ l i k e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p L i k e ]   C H E C K   C O N S T R A I N T   [ F K _ _ S h o p L i k e _ _ l i k e r _ _ _ 5 C D 6 C B 2 B ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p L i k e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ S h o p L i k e _ _ p r o d u c _ _ 7 6 9 6 9 D 2 E ]   F O R E I G N   K E Y ( [ p r o d u c t _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t I n f o ]   ( [ p r o d u c t _ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p L i k e ]   C H E C K   C O N S T R A I N T   [ F K _ _ S h o p L i k e _ _ p r o d u c _ _ 7 6 9 6 9 D 2 E ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p p i n g C a r t I t e m ]     W I T H   C H E C K   A D D   F O R E I G N   K E Y ( [ c a r t _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ S h o p p i n g C a r t ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p p i n g C a r t I t e m ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ S h o p p i n g C _ _ p r o d u _ _ 7 8 7 E E 5 A 0 ]   F O R E I G N   K E Y ( [ p r o d u c t _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ P r o d u c t I n f o ]   ( [ p r o d u c t _ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S h o p p i n g C a r t I t e m ]   C H E C K   C O N S T R A I N T   [ F K _ _ S h o p p i n g C _ _ p r o d u _ _ 7 8 7 E E 5 A 0 ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l C o m m e n t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ S o c i a l C o m _ _ c o m m e _ _ 4 D 9 4 8 7 9 B ]   F O R E I G N   K E Y ( [ c o m m e n t o r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l C o m m e n t ]   C H E C K   C O N S T R A I N T   [ F K _ _ S o c i a l C o m _ _ c o m m e _ _ 4 D 9 4 8 7 9 B ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l C o m m e n t ]     W I T H   C H E C K   A D D   F O R E I G N   K E Y ( [ p o s t _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ U s e r P o s t ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l L i k e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ S o c i a l L i k _ _ l i k e r _ _ 5 2 5 9 3 C B 8 ]   F O R E I G N   K E Y ( [ l i k e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l L i k e ]   C H E C K   C O N S T R A I N T   [ F K _ _ S o c i a l L i k _ _ l i k e r _ _ 5 2 5 9 3 C B 8 ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ S o c i a l L i k e ]     W I T H   C H E C K   A D D   F O R E I G N   K E Y ( [ p o s t _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ U s e r P o s t ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r F o l l o w ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ U s e r F o l l o _ _ f o l l o _ _ 6 0 A 7 5 C 0 F ]   F O R E I G N   K E Y ( [ f o l l o w e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r F o l l o w ]   C H E C K   C O N S T R A I N T   [ F K _ _ U s e r F o l l o _ _ f o l l o _ _ 6 0 A 7 5 C 0 F ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r F o l l o w ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ U s e r F o l l o _ _ f o l l o _ _ 6 1 9 B 8 0 4 8 ]   F O R E I G N   K E Y ( [ f o l l o w i n g _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r F o l l o w ]   C H E C K   C O N S T R A I N T   [ F K _ _ U s e r F o l l o _ _ f o l l o _ _ 6 1 9 B 8 0 4 8 ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r M e s s a g e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ U s e r M e s s a _ _ r e c e i _ _ 6 C 1 9 0 E B B ]   F O R E I G N   K E Y ( [ r e c e i v e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r M e s s a g e ]   C H E C K   C O N S T R A I N T   [ F K _ _ U s e r M e s s a _ _ r e c e i _ _ 6 C 1 9 0 E B B ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r M e s s a g e ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ U s e r M e s s a _ _ s e n d e _ _ 6 B 2 4 E A 8 2 ]   F O R E I G N   K E Y ( [ s e n d e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r M e s s a g e ]   C H E C K   C O N S T R A I N T   [ F K _ _ U s e r M e s s a _ _ s e n d e _ _ 6 B 2 4 E A 8 2 ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r N o t i f i c a t i o n ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ U s e r N o t i f _ _ u s e r _ _ _ 6 6 6 0 3 5 6 5 ]   F O R E I G N   K E Y ( [ u s e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r N o t i f i c a t i o n ]   C H E C K   C O N S T R A I N T   [ F K _ _ U s e r N o t i f _ _ u s e r _ _ _ 6 6 6 0 3 5 6 5 ] 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r P o s t ]     W I T H   C H E C K   A D D     C O N S T R A I N T   [ F K _ _ U s e r P o s t _ _ u s e r _ i _ _ 4 7 D B A E 4 5 ]   F O R E I G N   K E Y ( [ u s e r _ i d ] ) 
 
 R E F E R E N C E S   [ d b o ] . [ A p p U s e r ]   ( [ i d ] ) 
 
 G O 
 
 A L T E R   T A B L E   [ d b o ] . [ U s e r P o s t ]   C H E C K   C O N S T R A I N T   [ F K _ _ U s e r P o s t _ _ u s e r _ i _ _ 4 7 D B A E 4 5 ] 
 
 G O 
 
 U S E   [ m a s t e r ] 
 
 G O 
 
 A L T E R   D A T A B A S E   [ S W P 3 9 1 ]   S E T     R E A D _ W R I T E   
 
 G O 
 
 
