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
    let a: i32 = read();
    let b: i32 = read();

    println!("{}", if(a*b)%2==0{"Even"}else{"Odd"});
}