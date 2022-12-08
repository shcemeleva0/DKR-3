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
    write('������� ����� ������� ��������� �� -10 �� 0 a = ');
    readln(a);
  until (a >= -10) and (a <= 0);
  repeat
    write('������� ������ ������� ��������� �� 0 �� 10 b = ');
    readln(b);
  until (b >= 0) and (b > a) and (b <= 10);
  repeat
    write('������� ����� ��������� �� 20 �� 1000 n = ');
    readln(n);
  until (n >= 20) and (n <= 1000);
  h := (b - a) / n;
  s := (f(a) + f(b)) / 2;
  writeln ('������ ��������)');
  writeln ('������� enter ��� ������ �� ������� ����');
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
  writeln('������ ��������=', s:0:3);
  end else writeln ('������� ������� ������');;
  writeln ('������� enter ��� ������ �� ������� ����');
  readkey;
end;


procedure toch;
begin
clrscr;
if g then begin
  y := f1(b) - f1(a);
  writeln('������������ ��������=', y:0:3);
  end else writeln ('������� ������� ������');
  writeln ('������� enter ��� ������ �� ������� ����');
  readkey;
end;

procedure abs;
begin
clrscr;
if g then begin
  y := f1(b) - f1(a);
  writeln('���������� �����������=', abs(y - s):0:3);
  end else writeln ('������� ������� ������');
  writeln ('������� enter ��� ������ �� ������� ����');
  readkey;
end;

procedure otn;
begin
clrscr;
if g then begin
  y := f1(b) - f1(a);
  writeln('������������� �����������=', abs(y - s) / y:0:5);
  end else writeln ('������� ������� ������');
  writeln ('������� enter ��� ������ �� ������� ����');
  readkey;
end;

procedure menu1;

begin
  clrscr;
  println('����� ������ ������ ������� 1');
  println('����� ������� ������ �������� ������� 2');
  println('����� ������� ������������ �������� ������� 3');
  println('����� ������� ���������� ����������� ������� 4');
  println('����� ������� ������������� ��������� ������� 5');
  println ('���� ������ ������ ������ ������� 6');
  print('�������� ���������: ');
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

