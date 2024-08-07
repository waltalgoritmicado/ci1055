program quadrado_magico2;

CONST
	MIN= 1;
	MAX= 100;

type
	matriz= array[MIN..MAX, MIN..MAX] of longint;

var
	n: longint;
	A: matriz;
(* ler matriz  *)
procedure ler_matriz(n: longint; var A: matriz);
var
	i, j: longint;
begin
	for i:=1 to n do
	begin
		for j:= 1 to n do
		begin
			read(A[i, j]);
		end;
	end;
end;


(* retorna quantas matrizes não triviais  *)
function quantas_matrizes_nao_triviais(n: longint; var A: matriz): longint;
var
	i, j: longint;
begin
end;

(* programa principal *)
begin
	read(n);
	ler_matriz(n, A);
	writeln(quantas_matrizes_nao_triviaisç(n, A));
end.

