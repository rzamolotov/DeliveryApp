//
//  Constant.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI


// DATA

// COLOR

// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)

// LAYOUT
let columnSpacing: CGFloat = 2
let screen = UIScreen.main.bounds
let rowSpacing: CGFloat = 2
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 3)
}

//Fonts
let blackFont = "Montserrat-Black"
let boldFont = "Montserrat-Bold"
let extraBoldFont = "Montserrat-ExtraBold"
let extraLightFont = "Montserrat-ExtraLight"
let italicFont = "Montserrat-Italic"
let lightFont = "Montserrat-Light"
let mediumFont = "Montserrat-Medium"
let mediumItalicFont = "Montserrat-MediumItalic"
let regularFont = "Montserrat-Regular"
let thinFont = "Montserrat-Thin"
let thinItalicFont = "Montserrat-ThinItalic"

//fontSize

let fontSizeVerySmall = screen.height / 70
let fontSizeSmall = screen.height / 60
let fontSizeMedium = screen.height / 50
let fontSizeMediuPlus = screen.height / 40
let fontSizeLarge = screen.height / 30
let fontSizeHuge = screen.height / 20


func getCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: Date())
    }

// Product example
let productExample = Dishes(
    id: 1,
    name: "Рис с овощами",
    price: 799,
    weight: 560,
    description: "В китайской кухне рис с овощами готовят с добавлением грибов, бамбуковых побегов, моркови, лука и гороха. Эти ингредиенты быстро обжариваются на сковороде с соевым соусом и специями.",
    image_url: "https://lh3.googleusercontent.com/fife/APg5EOb3-gGunBAb_3E7L5qZLGIx0Wm8kh4UjNn2yow-7Kvf50D7eFb9Iw5g_7W7TQLGKF29-G6VNa7dHS_zEWY8VaSMh9EqUql8UEFISB_WWgiO8nf_mt0YtUhsWFB5uzw-Bfi_eS9Cs-0vLUMiqaqTGgGFDvVhUvak4AypPMEbt2-3mEkxeZNcClEy29x8gEmUU6e9G8s5GDyCxR404OIsgnGHqtIaGIGD7afRoz7PtgtmZdlXC5v7dHujDNh5l28v249qxjpa1rqxoorBb-ywkRsu1bzqDEHGbRDnFNLXHwEGlHoLS1krz9KcD3opkmQckg7-m7PXzEhnQlayqMPiNGP-WpnFYrthFVfJ0TY4zsYFx1azSJZTLa59Xuqr32eagNn9xF6mCPpGqRbunBKrbD-oWidQ_iAXZRRrgjZrv280Joe8z73AluN0A-mXcqRkpVwQo1n3szZ00wX7sD44PriRwHGUfEenTC5IyLVv3MBsYMNXJ9ALa6FZgTrnUhO_ePGoPftELYGNp4yn-xkzfM_GvnQR8A6od0bR8AqqpNketd0kBavJTkaJXBwsfvxinTdLfOTfWsZAhF97XYNEA_9SmTgnnOjt3N8YUxmUeWcor174r7bNdDuDQqq7vWRgFZNorh5v6LANRk0CVsq6B9tVxP2R1zTCc1yXgpu4kNGJsEvNyxMRy-yM3cBvhu01ZUFSalvwAqcS2M9_eBoPCu00KVtcEvyFPoqm_QNHBEkDLjUdtJC7BGcmv7SPa-rV6oH_3zeIYstyKLrgN-Dzewe816A6J7IN4YxSvCIOWbNV9Q6O3hxua_ZrGSk6ijSoBKE0XHUC04cr1O6BzRxL9lwVUhzvBzYfzmBzMPb84Pq-WwBtfCxN2j34NReGu5iABuA1iDNgz0r8WE2Dvvz0XsD6Uc8neX57A7_19J6vyJEhuARJREXGs4tFWHMmjqg-xwYOOPJhxF1BkCaQrUEKtFYBq1pT2N7_h9fMV8JOLP92grJFHRP6TmNrEjPAf9HjfYRFouBAqFMRy614VrJu5hyweBcy-4WbJNYqrvKZH_bXIQyZ6qlv4omHhGTSMMT9cAYTyiMm12bEH5ccThAygPaXlfx6ydA3towLnMpoq0ieByM2-Nql2uh4xPxgAHcmzipRgEqlYDflDKNSfeTVFKKQ4vtTWa43wR505BTjdO3mk5CVoK4sOzwcF1mQA2joVXdW63wbUWtw4wtfa3e9EP1TV01b5M02KKPcr2yxZpNQCo8-Igp6M8t_vqWSKlkq-Z7NaRswW-xQyuFWjCufwgpd1m8i5Z4tnL72DhelmIiI2cXufJb70_eobyMV5VsMUab1nLKWoKwggolnEjl2A1PLrv6T0aRTYmjt3JqFDEV58aIjZhhyrcX6h6Bb_AJzc-OFvFPw1uAuswJaimihZUfYoVuwtNRI27BD7KGnXzMHKthOM4fArK3ICIt61g91DNHAu9qhpWxsj0FrcmujdWE2vJpBf7XoOcgxiRlRKpljQ2c3M6ULTdS1nuypZleouOtwIHOUoxGtT5HJeC8ZcsgI3przMt97iGmSv5Us7xL0j42wVNZbQnyQ6EsIyIG1ZOo2ah9CyA7RqixQUevdzbPhSnJk2w6weuuRCDkdC4H97doLyAV_=w1366-h617",
    tegs: ["Все меню", "С рисом", "Салаты"])
