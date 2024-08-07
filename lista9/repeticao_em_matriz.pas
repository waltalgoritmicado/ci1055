program repeticao_em_matriz;
const
	MIN= 1;
	MAX= 100;

type
	matriz = array[MIN..MAX, MIN..MAX] of longint;
	vetor = array[MIN..MAX] of longint;
var
	m, n: longint;
	A: matriz;
	V: vetor;
(* procedure que faça a leitura da matriz *)
procedure ler_matriz(m, n: longint; var A: matriz);
var
	i, j: longint;
begin
	for i:= 1 to m do 
	begin
		for j:= 1 to n do 
		begin
			read(A[i, j]);
		end;
	end;
end;
(* function que retorna se há elementos repetidos na matriz *)
function ha_elementos_repetidos(m, n: longint; var A: matriz; var V: vetor): boolean;
var
	i, j, l, countv, controller: longint;
begin
	ha_elementos_repetidos:= true;
	countv:= 0;
	controller:= 0;
	for i:= 1 to m do 
	begin
		for j:= 1 to n do 
		begin
			countv:= countv + 1;
			V[countv]:= A[i, j];
		end;
	end;
	
	l:= 1;	
	for i:=1 to countv-1 do
	begin
		l:=i+1;
		while l < countv do
		begin
			if V[i] = V[l] then
			begin
				controller:= controller + 1;
			end;
			l:= l + 1;		
		end;
	end;	
	if controller >= 1 then
		ha_elementos_repetidos:= true
	else 
		ha_elementos_repetidos:= false;
end;
(* programa princial *)
begin
	read(m, n);
	ler_matriz(m, n, A);
	if ha_elementos_repetidos(m, n, A, V) then
		writeln('sim')
	else
		writeln('nao');
end.

