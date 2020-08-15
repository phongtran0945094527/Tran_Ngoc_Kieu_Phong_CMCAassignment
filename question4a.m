number=input('Enter a number (Enter nothing to Exit):');


while isempty(number) ~= true 
  conversion_choice=input('DR ( DEGREES to RADIANS) , RD ( RADIANS to DEGREES) or press Enter to input NEW NUMBER :','s');
  
  if (strcmp(conversion_choice, 'DR')==true)
    
   converted_value=(number*pi/180);
   
   fprintf('%d C is %d  Radian\n', number, converted_value);
 
 elseif(strcmp(conversion_choice, 'RD')==true)
   converted_value=(number*180/pi);
   fprintf('%d Radian is %d C\n ', number, converted_value);
   
   else
  
   number=input('Enter a number (Enter nothing to Exit):');
   end
  
   
end

fprintf('THANK YOU, BYE!');