let categoryExample = CategoryItems(
    id: 1,
    name: "Пекарни и кондитерское",
    image_url: "https://lh3.googleusercontent.com/fife/APg5EOZwXlSvVv7qAPzCjMLni5B6UOj2rqnQxbVcUixlPdm0nDPChMh8SmfbyhGOQXXTw9eQlySJ6XO34ix7DimTqUDcnB6MRb_GS6O8z4lD8vyM3h67V5rgFyFgeJ5anUUivDGRJrRCPvsmvSauRFvzv9QwQR3BfMQaECH70N5SW2oiFGS-MJBhuoAR3-kEVBgpAel2P4tfdNcD0PBHe-P9xgsl-fITrk9XWimTNFQA_zManQaDtaPT4w8lVS-jqwWXizGBJ31kCn_nxV6D4K3klF5DCKaK63JnTAx4AiwvMj88Vp2-BhK3WgEwJsW8cDCaapvV1-XFb3SFARRKfrLesXiJCVq6IuEllQzkcU81D-BFYIxLc_tfw9d7NA5QR2s_JnOtd1VK2plQfo_D7JEQDoXCmeMM-6L8C9D2b5YtUoc73cv7KUrYuZCP9jymc21HgPSiTXpmFo7kLhrCLn3ePivaDoGIL7xzaQEKRnXX5tCOeHFlIhq78TeZwIWIVWxSwaWs65RCVo98LuZiOfCcu3u69hKVme5bHVHQNpolqHw6RgXInDcSO-1c-HY4TAyaPhtpLWxE5bd_XwGnso6YEdHg3kFqANZwXEv9hb7DY39CasubzAwYnCsOOq07b0uFF1jRAvgjejxJJcXiE88XIs9QpwwaQCrtGuHbmDIzbGlx17a6-XommGe2cobC4MZ9jqfW6lCOi22tAix7g5J3194RHXyb1cVs5Pt-U0l88Z0WAX_rLyxogDIFVQc0fhm7A7BZOrDSAaH-Ii8ZEOe3IGtz4IbVYRmMUWBKM5FXrcKBpxNenheeBj3ifFYtJHsXdW_eK3JRsHGY4IZPODRF16EqiemMQKHNo3IRI73QsKAIcgsHd6SZJrh9OxDbRNHC6ZXVuIYqzFf_UVzLLmCx-9xWfXVBwN5sMh38u2Yq1jPNv2VQqQgzCrQTtvheMjo28Z00rc6JQ7KFo-3LsG45dXR74B6dprRwYZb1HK9XMzo2hYh2dwU0VSOkO4DIjzoeAhstr37PLpFxUYmuQi8HTxm_SOdov2LQs_ZS2gLk7WqHIQjALu67M6MtifU0aGivw_oV24I8CdBpP_4JsupRFOTrOKlcjPtYYJGCPjXTzsF2gbc3N_g-f45lS1FKltDWY1DNnc2sE4pmlPaeQG52EfLFiw6tdAZfzkuFBbCED4-GMUNIhhnwYl3lO1EL1NMt7W09fC6pdebC5JqCtnKwrhPsQmVaEIc18oOlVsK3ZHJNacu7MzsB9moZgZDb4IXFm71-ad7Vdu3l5eyN-533i1U7ikpbc8v9JpShD9Exd6QHyPWcEaVk-TuAwz4509t1ioDTEp_rSVDhxli2k0IzhODBtb6ChBMmhHP_MO8NdTvU_y5hKpg7cj3YgJ26aizvQi0Qq5koz5fVEFBtaXXw5ok_rwFqagW_LmKGIRqyydVb2BRILFv6D3bp-NC1hBnvYUS4VGXD4YGRVP3eK-dQ4kDVWd1RZ5gllZHgA8OTuzGgxGOGmGaOmkiSJHpx2Xt1XU8r86iHo6EzjyibiQxGsBfNrhtHXf5IxyOwNR5P76lhdTB_TOc9t8MQ0Pc86wZWye8F-9W7tDZ_GsyPWUYzlfWU174gOObTmnKcWY5IfeEJr073IB-l=w1366-h617")
