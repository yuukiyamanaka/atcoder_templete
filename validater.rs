mod io{
    use std::io::*;
    pub fn read<T: ::std::str::FromStr>()->T{
        let stdin=stdin();
        let ret=stdin.lock().bytes().map(|c|c.unwrap()as char)
        .skip_while(|c|c.is_whitespace())
        .take_while(|c|!c.is_whitespace())
        .collect::<String>().parse().ok().unwrap();
        ret
    }
}
 
use io::read;

fn main(){
  let mut a :Vec<i32> = (0..n).map(|_| read()).collect();
  let n: i32 = read();
  println!("{}" n);
}