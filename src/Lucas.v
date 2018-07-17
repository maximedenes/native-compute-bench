Require Import ZArith.

Definition pow2_p p := Zpos (iter_pos positive xO xH p).

Definition mersenne p := (pow2_p p - 1)%Z.

Definition next_s mp s := (((s*s) - 2) mod mp)%Z.

Definition lucas_residue p :=
  let mp := mersenne p in
  let pm2 := (p-2)%positive in
  iter_pos Z (next_s mp) 4%Z pm2.

Definition lucas_test p :=
  Zeq_bool (lucas_residue p) 0.

Definition p89 := 89%positive.
Definition p521 := 521%positive.

Definition res := lucas_test p521.

Time Eval native_compute in res. (* p521 *)
