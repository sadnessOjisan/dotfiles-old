(* 受け取ったリストに0が含まれているか調べる *)

let rec contain_zero lst = match lst with
    []->false
  |first :: rest -> if first = 0 then true
    else contain_zero rest

let a = contain_zero [];