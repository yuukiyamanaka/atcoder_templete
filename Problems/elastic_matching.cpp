/*
Elastic Matching (弾性マッチング)

入力:
A n 文字列系列
B n 文字列系列
C n スコア関数

制約:
AとBの系列をマッチングさせる. 順序が入れ替わったり, マッチングしないのはNG.

出力:
最大スコア

*/

/*
解説

順序つき制約が明確なので, 問題としては難しくない. DPマッチングで解ける.
グラフで捉えると, (1,1)から(i,j)への単調(増加)なパスを求める問題と解釈できる.
DPマッチングは、連続性と単調性が必要.

部分問題
 d(i,j) = (1,1)から(i,j)までの単調なパスの最大スコア
漸化式
 d(1,1) = c(1,1)
 d(i,j) = c(i,j) + max( d(i,j-1), d(i-1, j), d(i-1,j-1) )
 ただし, i,jはいずれもnを超えないこと.
計算量
 time: O(n^2)
 space: O(n^2)

*/
