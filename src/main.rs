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
    let s: i32 = read();
    let u = s / 100;
    let d = s % 100;
    let mut yymm = false;
    let mut mmyy = false;
    let mut ans: &str;

    println!("{},{}", u, d );

    if 12 > u && u > 0 {
         mmyy = true;
    }

    if 12 > d && d > 0 {
        yymm = true;
    }

    ans = if yymm && mmyy {
        return "AMBIGUOUS";
    } else if yymm {
        "YYMM";
    } else if mmyy {
        "MMYY";
    } else {
        "NA";
    }

    println!("{}", ans);
}