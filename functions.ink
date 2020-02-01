=== tunnel_as_thread(-> tunnel, -> ret )
- (top) 
	~ temp preTurnCount = TURNS_SINCE(-> begin)
   -> tunnel -> 
   {preTurnCount == TURNS_SINCE(-> begin): -> DONE }  -> ret