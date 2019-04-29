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
    let mut ans: i32 = 0;
    let mut a: i32 = read();

    if a % 2 != 0 {
        a -= 1;
        ans += 1;
    }

    if a >= 100 {
        a -= 100;
        ans += 1;
    }

    if a == 10 {
        ans += 1;
    }

    println!("{}", ans);
}