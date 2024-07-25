delay_via_loading := 5500

delay_via_HUD := 500
delay_via_downup := 25

F1::       ; 버드 팜 매크로 키 F1
{
    Loop {   ; n 번 반복
        ; 맵 오픈
        Send "{m Down}"
        Sleep 30
        Send "{m Up}"

        ;맵 오픈 ~ 축복목록 오픈 사이의 딜레이
        Sleep %delay_via_HUD%

        ;축복목록 오픈
        Send "{f Down}"
        Sleep %delay_via_downup%
        Send "{f Up}"

        ;맵 오픈 ~ 축복목록 오픈 사이의 딜레이
        Sleep %delay_via_HUD%

        ;축복 선택
        Send "{e Down}"
        Sleep %delay_via_downup%
        Send "{e Up}"

        ;축복 선택 ~ 확인버튼 선택 사이의 딜레이
        Sleep %delay_via_HUD%

        ;확인버튼 선택
        Send "{e Down}"
        Sleep %delay_via_downup%
        Send "{e Up}"

        ; 로딩 딜레이
        Sleep %delay_via_loading%

        Send "{j down}"  ; 캐릭터를 절벽 쪽으로 회전
        Sleep 500   ; 회전 시간
        Send "{j up}"

        Send "{w down}"  ; 절벽 쪽으로 걷기
        Sleep 1700    ; 걷는 거리
        Send "{w up}"

        Send "{e down}" ; 캐릭터가 이전에 죽었을 경우 룬 줍기
        Sleep 50
        Send "{e up}"

        Send "{k down}"  ; 아래를 바라보기
        Sleep 250
        Send "{k up}"

        Send "{j down}"  ; 새 쪽으로 약간 회전
        Sleep 55
        Send "{j up}"

        Send "{q down}"  ; 새 타겟팅
        Sleep 200
        Send "{q up}"
        Sleep 300

        Send "{p down}" ; 새에게 화살 쏘기
        Sleep 500
        Send "{p up}"
	Sleep 1750
        Send "{p down}" ; 새에게 화살 쏘기
        Sleep 500
        Send "{p up}"
        Sleep 3000    ; 화살이 맞을 때까지 대기

        Send "{q down}"  ; 새 타겟 해제
        Sleep 200
        Send "{q up}"
        Sleep 3000  ; 새가 절벽 밖으로 달려갈 때까지 대기

        Send "{l down}"  ; 절벽에서 시선을 돌리기 (시간 낭비)
        Sleep 700     ; 회전 시간
        Send "{l up}"

        Sleep 2300    ; 룬 수집 대기
    }
}

F2::
{
ExitApp
}
return
