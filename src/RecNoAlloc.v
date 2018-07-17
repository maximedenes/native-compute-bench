Fixpoint zero (n:nat) :=
  match n with
  | O => O
  | S p => zero p + zero p
  end.

Definition n := 29. (* 28 *)

Definition res := zero n.

Time Eval native_compute in res.
