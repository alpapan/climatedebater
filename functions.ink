=== tunnel_as_thread(-> tunnel, -> ret )
- (top) 
	~ temp preTurnCount = TURNS_SINCE(-> exploration)
   -> tunnel -> 
   {preTurnCount == TURNS_SINCE(-> exploration): -> DONE }  -> ret