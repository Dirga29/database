// // alert('Web telah eror')

// // console.log('Saya Dirga Pratama')

// // console.table (["durian","pisang","kentang"])

// // console.error("kalau ada eror")

// // console.warn("kode nya ga baek") 

// // let nama ="riski"
// // nama="joko"
// // console.log(nama);

// // const alamat ="jln sendirian"
// // console.log(alamat);

// // let nama =prompt('dirga')
// // let umur =prompt (`umur ${nama] berapa sii)
// // alert(`terimakasi ${nama}telah mengisi data `) 
// // // let kelas = "12 mipa"
// // // let sekolah ="sma budi merdeka"
// // // console.log(nama);
// // // console.log(umur);
// // // console.log(alamat);
// // // console.log(kelas);
// // // console.log(sekolah);

// // console.log(`nama saya ${nama}`);
// // console.log(`umur saya ${umur}`);
// // console.log(`alamat saya di ${alamat}`);
// // console.log(`saya kelas ${kelas}`);
// // console.log(`saya bersekolah di ${sek

// document.title ='belajar js'
// const body = document.body
// body.append('mengisi body')

// const h1 = document.createElement('h1')
// h1.textContent='dirga'
// body.append(h1)

// const h2 = document.createElement('h2')
// h2.textContent='<marquee>dirga'
// body.append(h2)

// const h3 = document.createElement('h3')
// h3.innerHTML='<marquee>dirga</marquee'
// body.append(h3)

// const h4 = document.createElement('h4')
// h4.innerHTML='<center>dirga</center'
// body.append(h4)

// const btn2 = document.getElementById('btn2')
// btn2.style.border ='none'
// btn2.style.padding ='3px'
// btn2.style.background ='magenta'
// btn2.style.fontSize='15px'

// function gantiwarna (){
//     btn2.style.background = 'yellow'
//     btn2.textContent='SUDAH DI KLIK'

// }

// function ubahText(){
//     btn2.textContent='KURSOR MASUK DI AREA BUTTON/TOMBOL'

// }

// const btn3 = document.getElementById('btn3')
// btn3.style.border ='none'
// btn3.style.padding ='8px'
// btn3.style.background ='blue'
// btn3.style.fontSize ='20px'

// function hapus (){
//     var a=(confirm("Apakah ingin menghapus data"))
//     if (a){
//         alert(`Data Berhasil Di Hapus`)
//         window.location='index2.html'
//     }else{
//         alert('Data Batal Di Hapus')
//     }
// }


// const day =["senin","selasa","rabu"]
// console.log(day[0])//dimulai dari 0
// console.log(day);//



//     const day =["ahhh" ] 



//const nama =["bima","majid","vania","yuda","syafik","hapis","gantari"];
// 1
//console.log(nama);
// 2
//console.log(nama.join('-'));
//3 
//console.log(nama[3],nama[6]);
// 4
//nama.push("bima");
//console.log(nama);
// 5
//nama.pop ();
//console.log(nama);
// 6
//nama.unshift("ronal");
//console.log(nama);
// 7
//nama.shift();
//console.log(nama);
// 8
//var nama2 = nama.slice(1,3);
//console.log(nama2);
// 9
//nama.splice(2,1,'ian','mesa');
//console.log(nama);

//object literal
var siswa1 = {
    nama : "vania", 
    sekolah : "muhiyo",
    noabsen : "25",
    usia : "17",
    kelas : "11 rpl",
    TTL : {
        tempat : "Bantul",
        tanggal : "01",
        bulan : "juni",
        tahun : "2006",
    },
    alamat : {
        jalan : "Jl Potorono No.64",
        kota : "jogja",
        provinsi : "DIY"
    }
};

var siswa2 = {
    nama : "Nazura", 
    sekolah : "muhiyo",
    noabsen : "19",
    usia : "19",
    kelas : "12 rpl",
    TTL : {
        tempat : "yogyakarta",
        tanggal : "24",
        bulan : "november",
        tahun : "2004",
    },
    alamat : {
        jalan : "Jl Imogiri timur KM.6",
        kota : "jogja",
        provinsi : "DIY"
    }
};

var siswa3 = {
    nama : "Atha", 
    sekolah : "SMAN 5 YK",
    noabsen : "02",
    usia : "16",
    kelas : "11 MIPA",
    TTL : {
        tempat : "yogyakarta",
        tanggal : "21",
        bulan : "mei",
        tahun : "2005",
    },
    alamat : {
        jalan : "Jl Maguwoharjo",
        kota : "jogja",
        provinsi : "DIY"
    }
};

var siswa4 = {
    nama : "Novan", 
    sekolah : "SMAN 5 YK",
    noabsen : "23",
    usia : "17",
    kelas : "11 MIPA",
    TTL : {
        tempat : "yogyakarta",
        tanggal : "22",
        bulan : "november",
        tahun : "2006",
    },
    alamat : {
        jalan : "Jl Pleret",
        kota : "jogja",
        provinsi : "DIY"
    }
};

var siswa5 = {
    nama : "Rafiz", 
    sekolah : "SMAN 2 BTP",
    noabsen : "19",
    usia : "16",
    kelas : "Fase FC",
    TTL : {
        tempat : "yogyakarta",
        tanggal : "15",
        bulan : "januari",
        tahun : "2005",
    },
    alamat : {
        jalan : "Jl Balong",
        kota : "jogja",
        provinsi : "DIY"
    }
};