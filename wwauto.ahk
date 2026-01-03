#Requires AutoHotkey v2.0
#Include <FindText>
#SingleInstance Force

#SuspendExempt
F12::Suspend
#SuspendExempt False

#HotIf WinActive("ahk_exe Client-Win64-Shipping.exe")
{
    ; is_white(x,y){
    ;     c := PixelGetColor(x,y)
    ;     r := (c >> 16) & 0xFF
    ;     g := (c >> 8) & 0xFF
    ;     b := c & 0xFF
    ;     return (r > 210 && r < 240 &&
    ;             g > 210 && g < 240 &&
    ;             b > 210 && b < 240 
    ;     )
    ; }
    ; is_skip_button(){
    ;     points := [[166,66],[170,66],[103,74],[144,58]]
    ;     matches := 0
    ;     for p in points{
    ;         if is_white(p[1],p[2]){
    ;             matches++
    ;         }
    ;     }
    ;     return matches > 2
    ; }
    
    skip_button_w:="|<>*136$62.zzzzzzzzzzDzAyTyDtzzm1mDXzXy7zwYQXwTszUzz9V8bY01s3zmM21z00S0TwUEUzzszU1z848A7SDs0Dnnm7lXXy00wYwXyQMzU07968TbaDs00mF23txXy00AYUUyTszU07998bbyDs07mHmDtw3y03wYsWST0zU3z82Ma3zzs1zk0C1200S1zw3bkHs07UzzDvySznzszznzzzzzzyTzwzzzzzzzzzz8"
    skip_button:="|<>#1071@0.80$84.0000000000000600000U0701000C006Q1k0701U00CDw6Q1k0701s00CCQ6Q0s0701w00CAQaR0Qzzw1z00CATaRU8zzw1zk0CARaRU007U1zs0CDwqRU00701zw0CDwyT3w0701zz0C1kyT3wQ701zzUC0kCQ0QQ701zzsCAkCQ0QC701zzwCAsCQ0Q7701zzzCAwSS0Q3701zzzCAsyT0Q1701zzyCAlyTUQ0701zzwCAniRUQ0701zzsCAlCQ0Q0701zzUCAkAQ0Q3z01zy0CAkQQkQ1z01zw0CAyMQky0001zs0CTysQlz0001zU0CTtkTnnyzy1z00CS3UTnUzzy1w00C030D107zU1s00C0000000001U00C0000000001000C00000000000006U"
    Text_skipbutton:="|<>*138$117.00000400S00001kD07U1zkRs1k03k0000S1s0w0Dz3j0T00S0zzyvkDDzzlzsRs1w03k7zzrS1tzzyDD3j07U0T0y0yvkDTzzltzRvUSzzzbU3rSBy0w0DDvjS1bzzwy0yvlzrzzVlzxvU0zzz7zzrSDzzzwDzzjw000S0zzyvlzs7U1zvxz7y43k7zzbSDvzzyDyTjsznkS0wD0vljTzzs7Xxy3yT3k7Vs7SRvzzzCw3j03lwS0zzyvnj0001rsxw0S7Xk7zzrSRszzwCzDzk3kSS0zzyvlD7zzVrvxz0S1nk7Vs7S1szzwCwzjs3kAS0wD0vkD7U7VrbxzUS03k7zzbS1szzwCxzjQ3k0S0zzwvkD7zzVrixtUS03k7zzbS1sw0wCw7j83kDy0zkwvkD7U7VrVttkS1zk7S3bS1szzwCzzDC7sDw0vkQ3kD7zzXzzltlzU00DTzUS1sw0wzzwDyzzzzxnzwTkD7VDXzD1zrlzzziTzXy1swDwT3k7ww3zzxnkQTkD7VzW0A0T307zy4A3Xw1ss7kU" 
    Text_skipbutton_w:="|<>*133$87.00m0k0Q000A70s3yCsC03Uzz1Us70Tlr1s0Q7zvg7TzvaCs7U3Us7RUzzzQzrMRzzb0vgzjznbyz0DzwzzRbzzyTrrs00Q7zvgrks3ySyTW3UssRavzz3XrVwsQ773grTzvwCs3XXUzzxas00TtrUQCQ7zzgrDznzSw3VnUssRUtzyTbrkQ4Q773g7C1nxyz3U3UzzRUtzyThrMQ0Q7zvg7DznwCv3UzUr7RUtkCTfbQQ7s6ssA7DznzQvbs01rz1UtkCzz7xzzzyztw7CDrlkzQDzxb7DUtlyEA3lUTzgktw7CDY"

    F13::{
        while (GetKeyState('F13','p')){
            SendInput('{Blind}{click}')
            Sleep 80
        }
    }
    F18::{
        while (GetKeyState('F18','p')){
            SendInput('{Blind}{a}')
            Sleep 100
            SendInput('{Blind}{d}')
            Sleep 100
        }
    }
    $f::{
        while (GetKeyState('f','p')){
            SendInput('{Blind}{f}')
            Sleep 80
        }
    }
    ; ^F6::{
    ;     Sleep 200
    ;     SendText('etonfox@gmail.com')
    ;     SendInput('{Tab}')
    ;     Sleep 300
    ;     SendText('zzz123666')
    ; }
    checkskipbutton(){
        if (ok:=FindText(&X, &Y, 91, 47, 186, 85, 0.35, 0.35, skip_button)){
            SendInput('{Escape}')
            Sleep 100
        }
        if (skip_2:=FindText(&X, &Y, 68, 170, 140, 199, 0.3, 0.3, skip_button_w)){
            SendInput('{Escape}')
            Sleep 100
        }
        ; 1163, 689, 1263, 724
        if (ok:=FindText(&X, &Y, 1235, 740, 1360, 780, 0.1, 0.1, Text_skipbutton)){
            Sleep 300
            FindText().Click(X,Y,"L")
        }
        if (ok:=FindText(&X, &Y, 1163, 689, 1263, 724, 0, 0, Text_skipbutton_w)){
            Sleep 300
            FindText().Click(X,Y,"L")
        }
    }
    SetTimer checkskipbutton,200
    
}
#HotIf
