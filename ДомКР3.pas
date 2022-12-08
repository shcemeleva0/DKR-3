uses crt;
var
  a, b, h, s, y: real;
  n: integer;
  u: char;
  g: boolean;

function f(x: real): real;
begin
  f := 1 * power(x, 3) + 1 * power(x, 2) + 17;
end;

function f1(x: real): real;
begin
  f1 := 1 / 4 * power(x, 4) + 1 / 3 * power(x, 3) + 17 * x;
end;

procedure prog;
begin
  clrscr;
  repeat
    write('Ââåäèòå ëåâóş ãğàíèöó èíòåğâàëà îò -10 äî 0 a = ');
    readln(a);
  until (a >= -10) and (a <= 0);
  repeat
    write('Ââåäèòå ïğàâóş ãğàíèöó èíòåğâàëà îò 0 äî 10 b = ');
    readln(b);
  until (b >= 0) and (b > a) and (b <= 10);
  repeat
    write('Ââåäèòå ÷èñëî ğàçáèåíèé îò 20 äî 1000 n = ');
    readln(n);
  until (n >= 20) and (n <= 1000);
  h := (b - a) / n;
  s := (f(a) + f(b)) / 2;
  writeln ('Äàííûå çàïèñàíû)');
  writeln ('Íàæìèòå enter äëÿ âûõîäà íà ãëàâíîå ìåíş');
  g:= true;
  readkey;
end;

procedure prib;
begin
clrscr;
if g then begin
  for var i := 1 to n - 1 do
    s := s + f(a + i * h);
  s := s * h;
  writeln('Òî÷íîå çíà÷åíèå=', s:0:3);
  end else writeln ('Ââåäèòå ñíà÷àëà äàííûå');;
  writeln ('Íàæìèòå enter äëÿ âûõîäà íà ãëàâíîå ìåíş');
  readkey;
end;


procedure toch;
begin
clrscr;
if g then begin
  y := f1(b) - f1(a);
  writeln('Ïğèáëèæåííîå çíà÷åíèå=', y:0:3);
  end else writeln ('Ââåäèòå ñíà÷àëà äàííûå');
  writeln ('Íàæìèòå enter äëÿ âûõîäà íà ãëàâíîå ìåíş');
  readkey;
end;

procedure abs;
begin
clrscr;
if g then begin
  y := f1(b) - f1(a);
  writeln('Àáñîëşòíàÿ ïîãğåøíîñòü=', abs(y - s):0:3);
  end else writeln ('Ââåäèòå ñíà÷àëà äàííûå');
  writeln ('Íàæìèòå enter äëÿ âûõîäà íà ãëàâíîå ìåíş');
  readkey;
end;

procedure otn;
begin
clrscr;
if g then begin
  y := f1(b) - f1(a);
  writeln('Îòíîñèòåëüíàÿ ïîãğåøíîñòü=', abs(y - s) / y:0:5);
  end else writeln ('Ââåäèòå ñíà÷àëà äàííûå');
  writeln ('Íàæìèòå enter äëÿ âûõîäà íà ãëàâíîå ìåíş');
  readkey;
end;

procedure menu1;

begin
  clrscr;
  println('×òîáû ââåñòè äàííûå íàæìèòå 1');
  println('×òîáû âûáğàòü òî÷íîå çíà÷åíèå ââåäèòå 2');
  println('×òîáû âûáğàòü ïğèáëèæåííîå çíà÷åíèå ââåäèòå 3');
  println('×òîáû âûáğàòü àáñîëşòíóş ïîãğåøíîñòü ââåäèòå 4');
  println('×òîáû âûáğàòü îòíîñèòåëüíóş ïğîãğàììó ââåäèòå 5');
  println ('×îáû ââåñòè äàííûå çàíîâî íàæìèòå 6');
  print('Âûáåğèòå ïğîãğàììó: ');
  read(u);
  case u of 
    '1': prog;
    '2': prib;
    '3': toch;
    '4': abs;
    '5': otn;
    '6': exit;
  end;
end;


begin
  while true do
    menu1();
end.

