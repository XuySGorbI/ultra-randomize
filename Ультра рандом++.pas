
const n1 = 18;//число отк
      n2 = 50;//число до
      n3 = 10;  //количество
      
      p1 = 1; //чисто от
      p2 = 30;//число до
      p3 = 10; //количество
label 1,2;
      
var i, i1, f, g, a:integer;
    a1:array[n1..n2] of integer;
    a2:array[p1..p2] of integer;



begin
randomize;
a:=0;


{цэх рандома 1}

1:
{блок рандома}
for i := n1 to n1 + n3 - 1 do
  begin
  
  f := random(n2-n1+1) + n1;
  a1[i]:= f;
  
  end;
{проверка на повторы}
for i := n1 to n1 + n3 -1 do
begin
  g := 0;
  for i1 := n1 to n1 + n3 - 1 do
  begin
    if a1[i] = a1[i1] then
      g := g + 1
    
  end;
 if g > 1 then 
  goto 1;
end;






{цэх рандома 2}

2:
{блок рандома}
for i := p1 to p1 + p3 - 1 do
  begin
  
  f := random(p2-p1+1) + p1;
  a2[i]:= f;
  
  end;
{проверка на повторы}
for i := p1 to p1 + p3 -1 do
begin
  g := 0;
  for i1 := p1 to p1 + p3 - 1 do
  begin
    if a2[i] = a2[i1] then
      g := g + 1
    
  end;
  if g > 1 then
    goto 2;
end;





{блок сортировки 1}
for i:= n1 to n1 + n3 - 1 do
begin
  
  for i1:= n1 to n1 + n3 - 1 do
  begin
    
    if a1[i] < a1[i1] then
    begin
      a := a1[i];
      a1[i] := a1[i1];
      a1[i1] := a;
      
    end;
  end;
end;  
  
  
  
  
  {блок сортировки 2}
for i:= p1 to p1 + p3 - 1 do
begin
  
  for i1:= p1 to p1 + p3 - 1 do
  begin
    
    if a2[i] < a2[i1] then
    begin
      a := a2[i];
      a2[i] := a2[i1];
      a2[i1] := a;
      
    end;
  end;  
end;










  {блок вывода 1}
writeln('первое');
  for i:=n1 to n1 + n3 - 1 do
  begin
    
   write(a1[i], ' ')
    
  end;
  
writeln(' ');
writeln(' ');

  {блок вывода 2}
writeln('второе');
  for i:=p1 to p1 + p3 - 1 do
  begin
    
   write(a2[i], ' ')
    
  end;



end.