do 
name=input("\n\nEnter name:  ",'s');
address=input('Enter Address:  ','s');
amount=input('Enter amount of purchase:  $');
purchasetype = input( 'Enter purchase type (L for Laptop, D for Desktop): ', 's');
if  ( ! ( strcmp( "L", purchasetype ) || strcmp( "D", purchasetype ) ) )
    fprintf( "\nType of purchase is only L or D\n" );
else 
     confirm_amount = amount;
    if ( strcmp( "L", purchasetype ))
      if( confirm_amount<=250 )  
      discountpercent=0;
      elseif( confirm_amount<=570 )
      discountpercent=5/100;
      elseif( confirm_amount<=1000 )
      discountpercent=7.5/100;
      elseif( confirm_amount>1000 )
      discountpercent=10/100;
      endif
    elseif ( strcmp( "D", purchasetype ))
      if( confirm_amount<=250 )
      discountpercent=5/100;
      elseif( confirm_amount<=570 )
      discountpercent=7.6/100;
      elseif( confirm_amount<=1000 )
      discountpercent=10/100;
      elseif( confirm_amount>1000 )
      discountpercent=15/100;
      endif  
    endif 
    
    discount = discountpercent * confirm_amount;
    netAmount = confirm_amount - discount;
  
    fprintf( "\n\nName: %s\n", name );
    fprintf( "Address: %s\n", address );
    fprintf( "Net amount: $%0.2f\n", netAmount );
endif


do    ans = input( "\nDo you wish to continue purchase ( Enter Y for Yes, N for No)?", "s" );
  until( strcmp( "Y", ans ) ||  strcmp( "N", ans ) )

until( strcmp( "N", ans ))

fprintf( "\nYou have exit purchase screen. See you next time!  Goodbye!\n" );