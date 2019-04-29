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
    let n: i32 = read();
    let mut a :Vec<i32> = (0..n).map(|_| read()).collect();
    let mut ok = true;
    let mut ans = 0;

    while ok {
        for k in &a {
            if k % 2 != 0 {
                ok = false;
                break;
            }
            k = k % 2;
            ans += 1;
        }
    }

    println!("{}", ans);
}