INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (1, '3xx(클라이언트 오류) : 요청 완료를 위해 추가 작업 조치가 필요', '1xx(정보) : 요청을 받았으며 프로세스를 계속 진행/2xx(성공) : 요청을 성공적으로 받았으며 인식했고 수용/3xx(클라이언트 오류) : 요청 완료를 위해 추가 작업 조치가 필요/5xx(서버 오류) : 서버가 명백히 유효한 요청에 대한 충족을 실패', '다음 중 HTTP 상태코드와 응답 클래스가 올바르지 않은 것은?', '네트워크', 'HTTP 상태코드', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (2, '3계층 - 데이터 링크', '1계층 - 물리/3계층 - 데이터 링크/4계층 - 전송/5계층 - 세션', 'OSI 7계층이 잘못 짝지어진 것은??', '네트워크', 'OSI 7계층', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (3, 'UDP보다 빠른 속도', '연결지향 방식/높은 신뢰성/UDP보다 빠른 속도/흐름제어 및 혼잡제어', 'TCP의 특징이 아닌것은??', '네트워크', 'TCP', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (4, 'PSH', 'ACK/SYN/FIN/PSH', '3-way & 4-way - handshaking을 수행하기 위해 TCP 헤더에 표시한 플래그를 컨트롤 비트라고 한다. 이때, 사용하지 않는 플래그는 무엇인가??', '네트워크', '3way & 4way - handshaking ', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (5, 'Static', 'Code/Static/Heap/Stack', '다음 중 프로세스의 메모리 영역이 아닌 것은?', '네트워크', 'process memory영역', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (6, '버스 토폴로지', '트리 토폴로지/스타 토폴로지/버스 토폴로지/메시 토폴로지', '중앙 통신 회선 하나에 여러개의 노드가 연결되어 공유하는 네트워크 구성을 말하며 근거리 통신망(LAN)에 사용한다. 

설치 비용이 적고 신뢰성이 우수하며 중앙 통신 회선에 노드를 추가하거나 삭제하기 쉬운 네트워크 토폴로지는 무엇인가??
', '네트워크', '네트워크 토폴로지', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (7, 'MAN', 'LAN/MAN/WAN/CAN', '이것은 대도시 지역 네트워크를 나타내며, 전송속도는 평균이고, 도시 같은 넓은 지역에서 운영된다. DQDB ( Distributed Queue Dual Bus ) 라고 불리우는 토폴로지 기법을 규정 하고 있는 해당 네트워크는 무엇인가??', '네트워크', '네트워크 분류', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (8, '1. 클라이언트가 서버로 연결을 종료하겠다는 ACK 플래그 전달', '1. 클라이언트가 서버로 연결을 종료하겠다는 ACK 플래그 전달/2. 서버는 클라이언트에게 ACK 플래그를 보내고 자신의 통신이 끝날때까지 대기/3. 서버가 통신이 끝나면 클라이언트로 FIN 플래그 전달/4. 클라이언트는 확인했다는 의미로 ACK 플래그 전달', '서버에서 정상적으로 HTTP Request를 받고 응답을 돌려보내고, HTTP 요청과 응답이 끝나면 연결을 종료해야한다. 보기의 4-way-handshaking과정이 맞지 않은 것은?', '네트워크', '4-way-handshaking', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (9, '데이터링크 계층 - 리피터', '애플리케이션계층 - L7 스위치/인터넷 계층 - 라우터/데이터링크 계층 - 리피터/물리계층 - AP', '네트워크 기기는 계층별로 처리 범위를 나눌 수 있다. 상위 계층을 처리하는 기기는 하위계층을 처리할 수 없는데, 이 네트워크 기기가 계층별로 바르게 짝지어지지 않은것은??', '네트워크', '네트워크 기기', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (10, 'netstat', 'ping/nslookup/netstat/tracert', '접속되어 있는 서비스들의 네트워크 상태를 표시하는데 사용되며, 네트워크 접속, 라우팅테이블, 네트워크 프로토콜 등 리스트를 보여주어 주로 서비스의 포트가 열려있는지 확인할때 사용하는 명령어는 무엇인가??', '네트워크', '네트워크 성능 분석 명령어', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (11, 'PDU', 'PCB/PDU/PRE/PUR', '네트워크의 어떠한 계층에서 계층으로 데이터가 전달될 때 한 덩어리의 단위를 말하며, 제어 관련 정보들이 포함된 ''헤더'', 데이터를 의미하는 ''페이로드''로 구성되어 있으며 계층마다 부르는 명칭이 다른 이것은 무엇인가??', '네트워크', '네트워크 계층', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (12, 'ARP', 'ARP/Gateway/DHCP/AP', 'IP 주소로부터 MAC 주소를 구하는 IP와 MAC 주소의 다리 역할을 하는 프로토콜은 무엇인가??', '네트워크', 'IP 주소변환', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (13, 'NAT', 'NAT/DHCP/RTT/TLS', '패킷이 라우팅 장치를 통해 전송되는 동안 패킷의 IP 주소정보를 수정하여 IP 주소를 다른 주소로 매핑하는 방법이다.

IPv4 주소 체계만으로는 많은 주소들을 감당하지 못하는 단점이 있는데, 이를 해결하기 위해 이것을 사용하여 공인 IP와 사설 IP로 나눠서 많은 주소를 처리하는데, 이것은 무엇인가?', '네트워크', 'IP 주소체계', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (14, '전송계층 - 비트', '어플리케이션 계층 - 메시지/인터넷 계층 - 패킷/전송계층 - 비트/데이터링크 계층-프레임', '각 계층에서 부르는 PDU로 잘못 짝지어진 것은?', '네트워크', 'PDU', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (15, 'DHCP', 'DHCP/NAT/RTT/ARP', 'IP 주소 및 기타 통신 매개변수를 자동으로 할당하기 위한 네트워크 관리 프로토콜로, 이 기술을 통해 네트워크 장치의 IP주소를 수동으로 설정할 필요없이 인터넷에 접속할 때마다 자동으로 IP주소를 할당할 수 있다. 이것은 무엇인가??', '네트워크', '네트워크 관리 프로토콜', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (16, 'SHA-256', 'SHA-224/SHA-256/SHA-384/SHA-512', '해싱을 해야할 메시지에 1을 추가하는 등 전처리를 하고 전처리된 메시지를 기반으로 해시를 반환하며, 비트코인을 비롯한 많은 블록체인 시스템에서 사용하는 해싱 알고리즘은 무엇인가?', '네트워크', '해싱 알고리즘', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (17, '연결지향', '비연결성/비신뢰성/프로그램 구분/연결지향', '다음 중 IP 프로토콜의 한계로 옳지 않은 것은?', '네트워크', 'IP 프로토콜', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (21, '캐시', '연산 장치/제어 장치/레지스터/캐시', '다음 중 CPU의 구성요소로 옳지 않은 것은?', '컴퓨터구조', 'CPU', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (22, 'PC(프로그램 카운터) : 연산 결과 임시 저장', 'MAR(메모리 주소 레지스터) : 읽기와 쓰기 연산을 수행할 주기억장치 주소 저장/IR(명령어 레지스터) : 현재 실행 중인 명령어 저장/MBR(메모리 버퍼 레지스터) : 주기억장치에서 읽어온 데이터 or 저장할 데이터 임시 저장/PC(프로그램 카운터) : 연산 결과 임시 저장', '다음 중 레지스터의 역할이 옳지 않은 것은?', '컴퓨터구조', '레지스터', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (23, '펌웨어', 'CPU/주기억장치/펌웨어/입출력장치', '다음 중 컴퓨터의 하드웨어로 옳지 않은 것은?', '컴퓨터구조', '하드웨어', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (24, '4비트가 모여 1바이트를 구성한다.', '컴퓨터 내부 정보 저장의 기본단위는 비트이다./4비트가 모여 1바이트를 구성한다./여러개의 바이트를 뭉친 단위를 워드라고한다./반 워드(Half-Ward)는 2바이트이다.', '다음 중 컴퓨터의 정보표현 단위에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', '정보표현 단위', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (25, '2진법의 8진법 변화는 오른쪽부터 2비트씩 바꾼다', '2진법은 0과 1 두 심볼을 사용해 수를 표현하는 방법이다/2진법의 8진법 변화는 오른쪽부터 2비트씩 바꾼다/2진법의 16진법 변화는 오른쪽부터 4비트씩 바꾼다/2진법은 자릿수가 많고, 직관적이지 않다', '다음 중 2진법(Binary Numeral System)에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', '2진법', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (26, 'MSB가 1이면 양수이다', '해당 수에 NOT 연산 후 1을 더한다/0이 1개이다/MSB가 1이면 양수이다/양수보다 음수가 1가지 더 많은 숫자를 표현한다', '다음 중 2의 보수표현에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', '보수 표현', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (27, '부동소수점을 정규형으로 표현한 모든 2진수의 정수는 0이고, 이를 숨긴 것을 히든비트라고 한다', '고정 소수점 표현은 연산속도가 빠르지만, 제한된 부분에만 사용할 수 있다/절댓값이 아주 큰 숫자일때 고정 소수점은 사용하지 않는다/부동 소수점은 표현범위를 넘으면 오버플로가 발생한다/부동소수점을 정규형으로 표현한 모든 2진수의 정수는 0이고, 이를 숨긴 것을 히든비트라고 한다', '실수의 표현방법으로는 고정 소수점 표현(fixed-point representation)과 부동 소수점 표현(floating-point representation)이 있다.

다음 중 설명으로 옳지 않은 것은?', '컴퓨터구조', '실수의 표현', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (28, 'a의 아스키코드는 65이다', '아스키코드는 알파벳에 기초를 둔 문자 인코딩 방법이다/0에서 127까지의 숫자를 이용하여 문자를 표현한다/a의 아스키코드는 65이다/문자 1의 아스키코드값은 49이다', '다음 중 아스키코드(ASCII Code)에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', '아스키 코드', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (29, '기계어와 유사하지만 조금 더 읽기 편한 형태의 언어는 고급 프로그래밍 언어이다', '컴파일은 고급 프로그래밍 언어로 작성한 프로그램을 기계어로 변환하는 과정이다/컴파일러는 컴파일 해주는 프로그램을 말한다/기계어와 유사하지만 조금 더 읽기 편한 형태의 언어는 고급 프로그래밍 언어이다/고급 프로그래밍 언어를 이용해서 작성한 프로그램을 소스 프로그램이라고 한다', '다음 중 프로그래밍에 관한 설명으로 옳지 않은 것은?', '컴퓨터구조', '프로그래밍', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (30, 'CPU와 주 기억장치,입출력장치를 연결하는 버스를 내부버스라고 한다', '버스는 CPU,주 기억장치, 외부 입출력장치 사이의 정보를 전송하는 전기적 통로이다/CPU가 사용하려는 데이터의 주소가 이동하는 경로를 주소 버스라고한다/CPU와 주 기억장치,입출력장치를 연결하는 버스를 내부버스라고 한다/인터럽트는 제어버스의 제어 신호 중 하나이다', '다음 중 버스(BUS)에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', '버스', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (31, '정적(Static) RAM은 DRAM보다 빠르고 비싸다', '전원을 차단해도 저장된 내용이 지워지지 않는 비휘발성 메모리이다/DRAM은 플립플롭으로 구성한다/정적(Static) RAM은 DRAM보다 빠르고 비싸다/동적(Dynamic) RAM은 캐시메모리로 사용된다', '다음 중 RAM에 대한 설명으로 옳은 것은?', '컴퓨터구조', 'RAM', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (32, '자외선을 이용해 프로그램이 할 수 있는 PROM이 있다', '전원을 차단해도 저장된 내용이 지워지지 않는 비휘발성 메모리이다/SSD는 플래시 메모리를 이용한 디스크이다/플래시메모리는 읽는 속도가 빠르고 하드디스크보다 충격에 강하다/자외선을 이용해 프로그램이 할 수 있는 PROM이 있다', '다음 중 ROM에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', 'ROM', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (33, '읽기보다 쓰기가 더 빠르다', '플래시 메모리를 이용한 보조 기억장치이다/하드 디스크보다 빠르고,크기가 작다/읽기보다 쓰기가 더 빠르다/읽기와 쓰기 횟수가 한정적이다', '다음 중 SSD(Solid State Disk)에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', 'SSD', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (34, 'Write-through방식은 블록을 교체할 때 캐시의 상태를 확인하고, 필요시 주 기억장치에 갱신한다', 'CPU와 메인메모리 사이의 속도차이를 줄이기 위한 메모리이다/Write-through방식은 블록을 교체할 때 캐시의 상태를 확인하고, 필요시 주 기억장치에 갱신한다/FIFO 방식은 캐시에 적재된 가장 오래된 블록을 교체하는 방식이다/행 우선방식 코드가 열 우선방식보다 빠르다', '캐시메모리는 한번 사용한 정보는 시간적으로 다시 사용될 가능성이 높다는 시간적 지역성과 근처 영역이 다시 사용될 가능성이 높다는 공간적 지역성의 2가지 지역성의 원칙(principle of locality)을 활용한 아이디어이다.

다음 중 캐시 메모리(Cache Memory)에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', '캐시 메모리', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (35, '소프트웨어 방식은 인터럽트를 조사하는 비용이 들어 반응 시간이 느리다', 'CPU가 특정 기능을 수행하는 도중에 급하게 다른일을 처리할때 사용하는 기능이다/외부 인터럽트는 입출력장치같은 외부적인 요인에 의해 발생한다/우선순위 결정 방식으로 소프트웨어 방식과 하드웨어 방식이 있다/소프트웨어 방식은 인터럽트를 조사하는 비용이 들어 반응 시간이 느리다', '다음 중 인터럽트에 대한 설명으로 옳지 않은 것은?', '컴퓨터구조', '인터럽트', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (36, '컴퓨터와 외부장비를 연결하는 통로 역할', '인터페이스/데이터 버퍼링/CPU로부터 명령을 받아 입출력장치 조절/컴퓨터와 외부장비를 연결하는 통로 역할', '다음 중 입출력 제어기의 역할로 옳지 않은 것은?', '컴퓨터구조', '입출력 제어기', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (37, '캐시', 'SSD/RAID/자기 디스크/캐시', '다음 중 보조 기억장치로 옳지 않은 것은?', '컴퓨터구조', '보조 기억장치', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (41, '개념스키마', '외부스키마/개념스키마/내부스키마/논리스키마', '아래에서 설명하는 스키마 구조로 가장 적절한 것은??

- 모든 사용자 관점을 통합한 조직 전체 관점의 통합적 표현
- 모든 응용시스템들이나 사용자들이 필요로 하는 데이터를 통합한 조직 전체의 DB를 기술한 것으로 DB에 저장되는 데이터와 그들간의 관계를 표현하는 스키마', '데이터베이스', '스키마구조', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (42, '기본 엔터터(키엔터티)', '기본 엔터터(키엔터티)/중심 엔터티(메인엔터티)/행위 엔터티/개념 엔터티', '다른 엔티티로부터 주식별자를 상속받지 않고 자신의 고유한 주식별자를 가지며 사원,부서,고객,상품, 자재 등이 예가 될 수 있는 엔터티로 가장 적절한 것은?', '데이터베이스', '엔터티 ', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (43, '파생속성', '파생속성/기본속성/설계속성/PK속성', '데이터를 조회할 때 빠른 성능을 낼 수 있도록 하기 위해 원래 속성의 값을 계산하여 저장할 수 있도록 만든 속성으로 가장 적절한 것은?', '데이터베이스', '속성', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (44, '관계차수', '관계명/관계차수/관계선택사양/관계정의', '엔터티 간의 관계에서 1:1, 1:M과 같이 관계의 기수성을 나타내는 것으로 가장 적절한 것은?', '데이터베이스', '관계의 기수성', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (45, 'REVOKE', 'INSERT/RENAME/COMMIT/REVOKE', '다음 중 데이터 제어어(DCL)에 해당하는 명령어는?', '데이터베이스', 'DCL', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (46, '공백문자 혹은 숫자 0을 의미한다', '모르는 값을 의미한다/값의 부재를 의미한다/공백문자 혹은 숫자 0을 의미한다/NULL과의 모든 비교는 알수 없음을 반환한다', '다음 중 NULL의 설명으로 가장 부적절한 것은?', '데이터베이스', 'NULL의 설명', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (47, 'EMP_10', 'EMP_10/100-EMP/EMP-100/100_EMP', '다음 중 물리적 테이블 명으로 가장 적절한 것은?', '데이터베이스', '물리적 테이블명', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (48, '고유키로 지정된 모든 컬럼들은 Null값을 가질 수 없다', 'Check 제약조건은 데이터베이스에서 데이터의 무결성을 유지하기 위하여 테이블의 특정 컬럼에 설정하는 제약이다/기본키는 반드시 테이블 당 하나의 제약만을 정의할 수 있다/고유키로 지정된 모든 컬럼들은 Null값을 가질 수 없다/외래키는 테이블간의 관계를 정의하기 위해 기본키를 다른 테이블의 외래키가 참조하도록 생성된다', '다음 중 데이터베이스 테이블의 제약조건(Constraint)에 대한 설명으로 가장 부적절한 것은?', '데이터베이스', '테이블의 제약조건', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (49, 'DELETE FROM STADIUM;', 'DELETE FROM STADIUM;/DELETE * FROM STADIUM;/TRUNCATE TABLE STADIUM;/DROP TABLE STADIUM;', '개발 프로젝트의 표준은 모든 삭제 데이터에 대한 로그를 남기는 것을 원칙으로 하고, 테이블 삭제의 경우는 허가된 인력만이 정기적으로 수행 가능하도록 정하고 있다. 개발팀에서 사용 용도가 없다고 판단한 STADIUM 테이블의 데이터를 삭제하는 가장 좋은 방법은 무엇인가?', '데이터베이스', 'DELETE 로그남기기', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (50, 'FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY', 'SELECT - FROM - WHERE - GROUP BY - HAVING - ORDER BY/FROM - SELECT - WHERE - GROUP BY - HAVING - ORDER BY/FROM - WHERE - GROUP BY - HAVING - ORDER BY - SELECT/FROM - WHERE - GROUP BY - HAVING - SELECT - ORDER BY', 'SELECT 문장의 실행 순서를 올바르게 나열한 것은?', '데이터베이스', 'SELECT 실행순서', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (51, '4개', '2개/3개/4개/5개', '다음 중 5개의 테이블로부터 필요한 칼럼을 조회하려고 할 때, 최소 몇개의 JOIN 조건이 필요한가?', '데이터베이스', '최소 JOIN 조건', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (52, 'UPDATE', 'SELECT/UPDATE/JOIN/DIVIDE', '순수 관계 연산자에 해당하지 않는 것은?', '데이터베이스', '순서 관계 연산자', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (53, 'INTERSECT', 'UNION/INTERSECT/MINUS/EXCEPT', 'SET OPERATOR 중에서 수학의 교집합과 같은 기능을 하는 연산자로 가장 적절한 것은?', '데이터베이스', 'SET OPERATOR', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (54, '윈도우 함수 처리로 인해 결과 건수가 줄어든다', 'Partition과 Group By 구문은 의미적으로 유사하다/Partition 구문이 없으면 전체 집합을 하나의 Partition으로 정의한 것과 동일하다/윈도우 함수 처리로 인해 결과 건수가 줄어든다/윈도우 함수 적용 범위는 Partition을 넘을 수 없다.', '다음 중 윈도우 함수(Window Function, Analytic Function)에 대한 설명으로 가장 부적절한 것은?', '데이터베이스', '윈도우 함수', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (55, 'Trigger는 TCL을 이용하여 트랜잭션을 제어할 수 없다', 'Trigger는 데이터베이스에 의해서 자동으로 호출되고 수행된다/Trigger는 특정 테이블에 대해서 INSERT,UPDATE,DELETE 문이 수행 되었을때 호출하도록 정의할 수 있다/Trigger는 TCL을 이용하여 트랜잭션을 제어할 수 없다/Trigger는 데이터베이스에 로그인하는 작업에도 정의할 수 있다', '다음 중 Trigger(트리거)에 대한 설명으로 부적절한 것은?', '데이터베이스', 'Trigger', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (56, 'PL,SQL로 작성된 Procedure, User Defined Function 은 전체가 하나의 트랜잭션으로 처리되어야 한다', '변수와 상수 등을 사용하여 일반 SQL 문장을 실행할때 WHERE절의 조건 등으로 대입할 수 있다/Procedure, User Defined Function,Trigger 객체를 PL,SQL로 작성할 수 있다/PL,SQL로 작성된 Procedure, User Defined Function 은 전체가 하나의 트랜잭션으로 처리되어야 한다/ Procedure 내부에 작성된 절차적 코드는 PL,SQL 엔진이 처리하고 일반적인 SQL 문장은 SQL 실행기가 처리한다', '다음 중 PL/SQL에 대한 설명으로 가장 부적절한 것은?', '데이터베이스', 'PL & SQL', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (57, '기본 인덱스에 널값들이 들어갈 수 없다', '기본 인덱스(Primary Key Index)에 중복된 키 값들이 나타날 수 있다/기본 인덱스에 널값들이 들어갈 수 없다/보조 인덱스에는 고유한 키 값들만 나타날 수 있다/자주 변경되는 속성은 인덱스를 정의할 좋은 호수이다', '관계형 데이터베이스의 인덱스(Index)에 대한 설명으로 가장 적절한 것은?', '데이터베이스', '인덱스', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (58, '조인 조건의 인덱스의 유무에 영향 받지 않는다', '조인 칼럼에 적당한 인덱스가 없어서 NL 조인가 비효율적일 때 사용할 수 있다/Driving Table의 개념이 중요하지 않은 조인 방식이다/조인 조건의 인덱스의 유무에 영향 받지 않는다/EQUI(=) 조인 조건에서만 동작한다', '다음 중 SMU(Sort Merge Join)에 대한 설명으로 가장 부적절한 것은?', '데이터베이스', 'SMU', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (61, '데이터나 상태 명령어 기록', 'CPU 스케줄링과 프로세스 관리/메모리 관리/디스크 파일관리/데이터나 상태 명령어 기록', '다음 중 운영체제의 역할이 아닌 것은?', '운영체제', '운영체제의 역할', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (62, '하드웨어', '커널/시스템콜/드라이버/하드웨어', '다음 중 운영체제의 구조가 아닌 것은?', '운영체제', '운영체제의 구조', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (63, '시스템콜', '드라이버/커널/시스템콜/GUI', '운영체제가 커널에 접근하기 위한 인터페이스이며, 유저 프로그램이 운영체제의 서비스를 받기 위해 커널 함수를 호출할때 사용하는 이것은 무엇인가??', '운영체제', '운영체제의 구조2', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (64, '메모리보다 연산속도가 느리다.', 'CPU 안에 있는 매우 빠른 임시 기억장치이다./CPU와 직접 연결되어 있다./메모리보다 연산속도가 느리다./CPU는 자체적으로 데이터를 저장할 방법이 없기 때문에 레지스터를 거쳐 데이터를 전달해야한다.', '다음 중 레지스터에 대한 설명으로 옳지 않은 것은?', '운영체제', '레지스터', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (65, '컨트롤러', '캐시/주기억장치/보조기억장치/컨트롤러', 'CPU는 그저 메모리에 올라와있는 프로그램의 명령어들을 실행한다. 이 메모리 계층의 구성으로 옳지 않은것은?', '운영체제', '메모리 계층', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (66, '캐시', '레지스터/주기억장치/캐시/보조기억장치', '다음 설명에 해당하는 메모리 계층의 구성요소로 옳은 것은?

데이터를 미리 복사해 놓는 임시 저장소이자 빠른 장치와 느린 장치에서 속도 차이에 따른 병목 현상을 줄이기 위한 메모리를 말한다.
이를 통해 데이터를 접근하는 시간이 오래 걸리는 경우를 해결 하고 무언가를 다시 계산하는 시간을 절약할 수 있다.', '운영체제', '메모리 계층2', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (67, '캐시미스의 경우 시스템 버스를 기반으로 작동해서 빠르다.', '캐시히트를 하게 되면 해당 데이터를 제어장치를 거쳐 가져오게 된다./캐시히트의 경우 위치도 가깝고 CPU 내부 버스를 기반으로 작동해서 빠르다./캐시미스가 발생되면 해당 데이터를 메모리에서 가져온다./캐시미스의 경우 시스템 버스를 기반으로 작동해서 빠르다.', '캐시에서 원하는 데이터를 찾는 것을 ''캐시히트''라고 하며, 해당 데이터가 없다면, 주 메모리로 가서 데이터를 찾아오는 것을 ''캐시미스''라고 한다. 다음 중 옳지 않은 것은?', '운영체제', '캐시히트 & 캐시미스', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (68, '연관 매핑은 순서를 일치시켜서 관련있는 캐시와 메모리를 매핑한다.', '직접 매핑은 처리가 빠르지만 충돌 발생이 잦다./연관 매핑은 순서를 일치시켜서 관련있는 캐시와 메모리를 매핑한다./연관 매핑은 충돌이 적지만 모든 블록을 탐색해야해서 속도가 느리다./집합 연관 매핑은 직접 매핑과 연관 매핑을 합쳐놓은 것 이다.', '캐시매핑이란 캐시가 히트되기 위해 매핑하는 방법을 말하며 CPU의 레지스터와 주 메모리(RAM)간에 데이터를 주고받을 때를 기반으로 설명한다. 캐시매핑의 설명으로 옳지 않은 것은?', '운영체제', '캐시 매핑', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (69, '스와핑(swapping)', '페이지 폴트(page falut)/스와핑(swapping)/스레싱(thrashing)세그멘테이션(segmentation)', '가상 메모리에는 존재하지만 실제 메모리인 RAM에는 현재 없는 데이터나 코드에 접근할 경우 페이지 폴트가 발생한다. 이를 방지하기 위해 당장 사용하지 않는 영역을 하드디스크로 옮겨 필요할 때 다시 RAM으로 불러와 올리고, 사용하지 않으면 다시 하드디스크로 내림을 반복하여 RAM을 효과적으로 관리하는 것은 무엇인가?
', '운영체제', '메모리 관리', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (70, '힙은 정적 할당할 때 사용된다.', '스택에는 지역변수,매개변수,함수가 저장된다./힙은 정적 할당할 때 사용된다./코드영역은 수정 불가능한 기계어로 저장되어 있으며 정적인 특징을 가진다./데이터영역은 정적인 특징을 갖는 프로그램이 종료되면 사라지는 변수가 들어있는 영역이다.', '프로세스의 메모리 구조에 대한 설명으로 옳지 않은 것은?', '운영체제', '프로세스 메모리 구조', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (71, 'PCB', 'PCB/IPC/SJF/PFF', '프로세스에 대한 메타데이터를 저장한 데이터를 말한다.

프로그램이 실행되면 프로세스가 생성되고, 프로세스 주소 값들에 스택,힙등의 구조를 기반으로 메모리가 할당된다. 그리고 이 프로세스의 메타데이터들이 저장되어 관리되는 이것은 무엇인가??', '운영체제', '프로세스', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (72, '컨텍스트 스위칭', '멀티프로세싱/IPC(Inter Process Communication)/컨텍스트 스위칭/멀티 스레딩', 'PCB를 교환하는 과정으로, 한 프로세스에 할당된 시간이 끝나거나 인터럽트에 의해 발생한다. 컴퓨터는 많은 프로그램을 동시에 실행하는 것처럼 보이지만 어떠한 시점에서 실행되고 있는 프로세스는 한개이며, 많은 프로세스가 동시에 구동되는 것처럼 보이는 것은 다른 프로세스와의 ''이것''이 아주 빠르게 실행되기 때문이다.

이것은 무엇인가??', '운영체제', '프로세스2', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (73, '선점', '상호 배제/선점/점유 대기/환형 대기', '두 개 이상의 프로세스들이 서로가 가진 자원을 기다리며 중단된 상태를 교착상태(deadlcok)이라고 한다.

교착상태의 원인으로 옳지 않은것은?', '운영체제', '교착상태', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (74, 'FCFS', 'FCFS/SRF/다단계 큐/라운드 로빈', 'CPU의 스케줄링 알고리즘에서 선점형 방식으로 옳지 않은 것은?', '운영체제', 'CPU 스케줄링 알고리즘', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (75, 'Round Robin', 'SJF/FCFS/Round Robin/SRF', '현대 컴퓨터가 쓰는 스케줄링인 우선순위 스케줄링의 일종으로 각 프로세스는 동일한 할당 시간을 주고 그 시간 안에 끝나지 않으면 다시 준비 큐의 뒤로 가는 알고리즘으로 옳은 것은?', '운영체제', 'CPU 스케줄링2', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (76, '캐싱', '뮤텍스/모니터/세마포어/캐싱', '공유 자원에 접근할 때 순서 등의 이유로 결과가 달라지는 영역을 임계 영역(critical section)이라고 한다. 이러한 임계영역을 해결하기 위한 방법으로 옳지 않은 것은?', '운영체제', '임계 영역', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (77, '점유대기', '상호배제/점유대기/융통성/한정대기', '임계영역을 해결하기 위한 방법들이 공통적으로 만족하는 조건이 아닌 것은?', '운영체제', '임계 영역2', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (78, '0과 1의 두 가지 값만 가질 수 있는 세마포어를 카운팅 세마포어라고 한다.', '프로세스가 공유 자원에 접근하면 세마포어에서 wait작업을 수행한다./프로세스가 공유 자원을 해제하면 세마포어에서 signal작업을 수행한다./구현의 유사성으로 인해 뮤텍스는 바이너리 세마포어라고 할 수 있다./0과 1의 두 가지 값만 가질 수 있는 세마포어를 카운팅 세마포어라고 한다.', '뮤텍스(mutex)는 공유 자원을 사용하기 전에 설정하고 사용한 후에 해제하는 잠금이다. 세마포어(semaphore)는 일반화된 뮤텍스이다.

다음 중 뮤텍스와 세마포어에 대한 설명으로 옳지 않은 것은?', '운영체제', '뮤텍스 세마포어', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (79, '읽기만 가능하다.', '휘발성 메모리이다./주기억장치로 사용된다./속도가 빠르다./읽기만 가능하다.', '다음 중 RAM의 특징이 아닌 것은?', '운영체제', 'RAM', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (80, '공유되는 자원이 있기때문에 컨텍스트 스위칭이 일어날때 캐싱 적중률이 떨어진다.', '공유자원이 많아서 긴밀하게 연결되어 있어 동기화에 신경써야한다./공유자원으로 메모리가 효율적이고 통신비용도 절감된다./컨텍스트 스위칭 비용이 적다./공유되는 자원이 있기때문에 컨텍스트 스위칭이 일어날때 캐싱 적중률이 떨어진다.', '다음 중 스레드에 대한 설명으로 옳지 않은 것은?', '운영체제', '스레드', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (81, '증가 속도를 고려해 모든 항을 계산한다.', '문제를 해결하는데 걸리는 시간과 입력의 함수관계를 시간복잡도라고 한다./입력 범위 n을 기준으로 로직이 몇 번 반복되는지 나타내는 것이다./가장 영향이 큰 항의 상수 인자를 뺀다./증가 속도를 고려해 모든 항을 계산한다.', '다음 중 빅오 표기법에 대한 설명으로 옳지 않은 것은?', '자료구조', '빅오 표기법', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (82, '논리적 저장 순서와 물리적 저장 순서가 다르다.', '찾고자 하는 원소의 인덱스 값을 알고 있으면 O(1)에 해당 원소로 접근할 수 있다./삽입,삭제의 경우 최악의 경우 O(n)의 시간복잡도를 가진다./논리적 저장 순서와 물리적 저장 순서가 다르다.', '다음 중 배열에 대한 설명으로 옳지 않은 것은?', '자료구조', '배열', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (83, 'O(1),O(n)', 'O(1),O(1)/O(1),O(n)/O(n),O(1)/O(n),O(n)', '다음 중 링크드 리스트(Linked List)의 삽입 연산시 평균, 최악의 시간복잡도로 옳은 것은?', '자료구조', '링크드 리스트', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (84, '배열은 랜덤접근이 불가능하다.', '연결리스트는 랜덤접근이 불가능하다./데이터 추가삭제는 연결리스트가 배열보다 빠르다./배열은 랜덤접근이 불가능하다./배열은 중복을 허용하고 순서가 있다.', '다음 중 배열과 연결리스트에 대한 설명으로 옳지 않은 것은?', '자료구조', '배열과 연결리스트', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (85, '벡터는 정적으로 요소를 할당할 수 있는 정적 배열이다.', '벡터는 정적으로 요소를 할당할 수 있는 정적 배열이다./중복을 허용하고 순서가 있다./랜덤 접근이 가능하다./맨 뒤의 요소를 삽입하는데 O(1)이 걸린다.', '다음 중 벡터에 대한 설명으로 옳지 않은 것은?', '자료구조', '벡터', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (86, '스택은 프로세스,스레드 행렬 또는 네트워크 접속을 기다리는 행렬등에 사용된다.', '스택은 쌓이는 구조로 LIFO 성질을 가진다./큐의 삽입 삭제는 O(1)의 시간이 걸린다./스택은 프로세스,스레드 행렬 또는 네트워크 접속을 기다리는 행렬등에 사용된다./큐는 스택과 반대되는 개념을 가진다.', '다음 중 스택과 큐에 대한 설명으로 옳지 않은 것은?', '자료구조', '스택과 큐', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (87, '스택(Stack)', '트리(Tree)/힙(Heap)/스택(Stack)/맵(Map)', '다음 중 비선형 자료구조가 아닌 것은?', '자료구조', '비선형 자료구조', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (88, 'CT(Christmas Tree)', '이진 트리(Binary Tree)/이진 탐색 트리(BST)/CT(Christmas Tree)/레드 블랙 트리(Red-Black-Tree)', '다음 중 트리의 종류가 아닌 것은?', '자료구조', '트리', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (89, '가장 위에있는 노드를 리프노드라고 한다.', '부모,자식의 계층 구조를 가진다./트리의 간선수는 노드수-1 이다./두 노드 사이의 경로는 반드시 존재한다./가장 위에있는 노드를 리프노드라고 한다.', '다음 중 트리의 특징으로 옳지 않은 것은?', '자료구조', '트리2', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (90, '모든 노드가 꽉 차있는 이진트리를 완전 이진 트리(complete binary tree)라고 한다.', '이진트리는 자식의 노드 수가 두개 이하인 트리를 말한다./자식 노드가 0 또는 두개인 이진트리를 정이진 트리(full binary tree)라고 한다./모든 노드가 꽉 차있는 이진트리를 완전 이진 트리(complete binary tree)라고 한다./왼쪽과 오른쪽 노드의 높이차이가 1이하인 이진트리를 균형 이진 트리(balanced binary tree)라고 한다.', '다음 중 이진트리에 대한 설명으로 옳지 않은 것은?', '자료구조', '이진 트리', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (91, '항상 비선형트리이다.', '오른쪽 하위 트리에는 노드값보다 큰 값만 포함한다./탐색시 최악의 경우 O(n)이 걸린다./항상 비선형트리이다./일반 이진트리에 비해 탐색이 용이하다.', '다음 중 이진 탐색 트리에 대한 설명으로 옳지 않은 것은?', '자료구조', '이진 탐색 트리', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (92, '탐색의 시간복잡도는 O(1)이다.', '균형 이진 탐색 트리이므로 BST의 특징을 모두 갖는다./루트노드부터 리프노드까지 모든 경로 중 최소경로와 최대경로의 크기비율은 2보다 크지않다./노드의 child가 없을 경우 child를 가르키는 포인터는 NIL값을 저장한다./탐색의 시간복잡도는 O(1)이다.', '다음 중 레드블랙 트리(Red-Black Tree)에 대한 설명으로 옳지 않은 것은?', '자료구조', 'Red Black Tree', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (93, '최대힙의 루트 노드에 있는 키는 모든 자식에 있는 키 중에서 가장 작아야한다.', '완전 이진트리 기반의 자료구조이다./최대힙의 루트 노드에 있는 키는 모든 자식에 있는 키 중에서 가장 작아야한다./최소힙은 각 노드의 자식 노드와의 관계도 재귀적이다./새로운 요소가 들어오면 비교하면서 힙의 성질을 만족시킨다.', '다음 중 힙에 대한 설명으로 옳지 않은 것은?', '자료구조', '힙', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (94, '삽입하면 자동으로 정렬되지는 않는다.', '맵은 키와 매핑된 값의 조합으로 형성된 자료구조이다./레드 블랙 트리 자료구조를 기반으로 형성된다./삽입하면 자동으로 정렬되지는 않는다./erase()로 해당 키와 매핑된 값을 지울 수 있다.', '다음 중 맵에 대한 설명으로 옳지않은 것은?', '자료구조', '맵', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (95, '탐색시 평균 O(n)의 시간복잡도를 가진다.', '무한에 가까운 데이터들을 유한한 개수의 해시값으로 매핑한 테이블이다./탐색시 평균 O(n)의 시간복잡도를 가진다./동일한 key 값에 복수 개의 데이터가 하나의 테이블에 존재할 수 있게 되는 것을 Collision이라고 한다.', '다음 중 해시 테이블에 대한 설명으로 옳지않은 것은?', '자료구조', '해시 테이블', 'CS');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (101, '1', '1/2/3/4', '문제', '알고리즘', '알고1', 'ALGORITHM');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (121, 'FOJO', 'IoC/DI/AOP/FOJO', '다음 중 스프링의 특징으로 옳지 않은 것은?', 'Spring', '스프링', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (122, 'DTO는 프로젝트와 데이터베이스를 연결한다', 'Model-View-Controller로 구성되어있다/Controller는 View와 Service사이를 연결한다/Service는 실제 로직을 처리하는 곳이다/DTO는 프로젝트와 데이터베이스를 연결한다', '다음 중 스프링 MVC 구조에 대한 설명으로 옳지 않은 것은?', 'Spring', '스프링 MVC', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (123, '유지보수는 용이하지만 유연성이 낮아진다', '스프링이 다른 프레임워크와 차별화되어 제공하는 의존성 관계 주입 기능이다/객체를 직접 생성하지않고 외부에서 생성한 후 주입하는 방식이다/모듈간의 결합도가 낮아진다/유지보수는 용이하지만 유연성이 낮아진다', '다음 중 DI(의존성 주입)에 대한 설명으로 옳지 않은 것은?', 'Spring', 'DI', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (124, '객체의 의존성을 역전시켜 객체간의 결합도를 높인다', '메서드나 객체의 호출작업을 개발자가아닌 외부에서 결정하는 것을 말한다/객체의 의존성을 역전시켜 객체간의 결합도를 높인다/스프링이 실행될때 의존성 객체를 생성해 주입시켜 Bean들은 싱글턴 패턴의 특징을 가진다/가독성, 코드중복, 유지보수의 편리가 가능하게 한다', '다음 중 IoC(제어의 역전, Inversion of Control)에 대한 설명으로 옳지 않은 것은?', 'Spring', 'IoC', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (125, '버전이 맞지 않아 발생하는 오류는 방지하지 못한다', 'SpringBoot는 starter 라이브러리만 작성한다면 초기 셋팅에 필요한 라이브러리를 세팅해준다/SpringBoot는 톰캣 내장 서버가 존재하여 사용이 편리하다/starter 라이브러리를 통해 dependency에 존재하는 라이브러리의 버전관리를 자동으로 해준다/버전이 맞지 않아 발생하는 오류는 방지하지 못한다', '다음 중 Spring와 SpringBoot의 차이점에 대한 설명으로 옳지 않은 것은?', 'Spring', 'SpringBoot', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (126, '스프링 컨테이너는 정해진 형식의 설정 정보만 받을 수 있게 설계되어 있다', 'ApplicationContext를 스프링 컨테이너라고 한다/@Configuration 어노테이션이 붙은 클래스를 파라미터로 받아서 설정정보로 사용한다/Bean Factory의 기능을 모두 상속받아서 빈 관리가 가능하다/스프링 컨테이너는 정해진 형식의 설정 정보만 받을 수 있게 설계되어 있다', '다음 중 스프링 컨테이너에 대한 설명으로 옳지 않은 것은?', 'Spring', '스프링 컨테이너', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (127, '빈 이름은 항상 같은 이름을 부여해야한다', '@Bean 어노테이션으로 스프링 컨테이너에 등록된 객체를 말한다/@Bean이 붙은 메서드의 명을 스프링 빈의 이름으로 사용한다/빈 이름은 항상 같은 이름을 부여해야한다/스프링 컨테이너를 생성하고 빈을 등록한다', '다음 중 스프링 빈(Bean)에 대한 설명으로 옳지 않은 것은?', 'Spring', '빈(Bean)', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (128, '싱글톤 객체는 상태를 유지(stateful)하게 설계해야 한다', '싱글톤 객체는 상태를 유지(stateful)하게 설계해야 한다/스프링 컨테이너에 등록된 스프링 빈은 자동으로 싱글톤으로 동작한다/가급적 읽기만 가능해야 한다/특정 클라이언트에 의존적인 필드가 있으면 안된다', '다음 중 스프링 싱글톤에 대한 설명으로 옳지 않은 것은?', 'Spring', '싱글톤', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (129, '@Bean만 적용하면 스프링 빈으로 등록되고 싱글턴을 보장한다', '@Bean만 적용하면 스프링 빈으로 등록되고 싱글턴을 보장한다/@Configuration을 붙이면 CGLIB이라는 바이트코드 조작 라이브러리를 사용해서 만든 다른 클래스를 스프링 빈으로 등록한다/스프링 컨테이너는 싱글톤 레지스트리이므로 스프링 빈이 싱글턴이 되도록 보장해준다/바이트코드를 조작하는 CGLIB 기술을 사용해서 만든 클래스를 스프링 빈으로 등록하면서 싱글턴을 보장한다', '다음 중 스프링 싱글톤에 대한 설명으로 옳지 않은 것은?', 'Spring', '싱글톤2', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (130, '@PostConstruct - 스프링 컨테이너가 종료되기 직전에 소멸 콜백을 호출해준다', '@Controller - 스프링 MVC에서 어노테이션 기반 컨트롤러로 인식한다/@PostConstruct - 스프링 컨테이너가 종료되기 직전에 소멸 콜백을 호출해준다/@ControllerAdvice - 대상으로 지정한 여러 컨트롤러에 @ExceptionHandler, @InitBinder 기능을 부여해주는 역할을 한다/@Profile() - 특정 프로필의 경우에만 해당 스프링 빈을 등록한다', '다음 중 스프링 어노테이션과 그에 대한 설명으로 알맞지 않은 것은?', 'Spring', '어노테이션', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (131, '반영속', '영속/비영속/반영속/삭제', '다음 중 엔티티의 생명주기가 아닌 것은?', 'JPA', '엔티티 생명주기', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (132, '즉시 로딩', '1차 캐시/변경 감지/즉시 로딩/동일성 보장', '다음 중 영속성 컨텍스트의 이점이 아닌 것은?', 'JPA', '영속성 컨텍스트의 장점', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (133, 'domain.Member$HibernateProxy, domain.Member$HibernateProxy', 'domain.Member$HibernateProxy, domain.Member/domain.Member, domain.Member$HibernateProxy/domain.Member, domain.Member$HibernateProxy/domain.Member$HibernateProxy, domain.Member$HibernateProxy', '다음 중 Member Entity의 조회된 객체의 순서로 올바른 것은??
(refMember, findMember 순서)

```java
        Member refMember = em.getReference(Member.class, member.getId());
        System.out.println("refMember : " + refMember.getClass());

        Member findMember = em.find(Member.class, member.getId());
        System.out.println("findMember : " + findMember.getClass());
```', 'JPA', '프록시의 특징', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (134, 'atach(Entity) - 특정 엔티티 준영속상태 전환', 'clear-영속성 컨텍스트 초기화/atach(Entity) - 특정 엔티티 준영속상태 전환/close - 영속성 컨텍스트 종료/flush - 영속성 컨텍스트 변경내용 DB 반영', '다음 중 엔티티매니저의 영속성 컨텍스트 명령어로 틀린 것은?', 'JPA', '영속성 컨텍스트 명령어', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (135, 'EmptyResultDataAccessException', 'EmptyResultDataAccessException/LazyInitializationException/EntityExistsException/EntityNotFoundException', 'deleteById는 Spring Data CrudRepository interface의 구현체인 SimpleJpaRepository에 정의되어있다.

내부적으로 delete를 호출하고 있으며, 넘어온 id 값으로 findById를 사용하여 delete에 인자로 넘겨줄 엔티티를 조회하고 있다.

이때, findById로 조회한 데이터가 없을 경우 발생되는 예외는 무엇인가?', 'JPA', 'deleteById', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (136, 'SAVE - 영속', 'DETACH - 준영속/SAVE - 영속/REMOVE - 삭제/MERGE - 병합', '다음 중 CascadeType의 cascade타입으로 틀린 것은?', 'JPA', 'Cascade', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (137, 'update - 변경분만 반영되며 삭제내용도 반영된다', 'create - 기존 테이블 삭제 후 다시 생성한다/update - 변경분만 반영되며 삭제내용도 반영된다/validate - 엔티티와 테이블이 정상 매핑되었는지 확인한다/create-drop - create와 같지만 종료시점에 drop한다', 'DDL을 어플리케이션 실행 시점에 자동으로 생성해주는데, hibernate ddl.auto 옵션으로 옳지 않은 것은?', 'JPA', '스키마 자동 생성', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (138, 'IDENTITY - 기본키 생성을 개발자가 관리한다', 'IDENTITY - 기본키 생성을 개발자가 관리한다/SEQUENCE - 데이터베이스에 시퀀스 오브젝트를 사용한다/TABLE - 키 생성용 테이블을 사용한다/AUTO - 방언에 따라 자동으로 지정한다', '다음 중 기본키 매핑 자동생성 방법으로 옳지 않은 것은?', 'JPA', 'GeneratedValue', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (139, 'nullable을 true로 설정하면 DDL 생성시에 not null 제약조건을 설정한다', 'name으로 필드와 매핑할 테이블의 컬럼이름을 설정한다/nullable을 true로 설정하면 DDL 생성시에 not null 제약조건을 설정한다/unique로 해당 컬럼에 유니크 제약조건을 설정한다/length로 문자 길이 제약조건을 설정하며 String 타입에만 사용한다', '다음 중 @Column 매핑의 속성에 대한 설명으로 옳지 않은 것은?', 'JPA', 'Column 매핑', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (140, 'EnumType.STRING이 기본값이다', 'Enum타입을 매핑하는데 사용된다/ORDINAL은 enum의 순서를 데이터베이스에 저장한다/EnumType.STRING은 enum의 이름을 데이터에베이스에 저장한다/EnumType.STRING이 기본값이다', '다음 중 @Enumerated에 대한 설명으로 옳지 않은 것은?', 'JPA', 'Enumerated', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (141, '가상 돔은 UI 상태를 메모리에 유지하지 않고 변경된 부분만 반영해주는 기술이다', '리액트는 페이스북에서 개발하고 관리하는 UI 라이브러리이다/가상 돔을 통해서 UI를 빠르게 업데이트 한다/가상 돔은 UI 상태를 메모리에 유지하지 않고 변경된 부분만 반영해주는 기술이다/불필요한 업데이트를 줄여서 성능이 좋아진다', '다음 중 리액트에 대한 설명으로 옳지 않은 것은?', 'React', '리액트', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (142, 'CRA는 서버사이드 렌더링을 지원한다', 'CRA는 리액트 개발환경을 구축해주는 도구이다/CRA는 서버사이드 렌더링을 지원한다/초기 프로젝트 구축시 Next.js 프레임워크를 사용할 수 도 있다/서버사이드 렌더링이 필요없을때 CRA를 이용하는 것이 적합하다', '다음 중 CRA(create-react-app)에 대한 설명으로 옳지 않은 것은?', 'React', 'CRA', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (143, 'build - 배포할때 사용하는 명령어로 빌드 시 동적파일이 생성된다', 'build - 배포할때 사용하는 명령어로 빌드 시 동적파일이 생성된다/test - 테스트 실행 명령어이다/start - 개발모드로 실행할때 사용하며 http로 실행된다/eject - CRA를 기반으로 직접 개발환경을 구축하고 싶을 때 사용한다', '다음 중 스크립트 명령어의 설명으로 옳지 않은 것은?', 'React', 'script 명령어', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (144, '전환요청이 있으면 서버로 항상 요청을 보낸다', '클라이언트가 초기 요청을 보내면 서버가 html을 내려준다/전환요청이 있으면 서버로 항상 요청을 보낸다/페이지 전환은 자체적으로 라우팅 처리를 할 수 있다/자바스크립트에서 브라우저로 페이지 전환 요청을 보낼 수 있어야 한다', '다음 중 SPA(단일 페이지 어플리케이션)에 대한 설명으로 옳지 않은 것은?', 'React', 'SPA', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (145, 'polyfill', 'pushState/replaceState/popState/polyfill', '다음 중 SPA가 가능하기 위한 조건을 만족시켜주는 브라우저 API가 아닌 것은?', 'React', 'SPA2', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (146, '기존 상태를 직접 수정하여도 리렌더링이 일어난다', 'Hook을 이용해 함수형 컴포넌트에서 state를 관리할 수 있다/사용자 인터랙션에 따라 바뀌는 동적인 부분을 구현할때 state를 사용한다/불변성을 지켜주어야 컴포넌트에서 상태 업데이트를 감지할 수 있다/기존 상태를 직접 수정하여도 리렌더링이 일어난다', '다음 중 useState에 관한 설명으로 옳지 않은 것은?', 'React', 'useState', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (147, '함수형 컴포넌트 내부에서 컴포넌트가 렌더링될 때마다 값이 초기화된다', 'useRef로 관리하는 변수는 값이 바뀌어도 컴포넌트가 리렌더링 되지 않는다/설정 후 바로 조회할 수 있다/컴포넌트에서 특정 DOM 요소를 선택해야할 때 사용한다/함수형 컴포넌트 내부에서 컴포넌트가 렌더링될 때마다 값이 초기화된다', '다음 중 useRef에 관한 설명으로 옳지 않은 것은?', 'React', 'useRef', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (148, '언마운트시 주로 props로 받은 값을 컴포넌트의 로컬상태로 설정한다', '컴포넌트 마운트 시 수행할 작업을 설정할 수 있다/함수를 반환할 수 있는데 이 함수를 cleanup 함수라고한다/언마운트시 주로 props로 받은 값을 컴포넌트의 로컬상태로 설정한다/두번째 파라미터인 의존값 배열이 비어있는 경우 컴포넌트가 언마운트될 때 cleanup 함수가 호출된다', '다음 중 useEffect에 관한 설명으로 옳지 않은 것은?', 'React', 'useEffect', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (149, '훅은 일반적인 함수로 작성할 수 없다', '컴포넌트에 기능을 추가할 때 사용하는 함수이다/훅 이전에는 클래스형 컴포넌트를 사용했다/리액트가 제공하는 훅을 통해 커스텀 훅을 만들 수 있다/훅은 일반적인 함수로 작성할 수 없다', '다음 중 리액트 훅(Hook)의 설명으로 옳지 않은 것은?', 'React', 'Hook', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (150, 'Provider 컴포넌트의 value값이 변경되면 하위의 모든 Consumer 컴포넌트는 다시 렌더링 되지 않는다', '많은 수의 하위 컴포넌트로 전달할때 속성값을 내려줄때 효과적으로 전달할 수 있다/초기화 객체 내부에 Provider와 Consumer 컴포넌트가 있다/Provider 컴포넌트의 value값이 변경되면 하위의 모든 Consumer 컴포넌트는 다시 렌더링 되지 않는다/Root까지 올라갔는데 Provider를 찾지 못하면 기본값으로 설정한 unknown이 사용된다', '다음 중 Context API에 대한 설명으로 옳지 않은 것은?', 'React', 'Context API', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (151, '바뀐 데이터를 DOM에 다시 대입해줘야지 화면에 변경점이 적용된다', 'MVVM패턴 기반의 UI 라이브러리이다/바뀐 데이터를 DOM에 다시 대입해줘야지 화면에 변경점이 적용된다/양방향 데이터 바인딩과 가상돔 기반 렌더링 특징을 모두 가진다/비즈니스 로직에서는 ViewModel의 상태 데이터만 변경하면 즉시 View에 반영된다', '다음 중 Vue.js에 대한 설명으로 옳지 않은 것은?', 'Vue', 'Vue.js', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (152, 'updated - 데이터가 변경되고 나서 가상 돔으로 다시 화면을 그리고나면 실행되는 단계', 'beforeMount - 인스턴스가 생성되고 나서 가장 처음 실행되는 라이프 사이클/mounted - el 속성에 지정한 화면 요소(DOM)에 인스턴스를 부착하기 전에 호출되는 단계/updated - 데이터가 변경되고 나서 가상 돔으로 다시 화면을 그리고나면 실행되는 단계/beforeDestry - 뷰 인스턴스가 파괴되고 나서 호출되는 단계', '다음 중 뷰의 라이프 사이클(Life Cycle)에 대한 설명으로 옳은 것은?', 'Vue', '라이프사이클', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (153, 'methods - Vue에서 사용되는 정보저장', 'el - Vue가 적용될 요소 지정/template - 화면에 표시할 HTML,CSS등의 마크업 요소를 정의하는 속성/methods - Vue에서 사용되는 정보저장/created - 뷰 인스턴스가 생성되자마자 실행할 로직 정의', '다음 중 Vue의 속성으로 옳지 않은 것은?', 'Vue', 'Vue 속성', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (154, 'v-on은 조건에 따라 엘리먼트를 화면에 렌더링 한다', '표현식의 값이 변경될 때, 사이드 이펙트를 반응적으로 DOM에 적용한다/v-model은 양방향 바인딩 처리를 위해 사용한다/v-bind는 엘리먼트의 속성과 바인딩 처리기능을 하며, 약어로 ":"로 사용할 수 있다/v-on은 조건에 따라 엘리먼트를 화면에 렌더링 한다', '다음 중 디렉티브(Directive)로 옳지 않은 것은?', 'Vue', '디렉티브', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (155, '데이터가 변경되었을 경우, 다른 데이터를 변경하는 작업을 한다', '특정 데이터의 변경사항을 실시간으로 처리한다/데이터가 변경되었을 경우, 다른 데이터를 변경하는 작업을 한다/캐싱을 이용하여 데이터의 변경이 없을 경우 캐싱된 데이터를 반환한다/Vue에서 proxy 처리하여 property처럼 사용한다', '다음 중 Vue computed 속성에 대한 설명으로 옳지 않은 것은?', 'Vue', 'computed', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (156, 'Vue를 이용한 MPA를 제작할때 유용하다', 'Vue.js의 공식 라우터이다/라우터는 컴포넌트와 매핑된다/Vue를 이용한 MPA를 제작할때 유용하다/URL에 따라 컴포넌트를 연결하고 설정된 컴포넌트를 보여준다', '다음 중 Vue Router에 대한 설명으로 옳지 않은 것은?', 'Vue', 'Vue Router', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (157, '저장소의 state는 다중 상태트리를 사용한다', '어플리케이션의 모든 컴포넌트들의 중앙 저장소 역할을 한다/vuex를 이용하면 $emit과 props를 반복하지 않고도 데이터의 변화를 바로 처리할 수 있다/저장소의 state는 다중 상태트리를 사용한다/상위하위 관계가 복잡해지면 데이터 전달부분이 매우 복잡해진다', '다음 중 Vuex에 대한 설명으로 옳지 않은 것은?', 'Vue', 'Vuex', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (158, 'state : 어플리케이션마다 여러개의 저장소를 관리한다', 'state : 어플리케이션마다 여러개의 저장소를 관리한다/getters : vue instance의 computed같은 역할로 state를 기반으로 계산한다/mutations : state의 상태를 변경하는 유일한 방법이다/actions : 상태를 변이시키는 대신 액션으로 변이에 대한 커밋 처리', '다음 중 Vuex 저장소에 대한 설명으로 옳지 않은 것은?', 'Vue', 'Vuex 저장소', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (159, '공통된 프레임으로 안의 데이터를 공통 관리한다', '화면에서 반복되는 구간을 하나의 컴포넌트로 반든다/한 화면을 분할하여 각 부분을 컴포넌트로 만든다/공통된 프레임으로 안의 데이터를 공통 관리한다/코드의 재사용성이 높다', '다음 중 Vue의 Component에 대한 설명으로 옳지 않은 것은?', 'Vue', '컴포넌트', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (160, 'watch', 'watch/computed/filter/method', '특정 property가 변경될 때, 실행할 콜백함수를 설정하는 Vue Instance는 무엇인지 고르시오', 'Vue', 'Vue Instance', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (161, 'System.out.println("Hello World");', 'Console.WriteLine("Hello World");/System.out.println("Hello World");/echo("Hello World");/print("Hello World");', 'Java에서 "Hello World"를 출력하는 올바른 구문은 무엇입니까?', 'Java', 'Hello World!', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (162, 'String', 'var/char/String/Text', '문자열을 저장해야 하는 변수를 만드는 데 사용되는 데이터 유형은?', 'Java', '문자열 변수', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (163, 'int x = 5;', 'float x = 5;/x=5;/int x = 5;/num x = 5;', ' 숫자 값이 5인 변수를 생성하는 방법은?', 'Java', '올바른 타입1', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (164, 'float x = 2.8f;', 'float x = 2.8f;/byte x = 2.8f/x = 2.8f;/int x = 2.8f;', '숫자 2.8을 저장하는 변수를 생성하는 방법은?', 'Java', '올바른 타입2', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (165, 'length()', 'len()/getLength()/getSize()/length()', '문자열의 길이를 찾는 데 사용할 수 있는 함수는?', 'Java', '문자열의 길이', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (166, 'toUpperCase()', 'touppercase()/tuc()/toUpperCase()/upperCase()', '문자열을 대문자로 바꿔 반환하는 메소드는?', 'Java', '문자열 변환', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (167, '==', '==/<>/></=', '두 값을 비교하는 데 사용할 수 있는 연산자는?', 'Java', '비교연산자', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (168, '[]', '()/{}/[]', 'Java에서 배열로 선언할 때 사용되는 괄호는?', 'Java', '배열의 선언', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (169, 'MyClass myObj = new MyClass();', 'class myObj = new MyClass();/class MyClass = new myObj();/new myObj = MyClass();/MyClass myObj = new MyClass();', 'MyClass의 myObj라는 객체를 생성하는 올바른 방법은?', 'Java', '클래스 객체', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (170, 'Math.max(x,y)', 'Math.largest(x,y)/Math.max(x,y)/Math.maximum(x,y)/Math.maxNum(x,y)', 'x와 y 중 더 큰 값을 찾는 데 사용하는 함수는?', 'Java', 'Math 함수', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (171, 'import', 'lib/package/getlib/import', 'Java API 라이브러리에서 패키지를 가져오는 데 사용되는 키워드는?', 'Java', '패키지 추가 키워드', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (172, 'if(x > y)', 'if(x > y)/if x > y :/ if x > y then:', 'Java에서 if 문 작성을 시작하는 방법은?', 'Java', '조건문', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (173, 'while(x > y)', 'while x > y:/x > y while{/while(x > y)/while x > y {', 'Java에서 반복문을 시작하는 방법은?', 'Java', '반복문', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (174, 'return', 'return/get/void/break', '함수 내에서 값을 반환하는 데 사용되는 키워드는 무엇입니까?', 'Java', '반환 키워드', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (175, 'break', 'exit/break/stop/return', '반복문의 루프를 중지하는 데 사용되는 명령은?', 'Java', '반복문 중지', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (181, 'cout << "Hello World";', 'System.out.println("Hello World");/Console.WriteLine("Hello World");/print ("Hello World");/cout << "Hello World";', 'C++에서 "Hello World"를 출력하는 올바른 구문은?', 'C++', 'Hello World', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (182, 'False', 'True/False', 'C++은 C#의 별칭이다.', 'C++', 'C++ is C#?', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (183, 'string', 'myString/Txt/String/string', 'C++에서 문자열을 담기 위한 데이터 타입은?', 'C++', '문자열', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (184, 'int x = 5;', 'x = 5;/int x = 5;/ double x = 5;/num x = 5', '정수형 값 5를 담기 위해 선언해야 하는 문장은?', 'C++', '정수형', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (185, 'double x = 2.8;', 'x = 2.8;/double x = 2.8;/int x = 2.8;/byte x = 2.8;', 'C++에서 부동 소숫점 변수에 2.8을 담기 위한 문장은?', 'C++', '부동소숫점', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (186, 'length()', 'getSize()/length()/len()/getLength()', '다음 중, C++에서 문자열의 길이를 반환하는 함수는?', 'C++', '문자열의 길이', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (187, '+', '&/*/+/=', '두 값을 더하는 데 사용되는 연산자는?', 'C++', '연산자', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (188, 'False', 'True/False', '문자열의 변수의 값은 작은따옴표('')로 묶을 수 있다', 'C++', '문자열 처리', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (189, '#include <iostream>', '#include <iosstring>/#include <stream>/#include <iostream>/#include <inputstr>', '다음 중, 객체를 Input, Output 처리를 위해 필요한 헤더는?', 'C++', '헤더', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (190, '==', '<>/></==/=', '다음 중, 두 값의 비교를 위한 연산자는?', 'C++', '비교연산자', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (191, '[]', '{}/[]/()', '배열을 선언하기 위한 기호는?', 'C++', '배열', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (192, '0', '0/1/-1', 'C++에서 배열의 첫 인덱스는?', 'C++', '배열2', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (193, 'functionName();', 'functionName();/functionName[];/functionName;/(functionName);', 'C++에서 함수를 호출하기 위한 방법은?', 'C++', '함수의 호출', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (194, 'True', 'True/False', 'C++에서는 한 클래스에서 다른 클래스로 특성과 메서드를 상속할 수 있다.', 'C++', '상속', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (195, 'max(x,y)', 'max(x,y)/maximum(x,y)/largest(x,y)/maxNum(x,y)', '다음 중, x와 y 중 더 큰 값을 반환하는 함수는?', 'C++', '함수', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (201, 'print("Hello World")', 'print("Hello World")/echo("Hello World");/echo "Hello World"/p("Hello World")', '다음 중, Python에서 Hello World를 출력하는 방법은?', 'Python', 'Hello World', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (202, 'my-var', 'my-var/_myvar/my_var/Myvar', '다음 중, 올바른 변수 이름이 아닌 것은?', 'Python', '변수의 이름', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (203, '둘 다 옳다.', 'x = int(5)/x = 5/둘 다 옳다.', '다음 중, 옳은 문장은?', 'Python', '변수의 타입', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (204, '.py', '.pyt/.pyth/.py/.pt', '다음 중, Python 파일들의 올바른 확장자는?', 'Python', '확장자', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (205, '둘 다 옳다.', 'x = 2.8/x = float(2.8)/둘 다 옳다.', '다음 중, 소수의 선언을 위해 올바른 방식은?', 'Python', '변수의 타입', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (206, 'print(type(x))', 'print(typeof(x))/print(typeOf(x))/print(type(x))/print(typeof x)', '다음 중, 변수의 타입을 확인할 수 있는 함수는?', 'Python', '변수의 타입 확인', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (207, 'def myFunction():', 'def myFunction():/function myFunction():/create myFunction():', '문제 지문다음 중, 함수를 선언하는 방법은?', 'Python', '함수의 선언', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (208, 'x = "Hello"[0]', 'x = sub("Hello", 0 1)/x = "Hello".sub(0, 1)/x = "Hello"[0]', '다음 중, 스트링에서 첫글자를 가져오기 위한 방법으로 옳은 것은?', 'Python', '문자열의 처리', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (209, 'strip()', 'strip()/trim()/ptrim()/len()', '다음 중, 문자열의 시작과 끝에서 공백을 제거하는 데 사용할 수 있는 방법은?', 'Python', '문자열의 처리2', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (210, 'upper()', 'uppercase()/upper()/toUpperCase()/upperCase()', '다음 중, 문자열을 대문자로 반환하는 함수는?', 'Python', '문자열의 처리3', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (211, 'replace()', 'replaceString()/switch()/replace()/repl()', '다음 중, 문자열의 일부를 대체하는 데 사용할 수 있는 함수는?', 'Python', '문자열의 처리4', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (212, '==', '<>/></=/==', '다음 중, 두 변수를 비교하기 위한 연산자는?', 'Python', '비교연산자', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (213, '["apple", "banana", "cherry"]', '("apple", "banana", "cherry")/["apple", "banana", "cherry"]/{"apple", "banana", "cherry"}', '다음 중, 리스트를 선언하는 방법으로 옳은 것은?', 'Python', '리스트의 선언', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (214, '("apple", "banana", "cherry")', '{"apple", "banana", "cherry"}/["apple", "banana", "cherry"]/("apple", "banana", "cherry")', '다음 중, Tuple을 선언하는 방법으로 옳은 것은?', 'Python', 'Tuple의 선언', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (215, 'LIST', 'LIST/DICTIONARY/SET/TUPLE', '여러 컬렉션 중, 값을 정렬, 변경과 맴버의 중복을 허용하는 컬렉션은?', 'Python', 'Collection1', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (216, 'SET', 'TUPLE/SET/LIST', '다음 컬렉션 중 맴버의 중복을 허용하지 않는 것은?', 'Python', 'Collection2', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (217, 'if x > y:', 'if x > y then:/if x > y:/if (x > y)', 'Python에서 조건문을 사용하는 방법은?', 'Python', '조건문', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (218, 'while x > y:', 'x > y while{/while (x > y)/while x > y:/while x > y {', ' Python에서 반복문을 사용하는 방법은?', 'Python', '반복문 while', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (219, 'for x in y:', 'for x in y:/for each x in y:/for x > y:', '파이썬에서 반복문을 사용하는 방법은?', 'Python', '반복문 for', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (220, 'break', 'stop/return/break/exit', '다음 중, 반복문을 멈추게 하는 것은?', 'Python', '반복문 중지', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (221, '<script>', '<scripting>/<script>/<javascript>/<js>', 'JavaScript에서 HTML 요소는 어느 곳에 추가하는가?', 'Javascript', 'HTML Element', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (222, 'document.getElementById("demo").innerHTML = "Hello World!";', 'document.getElementById("demo").innerHTML = "Hello World!";/#demo.innerHTML = "Hello World!";/document.getElement("p").innerHTML = "Hello World!";/document.getElementByName("p").innerHTML = "Hello World!";', '아래의 HTML 요소의 내용을 변경하는 올바른 JavaScript 구문은 무엇입니까?

<p id="demo">This is a demonstration.</p>', 'Javascript', 'HTML 접근', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (223, 'Both the <head> section and the <body> section', 'The <head> section/The <body> section/Both the <head> section and the <body> section', 'Head와 Body 중에 JavaScript를 추가하는 올바른 곳은?', 'Javascript', 'Head, Body', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (224, '<script src="xxx.js">', '<script src="xxx.js">/<script href="xxx.js">/<script name="xxx.js">', '외부 스크립트(xxx.js)를 가져오는 올바른 구문은?', 'Javascript', '외부 스크립트', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (225, 'True', 'True/False', '외부 자바스크립트 파일은 \\<script\\> 태그를 반드시 포함해야 한다.', 'Javascript', '외부 자바스크립트', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (226, 'alert("Hello World");', 'msgBox("Hello World");/alertBox("Hello World");/msg("Hello World");/alert("Hello World");', 'Alert Box에 "Hello World"를 작성하는 방법은?', 'Javascript', 'Alert', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (227, 'function myFunction()', 'function myFunction()/function = myFunction()/function:myFunction()', 'JavaScript에서 함수를 생성하는 방법은?', 'Javascript', '함수의 생성', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (228, 'if (i == 5)', 'if i = 5/if (i == 5)/if i = 5 then/if i == 5 then', 'JavaScript에서 조건문을 사용하는 방법으로 옳은 것은?', 'Javascript', '함수의 호출', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (229, 'if (i != 5)', 'if i <> 5/if (i != 5)/if i =! 5 then/if (i <> 5)', 'JavaScript에서 i는 5와 다르다는 조건을 나타내는 구문은?', 'Javascript', '조건문', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (230, 'while (i <= 10)', 'while (i <= 10; i++)/while i = 1 to 10/while (i <= 10)', 'JavaScript에서 while 반복문을 시작하는 방법은?', 'Javascript', '반복문', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (231, 'for (i = 0; i <= 5; i++)', 'for (i = 0; i <= 5)/for i = 1 to 5/for (i <= 5; i++)/for (i = 0; i <= 5; i++)', 'JavaScript에서 for 반복문을 시작하는 방법은?', 'Javascript', '반복문2', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (232, 'var colors = ["red", "green", "blue"]', 'var colors = ["red", "green", "blue"]/var colors = "red", "green", "blue"/var colors = (1:"red", 2:"green", 3:"blue")/var colors = 1 = ("red"), 2 = ("green"), 3 = ("blue")', 'JavaScript에서 배열을 선언하는 방법은?', 'Javascript', '배열의 선언', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (233, 'Math.round(7.25)', 'Math.rnd(7.25)/Math.round(7.25)/rnd(7.25)/round(7.25)', '숫자 7.25를 가까운 정수로 반올림하는 방법은?', 'Javascript', 'Math 함수', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (234, 'Math.max(x, y)', 'Math.ceil(x, y)/ceil(x, y)/Math.max(x, y)/top(x, y)', 'x와 y 중 가장 큰 값을 반환하는 함수는?', 'Javascript', 'Math 함수 2', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (235, 'w2 = window.open("www.w3schools.com");', 'w2 = window.new("www.w3schools.com");/w2 = window.open("www.w3schools.com");', '새로운 창 w2를 호출하기 위한 올바른 Javascript 구문은?', 'Javascript', 'window 호출', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (236, 'navigator.appName', 'browser.name/navigator.appName/client.navName', '클라이언트의 브라우저 이름을 탐지하는 함수는?', 'Javascript', '브라우저 감지', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (237, 'onclick', 'onclick/onchange/onmouseclick/onmouseover', '유저가 HTML 요소를 클릭할 때, 발생하는 이벤트는 무엇인가?', 'Javascript', '클릭 이벤트', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (238, 'var carName;', 'variable carName;/var carName;/v carName;', 'JavaScript에서 variable 변수를 선언하는 방법은?', 'Javascript', '변수의 선언', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (239, '=', '=/*/-/X', '변수에 값을 대입하는 연산자는 어느 것인가?', 'Javascript', '변수의 대입', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (240, 'Yes', 'Yes/No', 'JavaScript에서는 영문의 대소문자를 구분하는가?', 'Javascript', '대소문자 구분', 'LANGUAGE');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (241, '@Bean', '@Bean/@Controller/@Service/@Repository', '다음 중 컴포넌트 스캔(Component Scan)의 기본대상이 아닌 것은?', 'Spring', '컴포넌트 스캔', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (242, '@Primary가 @Qualifier보다 우선권이 높다', '의존관계를 자동으로 주입해준다/@Qualifier는 추가 구분자를 붙여주는 방법이다/@Primary를 사용해 우선순위를 설정한다/@Primary가 @Qualifier보다 우선권이 높다', '다음 중 Autowired에 대한 설명으로 옳지 않은 것은?', 'Spring', 'Autowired', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (243, '@Transactional - 테스트를 트랜잭션 안에서 실행하고, 테스트가 끝나도 롤백시키지 않는다', '@DisplayName - JUnit5부터 지원하는 메서드 이름 지정/@BeforeEach - 각 테스트를 실행하기 전에 호출된다/@AfterEach - 각 테스트를 실행한 후에 호출된다/@Transactional - 테스트를 트랜잭션 안에서 실행하고, 테스트가 끝나도 롤백시키지 않는다', '다음 중 테스트코드 어노테이션으로 옳지 않은 것은?', 'Spring', '테스트 코드', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (244, '@RequiredArgsConstructor - 파라미터가 없는 기본 생성자를 생성한다', '@RequiredArgsConstructor - 파라미터가 없는 기본 생성자를 생성한다/@AllArgsConstructor - 모든 필드 값을 파라미터로 받는 생성자를 생성한다/@Slf4j - 로그 선언 롬복 어노테이션/@EqualAndHashCode - equals와 hashCode를 자동으로 생성한다', '다음 중 롬복의 어노테이션 설명으로 옳지 않은 것은?', 'Spring', '롬복', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (251, '@mappedBy 속성으로 외래키를 가지는 연관관계의 주인으로 설정한다', '@mappedBy 속성으로 외래키를 가지는 연관관계의 주인으로 설정한다/외래키를 관리하지않는 연관관계의 주인이 아닌 쪽은 읽기만 가능하다/단방향,양방향 연관관계 매핑이 존재한다/테이블은 외래키하나로 두 테이블의 연관관계를 관리한다', '다음 중 연관관계 매핑에 대한 설명으로 옳지 않은 것은?', 'JPA', '연관관계 매핑', 'BACKEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (261, 'useContext - 자식요소에 직접 접근', 'useState - 상태값 관리/useContext - 자식요소에 직접 접근/useCallback - 함수 메모이제이션 기능에 특화/userReducer - 여러개의 상태값 관리', '다음 중 리액트 훅으로 올바르게 짝지어지지 않은 것은?', 'React', '리액트 내장 훅', 'FRONTEND');
INSERT INTO developermaker.quiz (quiz_id, answer, example, problem, subject, title, category) VALUES (262, 'Babel', 'ReactDOM/Babel/JSX Compiler/React Router', '다음 중 React에서 JSX를 컴파일할때 사용하는 툴은?', 'React', '컴파일', 'FRONTEND');


INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (1, '# HTTP & HTTPS  



 - ##### HTTP(HyperText Transfer Protocol)

   인터넷 상에서 클라이언트와 서버가 자원을 주고 받을 때 쓰는 통신 규약  
---


 HTTP는 텍스트 교환이므로, 누군가 네트워크에서 신호를 가로채면 내용이 노출되는 보안 이슈가 존재한다.

 이런 보안 문제를 해결해주는 프로토콜이 **''HTTPS''**


 - ##### HTTPS(HyperText Transfer Protocol Secure)

   인터넷 상에서 정보를 암호화하는 SSL 프로토콜을 사용해 클라이언트와 서버가 자원을 주고 받을 때 쓰는 통신 규약

 HTTPS는 텍스트를 암호화한다. (공개키 암호화 방식으로!) : [공개키 설명](https://github.com/kim6394/tech-interview-for-developer/blob/master/Computer%20Science/Network/%EB%8C%80%EC%B9%AD%ED%82%A4%20%26%20%EA%B3%B5%EA%B0%9C%ED%82%A4.md)





 #### HTTPS 통신 흐름

 1) 애플리케이션 서버(A)를 만드는 기업은 HTTPS를 적용하기 위해 공개키와 개인키를 만든다.

 2) 신뢰할 수 있는 CA 기업을 선택하고, 그 기업에게 내 공개키 관리를 부탁하며 계약을 한다.

 ***CA란?*** : Certificate Authority로, 공개키를 저장해주는 신뢰성이 검증된 민간기업

 3) 계약 완료된 CA 기업은 해당 기업의 이름, A서버 공개키, 공개키 암호화 방법을 담은 인증서를 만들고, 해당 인증서를 CA 기업의 개인키로 암호화해서 A서버에게 제공한다.

 4) A서버는 암호화된 인증서를 갖게 되었다. 이제 A서버는 A서버의 공개키로 암호화된 HTTPS 요청이 아닌 요청이 오면, 이 암호화된 인증서를 클라이언트에게 건내준다.

 5) 클라이언트가 `main.html` 파일을 달라고 A서버에 요청했다고 가정하자. HTTPS 요청이 아니기 때문에 CA기업이 A서버의 정보를 CA 기업의 개인키로 암호화한 인증서를 받게 된다.

 CA 기업의 공개키는 브라우저가 이미 알고있다. (세계적으로 신뢰할 수 있는 기업으로 등록되어 있기 때문에, 브라우저가 인증서를 탐색하여 해독이 가능한 것)

 6) 브라우저는 해독한 뒤 A서버의 공개키를 얻게 되었다. 이제 A서버와 통신할 대는 얻은 A서버의 공개키로 암호화해서 요청을 날리게 된다.



 HTTPS도 무조건 안전한 것은 아니다. (신뢰받는 CA 기업이 아닌 자체 인증서 발급한 경우 등)

 이때는 HTTPS지만 브라우저에서 `주의 요함`, `안전하지 않은 사이트`와 같은 알림으로 주의 받게 된다.


 ', '네트워크', 'HTTP & HTTPS', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (2, '# HTTP 상태코드

클라이언트가 보낸 HTTP 요청에 대한 서버의 응답코드로, 상태 코드에 따라 요청의 성공/실패 여부를 판단한다.  
상태코드의 첫번째 숫자는 응답의 클래스를 정의한다.

**1xx(정보)** : 요청을 받았으며 프로세스를 계속 진행  
**2xx(성공)** : 요청을 성공적으로 받았으며 인식했고 수용  
**3xx(리다이렉션)** : 요청 완료를 위해 추가 작업 조치가 필요  
**4xx(클라이언트 오류)** : 요청의 문법이 잘못되었거나 요청을 처리할 수 없음  
**5xx(서버 오류)** : 서버가 명백히 유효한 요청에 대한 충족을 실패

## ? 1xx - Information response

상태 코드가 ''1''로 시작하는 경우는 **서버가 요청을 받았으며, 서버에 연결된 클라이언트는 작업을 계속 진행하라는 의미이다.**

### 100 - Continue

진행중임을 의미하는 응답코드이다. 클라이언트가 계속해서 요청하거나 이미 요청완료한 경우에는 무시해도 되는 것을 알려준다.

### 101 - Switcing Protocol

이 응답 코드는 클라이언트가 보낸 Upgrade 요청 헤더에 대한 응답에 들어가며, 서버에서 프로토콜을 변경할 것임을 알려준다. 해당 코드는 Websocket 프로토콜 전환 시에 사용된다.

### 102 - Processing (WebDAV)

서버가 요청을 수신하였으며 이를 처리하고 있지만, 아직 제대로 된 응답을 알려줄 수 없음을 알려준다.

### 103 - Early Hints

주로 Link 헤더와 함께 사용되어 서버가 응답을 준비하는 동안 사용자 에이전트가(user agent) 사전 로딩(preloading)을 시작할 수 있도록 한다.

<br/>

## ? 2xx - Successful response

상태코드가 ''2''로 시작하는 경우는 **클라이언트의 요청이 성공적으로 수행되었다는 의미이다.**

### 200 - OK

요청이 성공적으로 수행되었다.

### 201 - Created

요청이 성공적이었으며 그 결과로 새로운 리소스가 생성되었다. 이 응답은 일반적으로 POST 요청 또는 일부 PUT 요청 이후에 따라온다.

### 202 - Accepted

요청을 수신하였지만 그에 응하여 행동할 수 없다. 이 응답은 요청 처리에 대한 결과를 이후에 HTTP로 비동기 응답을 보내는 것에 대해서 명확하게 명시하지 않는다.  
이것은 다른 프로세스에서 처리 또는 서버가 요청을 다루고 있거나 배치 프로세스를 하고 있는 경우를 위해 만들어졌다.
즉, 서버가 요청을 접수했지만 아직 처리하지 않았다.

### 203 - Non-Authoritative Information

서버가 요청을 성공적으로 처리했지만 다른 소스에서 수신된 정보를 제공하고 있다.

### 204 - No Content

요청에 대해서 보내줄 수 있는 콘텐츠가 없지만, 헤더는 의미있을 수 있다. 사용자-에이전트는 리소스가 캐시 된 헤더를 새로운 것으로 업데이트할 수 있다.

<br/>

## ? 3xx - Redirection messages

상태코드가 ''3''로 시작하는 경우는 **클라이언트가 요청을 완료하기 위해 추가 조취를 취해야 한다는 의미이다.**

### 301 - Moved Permanently

요청한 리소스의 URI가 변경되었음을 의미한다. 새로운 URI가 응답에서 아마도 주어질 수 있다.

### 304 - Not Modified

캐시를 목적으로 사용된다. 클라이언트에게 응답이 수정되지 않았음을 알려주며, 그러므로 클라이언트는 계속해서 응답의 캐시 된 버전을 사용할 수 있다.

<br/>

## ? 4xx - Client error response

상태코드가 ''4''로 시작하는 경우는 **클라이언트로 인한 오류가 발생했다는 의미이다.**

### 400 - Bad Request

잘못된 문법으로 인하여 서버가 요청을 이해할 수 없음을 의미한다.

### 401 - Unauthorized

의미상 이 응답은 **"비인증(unauthenticated)"** 을 의미한다.  
클라이언트는 요청한 응답을 받기 위해서는 반드시 스스로를 인증해야 한다. 로그인을 실패한 경우 또는 로그인하지 않는 사용자가 회원의 기능을 사용하려 할 때 사용한다.

### 403 - Forbidden

클라이언트가 콘텐츠에 접근할 권리를 가지고 있지 않다.  
ex) 미결제로 서비스를 이용할 수 없음  
**401과 다른 점은 서버가 클라이언트가 누구인지 알고 있다.**

### 404 - Not Found

서버가 요청받은 리소스를 찾을 수 없다. 브라우저에서는 알려지지 않은 URL을 의미한다. 이것은 API에서 종점(URI)은 적절하지만 리소스 자체는 존재하지 않음을 의미할 수도 있다.

### 405 - Method Not Allowed

요청에 지정된 메서드가 URI로 표시된 리소스에 허용되지 않음을 의미한다.

### 408 - Request Timeout

이 응답은 요청을 한지 시간이 오래된 연결에 일부 서버가 전송한다.

### 409 - Conflict

이 응답은 요청이 현재 서버의 상태와 충돌될 때 보낸다.

<br/>

## ? 5xx - Server error response

상태코드가 ''5''로 시작하는 경우는 **서버로 인한 오류 발생을 의미힌다.**

### 500 - Internal Server Error

내부 서버오류로, 서버에 오류가 발생하여 요청을 수행할 수 없음을 의미한다.

### 501 - Not Implemented

서버에 요청을 수행할 수 있는 기능이 없다. 예를 들어 서버가 요청 메소드를 인식하지 못할 때 이 코드를 표시한다.

### 502 - Bad Gateway

서버가 게이트웨이나 프록시 역할을 하고 있거나 또는 업스트림 서버에서 잘못된 응답을 받았다.

### 503 - Service Unavailable

서버가 오버로드되었거나 유지관리를 위해 다운되었기 때문에 현재 서버를 사용할 수 없다. 이는 대개 일시적인 상태이다.

### 504 - Gateway Timeout

서버가 게이트웨이나 프록시 역할을 하고 있거나 또는 업스트림 서버에서 제때 요청을 받지 못했다.
', '네트워크', 'HTTP 상태코드', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (3, '# OSI 7 계층

<br>

![](https://velog.velcdn.com/images/mraz0210/post/6ed19ac3-5572-430f-9a64-0dd3abe98bff/image.png)

<br>

#### 7계층은 왜 나눌까?

통신이 일어나는 과정을 단계별로 알 수 있고, 특정한 곳에 이상이 생기면 그 단계만 수정할 수 있기 때문이다.

<br>

##### 1) 물리(Physical)

> 리피터, 케이블, 허브 등

단지 데이터 전기적인 신호로 변환해서 주고받는 기능을 진행하는 공간

즉, 데이터를 전송하는 역할만 진행한다.

<br>

##### 2) 데이터 링크(Data Link)

> 브릿지, 스위치 등

물리 계층으로 송수신되는 정보를 관리하여 안전하게 전달되도록 도와주는 역할

Mac 주소를 통해 통신한다. 프레임에 Mac 주소를 부여하고 에러검출, 재전송, 흐름제어를 진행한다.

<br>

##### 3) 네트워크(Network)

> 라우터, IP

데이터를 목적지까지 가장 안전하고 빠르게 전달하는 기능을 담당한다.

라우터를 통해 이동할 경로를 선택하여 IP 주소를 지정하고, 해당 경로에 따라 패킷을 전달해준다.

라우팅, 흐름 제어, 오류 제어, 세그먼테이션 등을 수행한다.

<br>

##### 4) 전송(Transport)

> TCP, UDP

TCP와 UDP 프로토콜을 통해 통신을 활성화한다. 포트를 열어두고, 프로그램들이 전송을 할 수 있도록 제공해준다.

- TCP : 신뢰성, 연결지향적

- UDP : 비신뢰성, 비연결성, 실시간

<br>

##### 5) 세션(Session)

> API, Socket

데이터가 통신하기 위한 논리적 연결을 담당한다. TCP/IP 세션을 만들고 없애는 책임을 지니고 있다.

<br>

##### 6) 표현(Presentation)

> JPEG, MPEG 등

데이터 표현에 대한 독립성을 제공하고 암호화하는 역할을 담당한다.

파일 인코딩, 명령어를 포장, 압축, 암호화한다.

<br>

##### 7) 응용(Application)

> HTTP, FTP, DNS 등

최종 목적지로, 응용 프로세스와 직접 관계하여 일반적인 응용 서비스를 수행한다.

사용자 인터페이스, 전자우편, 데이터베이스 관리 등의 서비스를 제공한다.', '네트워크', 'OSI 7 계층', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (4, '# 네트워크 (Network)

네트워크란 물리적 전송 매체를 사용해 서로 연결된 장치 집합으로 정의된다. 예를 들어 컴퓨터 네트워크는 하드웨어, 데이터 및 소프트웨어와 같은 정보와 리소스를 통신하고 공유하기 위해 서로 연결된 컴퓨터 그룹이다.

## 네트워크의 종류

### LAN

LAN(인트라넷)은 비교적 좁은 공간인 학교, 기업, 연구소 등의 컴퓨터 끼리 이어 구성한 네트워크를 말하고, 구리선을 짜넣은 LAN 케이블을 사용한다.

### WAN

WAN은 지리적으로 떨어져 있는 기기 끼리 연결한 비교적 대규모의 네트워크를 말하며, 광섬유 케이블이나, 회선을 이용한다.
인터넷이란 LAN, WAN을 연결한 전세계 규모의 네트워크이다.

네트워크를 통해 전송되는 데이터는 텍스트, 오디오, 비디오, 이미지, 숫자 등과 같은 다양한 방식으로 제공된다.

## 네트워크 분류

연결 유형에 다라 두 가지 범주로 분류된다.

### P2P

중앙 서버를 사용하지 않고 리소스를 공유하기 위해 두 대 이상의 컴퓨터가 함께 연결되어있는 경우 피어-투-피어 네트워크라고 한다. 이러한 유형의 네트워크에있는 컴퓨터는 서버와 클라이언트로 작동한다. 비싸지 않기 때문에 일반적으로 소규모 회사에서 사용된다.

### 서버기반 네트워크

이러한 유형의 네트워크에서 중앙 서버는 클라이언트의 데이터, 응용 프로그램 등을 저장하기 위해 위치한다. 서버 컴퓨터는 네트워크에 보안 및 네트워크 관리를 제공한다.

# WEB 이란?

WEB은 World Wide Web의 약자로 인터넷이라는 서비스 체계 위에서 동작하는 서비스 중에 하나이다. 인터넷에 연결된 컴퓨터를 이용해 사람들과 정보를 공유할 수 있는 거미줄(Web)처럼 얼기설기 엮인 공간을 뜻한다.

WEB 브라우저란 HTML 문서와 그림, 멀티미디어 파일 등 WWW을 기반으로 한 인터넷의 콘텐츠를 검색 및 열람하기 위한 응용프로그램을 말한다.

## 웹 브라우저 구성

![image](https://user-images.githubusercontent.com/87989933/200717945-9e26d6f9-4082-4c16-a7bb-6459d35360b5.png)
', '네트워크', '네트워크와 Web', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (5, '# TCP & UDP

TCP와 UDP는 네트워크 OSI 7계층 중 전송 계층에서 사용하는 프로토콜이다.

전송 계층은 송신자와 수신자를 연결하는 통신서비스를 제공하고 IP에 의해 전달되는 패킷의 오류를 검사하며 재전송 요구 제어등을 담당하는 계층으로, 쉽게 말해 데이터의 전달을 담당하는데,
TCP, UDP는 이 전송 계층에서 데이터를 보내기 위해 사용하는 프로토콜을 말한다.

<br/>

## TCP(Transmission Control Protocol)

인터넷상에서 데이터를 메세지의 형태(세그먼트 라는 블록 단위)로 보내기 위해 IP와 함께 사용하는 프로토콜이다.

TCP와 IP를 함께 사용하는데, IP가 데이터의 배달을 처리한다면 TCP는 패킷을 추적 및 관리한다.

![image](https://user-images.githubusercontent.com/87989933/200213051-da987c98-2086-4b43-a0e1-9abf62695a43.png)

### [ TCP 특징 ]

- 연결 지향 방식이다
- 3-way handshaking과정을 통해 연결을 설정하고 4-way handshaking을 통해 해제한다
- 흐름 제어 및 혼잡 제어
- 높은 신뢰성을 보장한다
- UDP보다 속도가 느리다
- 전이중(Full-Duplex), 점대점(Point to Point) 방식

TCP가 연결 지향 방식이라는 것은 패킷을 전송하기 위한 논리적 경로를 배정한다는 뜻이다. 그리고 3-way handshaking과정은 목적지와 수신지를 확실히 하여 정확한 전송을 보장하기 위해서 세션을 수립하는 과정을 의미한다.

TCP는 이러한 연결형 서비스로 신뢰성을 보장한다.  
그래서 3-way handshaking의 과정도 사용하는 것이고, 데이터의 흐름제어나 혼잡 제어와 같은 기능도 한다.

하지만 이러한 기능때문에 CPU를 사용하기 때문에 UDP보다 속도가 느리다.

그렇기 때문에, TCP는 연속성보다 신뢰성있는 전송이 중요할 때에 사용하는 프로토콜로 파일 전송과 같은 경우에 사용된다.

<br/>

### [ TCP 서버의 특징 ]

- 서버소켓은 연결만을 담당한다
- 연결과정에서 반환된 클라이언트 소켓은 데이터의 송수신에 사용된다
- 서버와 클라이언트는 1대1로 연결된다
- 스트림 전송으로 전송 데이터의 크기가 무제한이다
- 패킷에 대한 응답을 해야하기 때문에(시간 지연, CPU 소모) 성능이 낮다
- Streaming 서비스에 불리하다 (손실된 경우 재전송 요청을 하므로)

<br/>

## UDP(User Datagram Protocol)

데이터를 데이터그램(독립적인 관계를 지니는 패킷) 단위로 처리하는 프로토콜이다.

TCP와 달리 UDP는 비연결형 프로토콜로, 연결을 위해 할당되는 논리적인 경로가 없다. 그렇기 때문에 각각의 패킷은 다른 경로로 전송되고, 독립적인 관계를 지니게 되면서 데이터를 서로 다른 경로로 독립적으로 처리하게 된다.

![image](https://user-images.githubusercontent.com/87989933/200213120-318e5988-95a5-4539-aa14-7566739a802c.png)

### [ UDP 특징 ]

- 비연결형 서비스로 데이터그램 방식을 제공한다
- 정보를 주고 받을 때 정보를 보내거나 받는다는 신호절차를 거치지 않는다
- UDP헤더의 CheckSum 필드를 통해 최소한의 오류만 검출한다
- 신뢰성이 낮다
- TCP보다 속도가 빠르다

UDP는 비연결형 서비스이기 때문에, 연결을 설정하고 해제하는 과정이 존재하지 않는다. 서로 다른 경로로 독립적으로 처리함에도 패킷에 순서를 부여하여 재조립을 하거나 흐름 제어 또는 혼잡 제어와 같은 기능도 처리하지 않기에 TCP보다 속도가 빠르며 네트워크 부하가 적다는 장점이 있지만 신뢰성있는 데이터의 전송을 보장하지는 못한다.

그렇기 때문에 신뢰성보다는 연속성이 중요한 서비스 예를 들면 실시간 서비스(streaming)에 자주 사용된다.

### [ UDP 서버의 특징 ]

- UDP에는 연결 자체가 없어서(connect 함수 불필요) 서버 소켓과 클라이언트 소켓의 구분이 없다.
- 소켓 대신 IP를 기반으로 데이터를 전송한다.
- 서버와 클라이언트는 1대1, 1대N, N대M 등으로 연결될 수 있다.
- 데이터그램(메세지) 단위로 전송되며 그 크기는 65535바이트로, 크기가 초과하면 잘라서 보낸다.
- 흐름제어(flow control)가 없어서 패킷이 제대로 전송되었는지, 오류가 없는지 확인할 수 없다.
- 파일 전송과 같은 신뢰성이 필요한 서비스보다 성능이 중요시 되는 경우에 사용된다.
', '네트워크', 'TCP & UDP', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (6, '# 흐름제어 & 혼잡제어

## 흐름제어 (Flow Control)

수신측이 송신측보다 데이터 처리 속도가 빠르면 문제없지만, 송신측의 속도가 빠를 경우 문제가 생긴다.

수신측에서 제한된 저장 용량을 초과한 이후에 도착하는 데이터는 손실 될 수 있으며, 만약 손실 된다면 불필요하게 응답과 데이터 전송이 송/수신 측 간에 빈번히 발생한다.

흐름 제어는 위와 같이 송신 측과 수신 측의 TCP 버퍼 크기 차이로 인해 생기는 데이터 처리 속도 차이를 해결하기 위한 기법이다.

\\* TCP 버퍼
송신 측은 버퍼에 TCP 세그먼트를 보관한 후 순차적으로 전송하고, 수신 측은 도착한 TCP 세그먼트를 애플리케이션이 읽을 때까지 버퍼에 보관한다.

### Stop and Wait

매번 전송한 패킷에 대해 확인 응답을 받아야만 그 다음 패킷을 전송하는 방법

![image](https://user-images.githubusercontent.com/87989933/200245402-416b712a-334a-4736-ad76-76408eb1096f.png)

### Sliding Window

수신측에서 설정한 윈도우 크기만큼 송신측에서 확인응답없이 세그먼트를 전송할 수 있게 하여 데이터 흐름을 동적으로 조절하는 제어기법

목적 : 전송은 되었지만, acked를 받지 못한 byte의 숫자를 파악하기 위해 사용하는 protocol

동작방식 : 먼저 윈도우에 포함되는 모든 패킷을 전송하고, 그 패킷들의 전달이 확인되는대로 이 윈도우를 옆으로 옮김으로써 그 다음 패킷들을 전송

![image](https://user-images.githubusercontent.com/87989933/200245549-8d180a54-4305-407e-ac30-b9e43fffaaae.png)

Window : TCP/IP를 사용하는 모든 호스트들은 송신하기 위한 것과 수신하기 위한 2개의 Window를 가지고 있다. 호스트들은 실제 데이터를 보내기 전에 ''3 way handshaking''을 통해 수신 호스트의 receive window size에 자신의 send window size를 맞추게 된다.

<br/>

## 혼잡제어 (Congestion Control)

- 송신측의 데이터는 지역망이나 인터넷으로 연결된 대형 네트워크를 통해 전달된다. 만약 한 라우터에 데이터가 몰릴 경우, 자신에게 온 데이터를 모두 처리할 수 없게 된다. 이런 경우 호스트들은 또 다시 재전송을 하게되고 결국 혼잡만 가중시켜 오버플로우나 데이터 손실을 발생시키게 된다. 따라서 이러한 네트워크의 혼잡을 피하기 위해 송신측에서 보내는 데이터의 전송속도를 강제로 줄이게 되는데, 이러한 작업을 혼잡제어라고 한다.
- 또한 네트워크 내에 패킷의 수가 과도하게 증가하는 현상을 혼잡이라 하며, 혼잡 현상을 방지하거나 제거하는 기능을 혼잡제어라고 한다.
- 흐름제어가 송신측과 수신측 사이의 전송속도를 다루는데 반해, 혼잡제어는 호스트와 라우터를 포함한 보다 넓은 관점에서 전송 문제를 다루게 된다.

### 해결방법

![image](https://user-images.githubusercontent.com/87989933/200245718-dfd0a77f-9fe5-4ac3-83c1-4adedfdd4360.png)

### AIMD(Additive Increase / Multiplicative Decrease)

- 처음에 패킷을 하나씩 보내고 이것이 문제없이 도착하면 window 크기(단위 시간 내에 보내는 패킷의 수)를 1씩 증가시켜가며 전송하는 방법
- 패킷 전송에 실패하거나 일정 시간을 넘으면 패킷의 보내는 속도를 절반으로 줄인다.
- 공평한 방식으로, 여러 호스트가 한 네트워크를 공유하고 있으면 나중에 진입하는 쪽이 처음에는 불리하지만, 시간이 흐르면 평형상태로 수렴하게 되는 특징이 있다.
- 문제점은 초기에 네트워크의 높은 대역폭을 사용하지 못하여 오랜 시간이 걸리게 되고, 네트워크가 혼잡해지는 상황을 미리 감지하지 못한다. 즉, 네트워크가 혼잡해지고 나서야 대역폭을 줄이는 방식이다.

### Slow Start (느린 시작)

- AIMD 방식이 네트워크의 수용량 주변에서는 효율적으로 작동하지만, 처음에 전송 속도를 올리는데 시간이 오래 걸리는 단점이 존재했다.
- Slow Start 방식은 AIMD와 마찬가지로 패킷을 하나씩 보내면서 시작하고, 패킷이 문제없이 도착하면 각각의 ACK 패킷마다 window size를 1씩 늘려준다. 즉, 한 주기가 지나면 window size가 2배로 된다.
- 전송속도는 AIMD에 반해 지수 함수 꼴로 증가한다. 대신에 혼잡 현상이 발생하면 window size를 1로 떨어뜨리게 된다.
- 처음에는 네트워크의 수용량을 예상할 수 있는 정보가 없지만, 한번 혼잡 현상이 발생하고 나면 네트워크의 수용량을 어느 정도 예상할 수 있다.
- 그러므로 혼잡 현상이 발생하였던 window size의 절반까지는 이전처럼 지수 함수 꼴로 창 크기를 증가시키고 그 이후부터는 완만하게 1씩 증가시킨다.

### Fast Retransmit (빠른 재전송)

- 빠른 재전송은 TCP의 혼잡 조절에 추가된 정책이다.
- 패킷을 받는 쪽에서 먼저 도착해야할 패킷이 도착하지 않고 다음 패킷이 도착한 경우에도 ACK 패킷을 보내게 된다.
- 단, 순서대로 잘 도착한 마지막 패킷의 다음 패킷의 순번을 ACK 패킷에 실어서 보내게 되므로, 중간에 하나가 손실되게 되면 송신 측에서는 순번이 중복된 ACK 패킷을 받게 된다. 이것을 감지하는 순간 문제가 되는 순번의 패킷을 재전송 해줄 수 있다.
- 중복된 순번의 패킷을 3개 받으면 재전송을 하게 된다. 약간 혼잡한 상황이 일어난 것이므로 혼잡을 감지하고 window size를 줄이게 된다.

### Fast Recovery (빠른 회복)

- 혼잡한 상태가 되면 window size를 1로 줄이지 않고 반으로 줄이고 선형증가시키는 방법이다. 이 정책까지 적용하면 혼잡 상황을 한번 겪고 나서부터는 순수한 AIMD 방식으로 동작하게 된다.
', '네트워크', '흐름제어 & 혼잡제어', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (7, '# 3 way handshake & 4 way handshake

## 3 way handshake - 연결 성립

TCP는 정확한 전송을 보장해야 한다. 따라서 통신하기에 앞서, 논리적인 접속을 성립하기 위해 3 way handshake 과정을 진행한다.

![image](https://user-images.githubusercontent.com/87989933/200246205-45f7aabe-6283-4831-bd32-cfb5f9ff1120.png)

1. 클라이언트가 서버에게 SYN 패킷을 보냄 (sequence : x)

2. 서버가 SYN(x)을 받고, 클라이언트로 받았다는 신호인 ACK와 SYN 패킷을 보냄 (sequence : y, ACK : x + 1)

3. 클라이언트는 서버의 응답은 ACK(x+1)와 SYN(y) 패킷을 받고, ACK(y+1)를 서버로 보냄

이렇게 3번의 통신이 완료되면 연결이 성립된다. (3번이라 3 way handshake인 것)

## 4 way handshake - 연결 해제

연결 성립 후, 모든 통신이 끝났다면 해제해야 한다.

![image](https://user-images.githubusercontent.com/87989933/200246304-cf39e20d-a165-418c-8f87-58c45b901db1.png)

1. 클라이언트는 서버에게 연결을 종료한다는 FIN 플래그를 보낸다.

2. 서버는 FIN을 받고, 확인했다는 ACK를 클라이언트에게 보낸다. (이때 모든 데이터를 보내기 위해 CLOSE_WAIT 상태가 된다)

3. 데이터를 모두 보냈다면, 연결이 종료되었다는 FIN 플래그를 클라이언트에게 보낸다.

4. 클라이언트는 FIN을 받고, 확인했다는 ACK를 서버에게 보낸다. (아직 서버로부터 받지 못한 데이터가 있을 수 있으므로 TIME_WAIT을 통해 기다린다.)

- 서버는 ACK를 받은 이후 소켓을 닫는다 (Closed)

- TIME_WAIT 시간이 끝나면 클라이언트도 닫는다 (Closed)

이렇게 4번의 통신이 완료되면 연결이 해제된다.
', '네트워크', '3way & 4way - handshake', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (21, '## 컴퓨터의 구성

컴퓨터가 가지는 구성에 대해 알아보자

<br>

컴퓨터 시스템은 크게 하드웨어와 소프트웨어로 나누어진다.

**하드웨어** : 컴퓨터를 구성하는 기계적 장치

**소프트웨어** : 하드웨어의 동작을 지시하고 제어하는 명령어 집합

<br>

#### 하드웨어

---

- 중앙처리장치(CPU)
- 기억장치 : RAM, HDD
- 입출력 장치 : 마우스, 프린터

#### 소프트웨어

---

- 시스템 소프트웨어 : 운영체제, 컴파일러
- 응용 소프트웨어 : 워드프로세서, 스프레드시트

<br>

먼저 하드웨어부터 살펴보자


하드웨어는 중앙처리장치(CPU), 기억장치, 입출력장치로 구성되어 있다.

이들은 시스템 버스로 연결되어 있으며, 시스템 버스는 데이터와 명령 제어 신호를 각 장치로 실어나르는 역할을 한다.

<br>

##### 중앙처리장치(CPU)

인간으로 따지면 두뇌에 해당하는 부분

주기억장치에서 프로그램 명령어와 데이터를 읽어와 처리하고 명령어의 수행 순서를 제어함
중앙처리장치는 비교와 연산을 담당하는 <strong>산술논리연산장치(ALU)</strong>와 명령어의 해석과 실행을 담당하는 **제어장치**, 속도가 빠른 데이터 기억장소인 **레지스터**로 구성되어있음

개인용 컴퓨터와 같은 소형 컴퓨터에서는 CPU를 마이크로프로세서라고도 부름

<br>

##### 기억장치

프로그램, 데이터, 연산의 중간 결과를 저장하는 장치

주기억장치와 보조기억장치로 나누어지며, RAM과 ROM도 이곳에 해당함. 실행중인 프로그램과 같은 프로그램에 필요한 데이터를 일시적으로 저장한다.

보조기억장치는 하드디스크 등을 말하며, 주기억장치에 비해 속도는 느리지만 많은 자료를 영구적으로 보관할 수 있는 장점이 있다.

<br>

##### 입출력장치

입력과 출력 장치로 나누어짐.

입력 장치는 컴퓨터 내부로 자료를 입력하는 장치 (키보드, 마우스 등)

출력 장치는 컴퓨터에서 외부로 표현하는 장치 (프린터, 모니터, 스피커 등)

<br>

<br>

#### 시스템 버스

> 하드웨어 구성 요소를 물리적으로 연결하는 선
각 구성요소가 다른 구성요소로 데이터를 보낼 수 있도록 통로가 되어줌

용도에 따라 데이터 버스, 주소 버스, 제어 버스로 나누어짐

<br>

##### 데이터 버스

중앙처리장치와 기타 장치 사이에서 데이터를 전달하는 통로

기억장치와 입출력장치의 명령어와 데이터를 중앙처리장치로 보내거나, 중앙처리장치의 연산 결과를 기억장치와 입출력장치로 보내는 ''양방향'' 버스임

##### 주소 버스

데이터를 정확히 실어나르기 위해서는 기억장치 ''주소''를 정해주어야 함.

주소버스는 중앙처리장치가 주기억장치나 입출력장치로 기억장치 주소를 전달하는 통로이기 때문에 ''단방향'' 버스임

##### 제어 버스

주소 버스와 데이터 버스는 모든 장치에 공유되기 때문에 이를 제어할 수단이 필요함

제어 버스는 중앙처리장치가 기억장치나 입출력장치에 제어 신호를 전달하는 통로임

제어 신호 종류 : 기억장치 읽기 및 쓰기, 버스 요청 및 승인, 인터럽트 요청 및 승인, 클락, 리셋 등

제어 버스는 읽기 동작과 쓰기 동작을 모두 수행하기 때문에 ''양방향'' 버스임

<br>

컴퓨터는 기본적으로 **읽고 처리한 뒤 저장**하는 과정으로 이루어짐

(READ → PROCESS → WRITE)

이 과정을 진행하면서 끊임없이 주기억장치(RAM)과 소통한다. 이때 운영체제가 64bit라면, CPU는 RAM으로부터 데이터를 한번에 64비트씩 읽어온다.

<br>', '컴퓨터구조', '컴퓨터의 구성', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (22, '## 중앙처리장치(CPU) 작동 원리



CPU는 컴퓨터에서 가장 핵심적인 역할을 수행하는 부분. ''인간의 두뇌''에 해당

크게 연산장치, 제어장치, 레지스터 3가지로 구성됨



- ##### 연산 장치

  > 산술연산과 논리연산 수행 (따라서 산술논리연산장치라고도 불림)
  >
  > 연산에 필요한 데이터를 레지스터에서 가져오고, 연산 결과를 다시 레지스터로 보냄

- ##### 제어 장치

  > 명령어를 순서대로 실행할 수 있도록 제어하는 장치
  >
  > 주기억장치에서 프로그램 명령어를 꺼내 해독하고, 그 결과에 따라 명령어 실행에 필요한 제어 신호를 기억장치, 연산장치, 입출력장치로 보냄
  >
  > 또한 이들 장치가 보낸 신호를 받아, 다음에 수행할 동작을 결정함

- ##### 레지스터

  > 고속 기억장치임
  >
  > 명령어 주소, 코드, 연산에 필요한 데이터, 연산 결과 등을 임시로 저장
  >
  > 용도에 따라 범용 레지스터와 특수목적 레지스터로 구분됨
  >
  > 중앙처리장치 종류에 따라 사용할 수 있는 레지스터 개수와 크기가 다름
  >
  > - 범용 레지스터 : 연산에 필요한 데이터나 연산 결과를 임시로 저장
  > - 특수목적 레지스터 : 특별한 용도로 사용하는 레지스터



#### 특수 목적 레지스터 중 중요한 것들

- MAR(메모리 주소 레지스터) : 읽기와 쓰기 연산을 수행할 주기억장치 주소 저장
- PC(프로그램 카운터) : 다음에 수행할 명령어 주소 저장
- IR(명령어 레지스터) : 현재 실행 중인 명령어 저장
- MBR(메모리 버퍼 레지스터) : 주기억장치에서 읽어온 데이터 or 저장할 데이터 임시 저장
- AC(누산기) : 연산 결과 임시 저장



#### CPU의 동작 과정

1. 주기억장치는 입력장치에서 입력받은 데이터 또는 보조기억장치에 저장된 프로그램 읽어옴
2. CPU는 프로그램을 실행하기 위해 주기억장치에 저장된 프로그램 명령어와 데이터를 읽어와 처리하고 결과를 다시 주기억장치에 저장
3. 주기억장치는 처리 결과를 보조기억장치에 저장하거나 출력장치로 보냄
4. 제어장치는 1~3 과정에서 명령어가 순서대로 실행되도록 각 장치를 제어



##### 명령어 세트란?

CPU가 실행할 명령어의 집합

> 연산 코드(Operation Code) + 피연산자(Operand)로 이루어짐
>
> 연산 코드 : 실행할 연산
>
> 피연산자 : 필요한 데이터 or 저장 위치



연산 코드는 연산, 제어, 데이터 전달, 입출력 기능을 가짐

피연산자는 주소, 숫자/문자, 논리 데이터 등을 저장



CPU는 프로그램 실행하기 위해 주기억장치에서 명령어를 순차적으로 인출하여 해독하고 실행하는 과정을 반복함

CPU가 주기억장치에서 한번에 하나의 명령어를 인출하여 실행하는데 필요한 일련의 활동을 ''명령어 사이클''이라고 말함

명령어 사이클은 인출/실행/간접/인터럽트 사이클로 나누어짐

주기억장치의 지정된 주소에서 하나의 명령어를 가져오고, 실행 사이클에서는 명령어를 실행함. 하나의 명령어 실행이 완료되면 그 다음 명령어에 대한 인출 사이클 시작



##### 인출 사이클과 실행 사이클에 의한 명령어 처리 과정

> 인출 사이클에서 가장 중요한 부분은 PC(프로그램 카운터) 값 증가

- PC에 저장된 주소를 MAR로 전달

- 저장된 내용을 토대로 주기억장치의 해당 주소에서 명령어 인출
- 인출한 명령어를 MBR에 저장
- 다음 명령어를 인출하기 위해 PC 값 증가시킴
- 메모리 버퍼 레지스터(MBR)에 저장된 내용을 명령어 레지스터(IR)에 전달

```
T0 : MAR ← PC
T1 : MBR ← M[MAR], PC ← PC+1
T2 : IR ← MBR
```

여기까지는 인출하기까지의 과정



##### 인출한 이후, 명령어를 실행하는 과정

> ADD addr 명령어 연산

```
T0 : MAR ← IR(Addr)
T1 : MBR ← M[MAR]
T2 : AC ← AC + MBR
```

이미 인출이 진행되고 명령어만 실행하면 되기 때문에 PC를 증가할 필요x

IR에 MBR의 값이 이미 저장된 상태를 의미함

따라서 AC에 MBR을 더해주기만 하면 됨
', '컴퓨터구조', 'CPU 작동 원리', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (23, '## 캐시 메모리(Cache Memory)

속도가 빠른 장치와 느린 장치에서 속도 차이에 따른 병목 현상을 줄이기 위한 메모리를 말한다.

<br>

```
ex1) CPU 코어와 메모리 사이의 병목 현상 완화
ex2) 웹 브라우저 캐시 파일은, 하드디스크와 웹페이지 사이의 병목 현상을 완화
```

<br>

CPU가 주기억장치에서 저장된 데이터를 읽어올 때, 자주 사용하는 데이터를 캐시 메모리에 저장한 뒤, 다음에 이용할 때 주기억장치가 아닌 캐시 메모리에서 먼저 가져오면서 속도를 향상시킨다.

속도라는 장점을 얻지만, 용량이 적기도 하고 비용이 비싼 점이 있다.

<br>

CPU에는 이러한 캐시 메모리가 2~3개 정도 사용된다. (L1, L2, L3 캐시 메모리라고 부른다)

속도와 크기에 따라 분류한 것으로, 일반적으로 L1 캐시부터 먼저 사용된다. (CPU에서 가장 빠르게 접근하고, 여기서 데이터를 찾지 못하면 L2로 감)

<br>

***듀얼 코어 프로세서의 캐시 메모리*** : 각 코어마다 독립된 L1 캐시 메모리를 가지고, 두 코어가 공유하는 L2 캐시 메모리가 내장됨

만약 L1 캐시가 128kb면, 64/64로 나누어 64kb에 명령어를 처리하기 직전의 명령어를 임시 저장하고, 나머지 64kb에는 실행 후 명령어를 임시저장한다. (명령어 세트로 구성, I-Cache - D-Cache)

- L1 : CPU 내부에 존재
- L2 : CPU와 RAM 사이에 존재
- L3 : 보통 메인보드에 존재한다고 함

> 캐시 메모리 크기가 작은 이유는, SRAM 가격이 매우 비쌈

<br>

***디스크 캐시*** : 주기억장치(RAM)와 보조기억장치(하드디스크) 사이에 존재하는 캐시

<br>

#### 캐시 메모리 작동 원리

- ##### 시간 지역성

  for나 while 같은 반복문에 사용하는 조건 변수처럼 한번 참조된 데이터는 잠시후 또 참조될 가능성이 높음

- ##### 공간 지역성

  A[0], A[1]과 같은 연속 접근 시, 참조된 데이터 근처에 있는 데이터가 잠시후 또 사용될 가능성이 높음

> 이처럼 참조 지역성의 원리가 존재한다.

<br>

캐시에 데이터를 저장할 때는, 이러한 참조 지역성(공간)을 최대한 활용하기 위해 해당 데이터뿐만 아니라, 옆 주소의 데이터도 같이 가져와 미래에 쓰일 것을 대비한다.

CPU가 요청한 데이터가 캐시에 있으면 ''Cache Hit'', 없어서 DRAM에서 가져오면 ''Cache Miss''

<br>

#### 캐시 미스 경우 3가지

1. ##### Cold miss

   해당 메모리 주소를 처음 불러서 나는 미스

2. ##### Conflict miss

   캐시 메모리에 A와 B 데이터를 저장해야 하는데, A와 B가 같은 캐시 메모리 주소에 할당되어 있어서 나는 미스 (direct mapped cache에서 많이 발생)

   ```
   항상 핸드폰과 열쇠를 오른쪽 주머니에 넣고 다니는데, 잠깐 친구가 준 물건을 받느라 손에 들고 있던 핸드폰을 가방에 넣었음. 그 이후 핸드폰을 찾으려 오른쪽 주머니에서 찾는데 없는 상황
   ```

3. ##### Capacity miss

   캐시 메모리의 공간이 부족해서 나는 미스 (Conflict는 주소 할당 문제, Capacity는 공간 문제)

<br>

캐시 **크기를 키워서 문제를 해결하려하면, 캐시 접근속도가 느려지고 파워를 많이 먹는 단점**이 생김

<br>

####  구조 및 작동 방식

- ##### Direct Mapped Cache

  <img src="https://file.namu.moe/file/8bc9e381797334eb33da66e3ba501be191171b1c5abb113ab52fed45a20084b1c8d2eb5a0ba399d67b38a9d5990b5d5a">

  가장 기본적인 구조로, DRAM의 여러 주소가 캐시 메모리의 한 주소에 대응되는 다대일 방식

  현재 그림에서는 메모리 공간이 32개(00000~11111)이고, 캐시 메모리 공간은 8개(000~111)인 상황

  ex) 00000, 01000, 10000, 11000인 메모리 주소는 000 캐시 메모리 주소에 맵핑

  이때 000이 ''인덱스 필드'', 인덱스 제외한 앞의 나머지(00, 01, 10, 11)를 ''태그 필드''라고 한다.

  이처럼 캐시메모리는 `인덱스 필드 + 태그 필드 + 데이터 필드`로 구성된다.

  간단하고 빠른 장점이 있지만, **Conflict Miss가 발생하는 것이 단점**이다. 위 사진처럼 같은 색깔의 데이터를 동시에 사용해야 할 때 발생한다.

  <br>

- ##### Fully Associative Cache 

  비어있는 캐시 메모리가 있으면, 마음대로 주소를 저장하는 방식

  저장할 때는 매우 간단하지만, 찾을 때가 문제

  조건이나 규칙이 없어서 특정 캐시 Set 안에 있는 모든 블럭을 한번에 찾아 원하는 데이터가 있는지 검색해야 한다. CAM이라는 특수한 메모리 구조를 사용해야하지만 가격이 매우 비싸다.

  <br>

- ##### Set Associative Cache

  Direct + Fully 방식이다. 특정 행을 지정하고, 그 행안의 어떤 열이든 비어있을 때 저장하는 방식이다. Direct에 비해 검색 속도는 느리지만, 저장이 빠르고 Fully에 비해 저장이 느린 대신 검색이 빠른 중간형이다.

  > 실제로 위 두가지보다 나중에 나온 방식

<br>

<br>

##### [참고 자료]

- [링크](https://it.donga.com/215/ )

- [링크](https://namu.moe/w/%EC%BA%90%EC%8B%9C%20%EB%A9%94%EB%AA%A8%EB%A6%AC)', '컴퓨터구조', '캐시 메모리', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (24, '## ARM 프로세서

<br>

*프로세서란?*

> 메모리에 저장된 명령어들을 실행하는 유한 상태 오토마톤

<br>

##### ARM : Advanced RISC Machine

즉, `진보된 RISC 기기`의 약자로 ARM의 핵심은 RISC이다.

RISC : Reduced Instruction Set Computing (감소된 명령 집합 컴퓨팅)

`단순한 명령 집합을 가진 프로세서`가 `복잡한 명령 집합을 가진 프로세서`보다 훨씬 더 효율적이지 않을까?로 탄생함

<br>

<br>

#### ARM 구조

---

<img src="https://t1.daumcdn.net/cfile/tistory/25788C3550CAF8731A" width="500">

<br>

ARM은 칩의 기본 설계 구조만 만들고, 실제 기능 추가와 최적화 부분은 개별 반도체 제조사의 영역으로 맡긴다. 따라서 물리적 설계는 같아도, 명령 집합이 모두 다르기 때문에 서로 다른 칩이 되기도 하는 것이 ARM.

소비자에게는 칩이 논리적 구조인 명령 집합으로 구성되면서, 이런 특성 때문에 물리적 설계 베이스는 같지만 용도에 따라 다양한 제품군을 만날 수 있는 특징이 있다.

아무래도 아키텍처는 논리적인 명령 집합을 물리적으로 표현한 것이므로, 명령어가 많고 복잡해질수록 실제 물리적인 칩 구조도 크고 복잡해진다.

하지만, ARM은 RISC 설계 기반으로 ''단순한 명령집합을 가진 프로세서가 복잡한 것보다 효율적''임을 기반하기 때문에 명령 집합과 구조 자체가 단순하다. 따라서 ARM 기반 프로세서가 더 작고, 효율적이며 상대적으로 느린 것이다.

<br>

단순한 명령 집합은, 적은 수의 트랜지스터만 필요하므로 간결한 설계와 더 작은 크기를 가능케 한다. 반도체 기본 부품인 트랜지스터는 전원을 소비해 다이의 크기를 증가시키기 때문에 스마트폰이나 태블릿PC를 위한 프로세서에는 가능한 적은 트랜지스터를 가진 것이 이상적이다.

따라서, 명령 집합의 수가 적기 때문에 트랜지스터 수가 적고 이를 통해 크기가 작고 전원 소모가 낮은 ARM CPU가 스마트폰, 태블릿PC와 같은 모바일 기기에 많이 사용되고 있다.

<br>

<br>

#### ARM의 장점은?

---

<img src="https://t1.daumcdn.net/cfile/tistory/1970603350CD96BC35" width=200>

<br>

소비자에 있어 ARM은 ''생태계''의 하나라고 생각할 수 있다. ARM을 위해 개발된 프로그램은 오직 ARM 프로세서가 탑재된 기기에서만 실행할 수 있다. (즉, x86 CPU 프로세서 기반 프로그램에서는 ARM 기반 기기에서 실행할 수 없음)

따라서 ARM에서 실행되던 프로그램을 x86 프로세서에서 실행되도록 하려면 (혹은 그 반대로) 프로그램에 수정이 가해져야만 한다.

 <br>

하지만, 하나의 ARM 기기에 동작하는 OS는 다른 ARM 기반 기기에서도 잘 동작한다. 이러한 장점 덕분에 수많은 버전의 안드로이드가 탄생하고 있으며 또한 HP나 블랙베리의 태블릿에도 안드로이드가 탑재될 수 있는 가능성이 생기게 된 것이다.

(하지만 애플사는 iOS 소스코드를 공개하지 않고 있기 때문에 애플 기기는 불가능하다)

ARM을 만드는 기업들은 통해 전력 소모를 줄이고 성능을 높이기 위해 설계를 개선하며 노력하고 있다.

<br>

<br>

<br>

##### [참고 자료]

- [링크](https://sergeswin.com/611)', '컴퓨터구조', 'ARM 프로세서', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (25, '## 고정 소수점 & 부동 소수점

<br>

컴퓨터에서 실수를 표현하는 방법은 `고정 소수점`과 `부동 소수점` 두가지 방식이 존재한다.

<br>

1. #### 고정 소수점(Fixed Point)

   > 소수점이 찍힐 위치를 미리 정해놓고 소수를 표현하는 방식 (정수 + 소수)
   >
   > ```
   > -3.141592는 부호(-)와 정수부(3), 소수부(0.141592) 3가지 요소 필요함
   > ```

   ![고정 소수점 방식](http://tcpschool.com/lectures/img_c_fixed_point.png)

   **장점** : 실수를 정수부와 소수부로 표현하여 단순하다.

   **단점** : 표현의 범위가 너무 적어서 활용하기 힘들다. (정수부는 15bit, 소수부는 16bit)

   <br>

   <br>

2. #### 부동 소수점(Floating Point)

   > 실수를 가수부 + 지수부로 표현한다.
   >
   > - 가수 : 실수의 실제값 표현
   > - 지수 : 크기를 표현함. 가수의 어디쯤에 소수점이 있는지 나타냄

   **지수의 값에 따라 소수점이 움직이는 방식**을 활용한 실수 표현 방법이다.

   즉, 소수점의 위치가 고정되어 있지 않는다.

   ![32비트 부동 소수점](http://tcpschool.com/lectures/img_c_floating_point_32.png)

   **장점** : 표현할 수 있는 수의 범위가 넓어진다. (현재 대부분 시스템에서 활용 중)

   **단점** :  오차가 발생할 수 있다. (부동소수점으로 표현할 수 있는 방법이 매우 다양함)', '컴퓨터구조', '고정소수점과 부동소수점', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (26, '## 패리티 비트 & 해밍 코드

<br>

### 패리티 비트

> 정보 전달 과정에서 오류가 생겼는 지 검사하기 위해 추가하는 비트를 말한다.
>
> 전송하고자 하는 데이터의 각 문자에 1비트를 더하여 전송한다.

<br>

**종류** : 짝수, 홀수

전체 비트에서 (짝수, 홀수)에 맞도록 비트를 정하는 것

<br>

***짝수 패리티일 때 7비트 데이터가 1010001라면?***

> 1이 총 3개이므로, 짝수로 맞춰주기 위해 1을 더해야 함
>
> 답 : 11010001 (맨앞이 패리티비트)

<br>

<br>

### 해밍 코드

> 데이터 전송 시 1비트의 에러를 정정할 수 있는 자기 오류정정 코드를 말한다.
>
> 패리티비트를 보고, 1비트에 대한 오류를 정정할 곳을 찾아 수정할 수 있다.
> (패리티 비트는 오류를 검출하기만 할 뿐 수정하지는 않기 때문에 해밍 코드를 활용)

<br>

##### 방법

2의 n승 번째 자리인 1,2,4번째 자릿수가 패리티 비트라는 것으로 부터 시작한다. 이 숫자로부터 시작하는 세개의 패리티 비트가 짝수인지, 홀수인지 기준으로 판별한다.

<br>

***짝수 패리티의 해밍 코드가 0011011일때 오류가 수정된 코드는?***

1) 1, 3, 5, 7번째 비트 확인 : 0101로 짝수이므로 ''0''

2) 2, 3, 6, 7번째 비트 확인 : 0111로 홀수이므로 ''1''

3) 4, 5, 6, 7번째 비트 확인 : 1011로 홀수이므로 ''1''

<br>

역순으로 패리티비트 ''110''을 도출했다. 10진법으로 바꾸면 ''6''으로, 6번째 비트를 수정하면 된다.

따라서 **정답은 00110''0''1**이다.', '컴퓨터구조', '패리티 비트와 해밍 코드', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (41, '# 저장 프로시저(Stored PROCEDURE)

<br>

```
일련의 쿼리를 마치 하나의 함수처럼 실행하기 위한 쿼리의 집합
```

<br>

데이터베이스에서 SQL을 통해 작업을 하다 보면, 하나의 쿼리문으로 원하는 결과를 얻을 수 없을 때가 생긴다. 원하는 결과물을 얻기 위해 사용할 여러줄의 쿼리문을 한 번의 요청으로 실행하면 좋지 않을까? 또한, 인자 값만 상황에 따라 바뀌고 동일한 로직의 복잡한 쿼리문을 필요할 때마다 작성한다면 비효율적이지 않을까?

이럴 때 사용할 수 있는 것이 바로 프로시저다.

<br>



<img src="https://docs.oracle.com/cd/B13789_01/java.101/b12021/img/call_sto.gif">

<br>

프로시저를 만들어두면, 애플리케이션에서 여러 상황에 따라 해당 쿼리문이 필요할 때 인자 값만 전달하여 쉽게 원하는 결과물을 받아낼 수 있다.

<br>

#### 프로시저 생성 및 호출

```plsql
CREATE OR REPLACE PROCEDURE 프로시저명(변수명1 IN 데이터타입, 변수명2 OUT 데이터타입) -- 인자 값은 필수 아님
IS
[
변수명1 데이터타입;
변수명2 데이터타입;
..
]
BEGIN
 필요한 기능; -- 인자값 활용 가능
END;

EXEC 프로시저명; -- 호출
```

<br>

#### 예시1 (IN)

```plsql
CREATE OR REPLACE PROCEDURE test( name IN VARCHAR2 )
IS
	msg VARCHAR2(5) := ''내 이름은'';
BEGIN
	dbms_output.put_line(msg||'' ''||name);
END;

EXEC test(''규글'');
```

```
내 이름은 규글
```

<br>

#### 예시2 (OUT)

```plsql
CREATE OR REPLACE PROCEDURE test( name OUT VARCHAR2 )
IS
BEGIN
	name := ''Gyoogle''
END;

DECLARE
out_name VARCHAR2(100);

BEGIN
test(out_name);
dbms_output.put_line(''내 이름은 ''||out_name);
END;
```

```
내 이름은 Gyoogle
```

<br>

<br>

### 프로시저 장점

---

1. #### 최적화 & 캐시

   프로시저의 최초 실행 시 최적화 상태로 컴파일이 되며, 그 이후 프로시저 캐시에 저장된다.

   만약 해당 프로세스가 여러번 사용될 때, 다시 컴파일 작업을 거치지 않고 캐시에서 가져오게 된다.

2. #### 유지 보수

   작업이 변경될 때, 다른 작업은 건드리지 않고 프로시저 내부에서 수정만 하면 된다.
   (But, 장점이 단점이 될 수도 있는 부분이기도.. )

3. #### 트래픽 감소

   클라이언트가 직접 SQL문을 작성하지 않고, 프로시저명에 매개변수만 담아 전달하면 된다. 즉, SQL문이 서버에 이미 저장되어 있기 때문에 클라이언트와 서버 간 네트워크 상 트래픽이 감소된다.

4. #### 보안

   프로시저 내에서 참조 중인 테이블의 접근을 막을 수 있다.

<br>

### 프로시저 단점

---

1. #### 호환성

   구문 규칙이 SQL / PSM 표준과의 호환성이 낮기 때문에 코드 자산으로의 재사용성이 나쁘다.

2. #### 성능

   문자 또는 숫자 연산에서 프로그래밍 언어인 C나 Java보다 성능이 느리다.

3. #### 디버깅

   에러가 발생했을 때, 어디서 잘못됐는지 디버깅하는 것이 힘들 수 있다.

<br>

<br>

#### [참고 자료]

- [링크](https://ko.wikipedia.org/wiki/%EC%A0%80%EC%9E%A5_%ED%94%84%EB%A1%9C%EC%8B%9C%EC%A0%80)
- [링크](https://itability.tistory.com/51)', '데이터베이스', '저장 프로시저', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (42, '## [Database SQL] JOIN

##### 조인이란?

> 두 개 이상의 테이블이나 데이터베이스를 연결하여 데이터를 검색하는 방법

테이블을 연결하려면, 적어도 하나의 칼럼을 서로 공유하고 있어야 하므로 이를 이용하여 데이터 검색에 활용한다.

<br>

#### JOIN 종류

---

- INNER JOIN
- LEFT OUTER JOIN
- RIGHT OUTER JOIN
- FULL OUTER JOIN
- CROSS JOIN
- SELF JOIN

<br>

<br>

- #### INNER JOIN

  <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile9.uf.tistory.com%2Fimage%2F99799F3E5A8148D7036659">

  교집합으로, 기준 테이블과 join 테이블의 중복된 값을 보여준다.

  ```sql
  SELECT
  A.NAME, B.AGE
  FROM EX_TABLE A
  INNER JOIN JOIN_TABLE B ON A.NO_EMP = B.NO_EMP
  ```

  <br>

- #### LEFT OUTER JOIN

  <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile6.uf.tistory.com%2Fimage%2F997E7F415A81490507F027">

  기준테이블값과 조인테이블과 중복된 값을 보여준다.

  왼쪽테이블 기준으로 JOIN을 한다고 생각하면 편하다.

  ```SQL
  SELECT
  A.NAME, B.AGE
  FROM EX_TABLE A
  LEFT OUTER JOIN JOIN_TABLE B ON A.NO_EMP = B.NO_EMP
  ```

  <br>

- #### RIGHT OUTER JOIN

  <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile25.uf.tistory.com%2Fimage%2F9984CE355A8149180ABD1D">

  LEFT OUTER JOIN과는 반대로 오른쪽 테이블 기준으로 JOIN하는 것이다.

  ```SQL
  SELECT
  A.NAME, B.AGE
  FROM EX_TABLE A
  RIGHT OUTER JOIN JOIN_TABLE B ON A.NO_EMP = B.NO_EMP
  ```

  <br>

- #### FULL OUTER JOIN

  <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile24.uf.tistory.com%2Fimage%2F99195F345A8149391BE0C3">

  합집합을 말한다. A와 B 테이블의 모든 데이터가 검색된다.

  ```sql
  SELECT
  A.NAME, B.AGE
  FROM EX_TABLE A
  FULL OUTER JOIN JOIN_TABLE B ON A.NO_EMP = B.NO_EMP
  ```

  <br>

- #### CROSS JOIN

  <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile10.uf.tistory.com%2Fimage%2F993F4E445A8A2D281AC66B">

  모든 경우의 수를 전부 표현해주는 방식이다.

  A가 3개, B가 4개면 총 3*4 = 12개의 데이터가 검색된다.

  ```sql
  SELECT
  A.NAME, B.AGE
  FROM EX_TABLE A
  CROSS JOIN JOIN_TABLE B
  ```

  <br>

- #### SELF JOIN

  <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile25.uf.tistory.com%2Fimage%2F99341D335A8A363D0614E8">

  자기자신과 자기자신을 조인하는 것이다.

  하나의 테이블을 여러번 복사해서 조인한다고 생각하면 편하다.

  자신이 갖고 있는 칼럼을 다양하게 변형시켜 활용할 때 자주 사용한다.

  ``` sql
  SELECT
  A.NAME, B.AGE
  FROM EX_TABLE A, EX_TABLE B
  ```



<br>', '데이터베이스', 'JOIN', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (43, '# 트랜잭션 (Transaction)

하나의 작업을 수행하기 위해 필요한 데이터베이스의 연산(SQL문)들을 모아놓은 것으로 논리적인 작업의 단위이다.

데이터베이스를 변경하는 INSERT, DELETE, UPDATE 문의 실행을 주로 관리한다.

장애 발생시 복구 작업이나 병행 제어 작업의 중요한 단위로 사용된다.
데이터베이스의 무결성을 보장하기 위해 작업 수행에 필요한 연산들을 하나의 트랜잭션으로 제대로 정의하고 관리해야 한다.

![image](https://user-images.githubusercontent.com/87989933/200716945-7dd1127c-0830-4f7f-b32e-1cbb1c585330.png)

트랜잭션은 데이터베이스의 회복과 동시성 제어를 가능하게 하여 데이터 베이스가 일관된 상태를 유지하도록 돕는다.

\\* 회복 : 데이터베이스를 처리하는데 장애가 발생하면 장애 발생 전의 상태로 되돌리는 것을 의미한다.  
\\* 동시성 제어 : 다수의 트랜잭션이 동시에 처리되는 것을 의미한다.

하나의 트랜잭션에 포함된 SQL문들은 모두 실행되거나 모두 실행되지 않는다. 이러한 특성으로 인해 트랜잭션이 수행되던 중 장애가 발생하면 트랜잭션이 수행되기 전으로 돌아가게 되어 데이터베이스의 장애가 회복된다.

위의 그림에서 1(성호 계좌에서 5000원 인출)과 2(은경 계좌에 5000원 입금)가 하나의 트랜잭션으로 묶여 있다면 데이터 베이스가 1 수행후 장애가 발생하면 1 수행 이전의 상태로 되돌아가게 된다.

## 트랜잭션의 특성

트랜잭션은 4가지 특성을 가진다. 각각의 특성의 앞글자를 따서 ACID 특성이라고 불린다.

1. 원자성 (Atomicity)

트랜잭션의 연산들이 모두 정상적으로 실행되거나 하나도 실행되지 않아야 한다. all-or-nothing
원자성 보장을 위해 장애 발생시 회복 기능이 필요하다.

2. 일관성 (Consistency)

트랜잭션이 성공적으로 수행된 후에도 데이터베이스가 일관성 있는 상태를 유지해야 한다.
(이전 예시에서 계좌이체 전후에 계좌 잔액 합이 1만원을 유지하는 것)

3. 격리성 (Isolation)

수행 중인 트랜잭션이 완료될 때까지 다른 트랜잭션들이 중간 연산 결과에 접근할 수 없다.

4. 지속성 (Durability)

트랜잭션이 성공적으로 완료된 후 데이터베이스에 반영된 수행 결과는 영구적이어야 한다.

## 트랜잭션의 주요 연산

트랜잭션에서는 각각 작업의 완료와 실패를 의미하는 commit과 rollback 연산이 주로 사용된다.

### commit

트랜잭션의 수행이 성공적으로 완료되었음을 선언하는 연산이다.
commit 연산이 수행되면 트랜잭션의 수행 결과가 데이터베이스에 반영되고 일관된 상태를 지속적으로 유지하게 된다.  
→ 일반적으로는 개발자가 추가적인 작업을 하지 않아도 트랜잭션 내부의 SQL문들의 수행이 모두 끝나면 auto-commit이 된다.

### rollback

트랜잭션의 수행이 실패했음을 선언하는 연산이다.
rollback 연산이 수행되면 지금까지 트랜잭션이 실행한 연산의 결과가 취소되고 데이터베이스가 수행 전의 일관된 상태로 되돌아간다.

## 트랜잭션의 상태

![image](https://user-images.githubusercontent.com/87989933/200717172-4c5fe1f8-f0fb-46d8-85b1-aa7b91ad5a33.png)

활동 : 트랙잭션이 수행을 시작하여 수행중인 상태이다.
부분 완료 : 트랜잭션의 마지막 연산이 실행을 끝낸 직후의 상태이다.

완료 : 트랜잭션이 성공적으로 완료되어 commit 연산을 실행한 상태로 데이터 베이스가 새로운 일관된 상태가 되면서 트랜잭션이 종료된다.

실패 : 장애가 발생하여 트랜잭션의 수행이 중단된 상태이다.

철회 : 트랜잭션의 수행 실패로 rollback 연산을 실행한 상태로 지금까지 실행한 트랜잭션의 연산을 모두 취소하고 데이터베이스를 되돌리면서 트랜잭션이 종료된다.
', '데이터베이스', '트랜잭션', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (44, '# 무결성 제약 조건

데이터의 무결성 : 데이터에 오류가 없이 정확성, 일관성, 유효성이 유지되는 상태를 의미한다.

제약 조건 : 데이터의 무결성을 지키기 위한 조건으로 정해놓은 규칙에 맞는 데이터만 입력받고 규칙에 어긋나는 데이터는 거부하는 방식으로 작동한다.

DBMS에서 데이터의 무결성을 지키기 위한 제약 조건은 아래의 2가지가 있으며 2가지 모두 지켜져야 한다.

## 개체 무결성 제약조건

릴레이션의 기본키에는 NULL 값이 올 수 없다.

→ 릴레이션에서 레코드에 쉽게 접근하게 해주는 기본키의 역할을 가능하게 한다.

릴레이션의 기본키에는 중복된 값이 올 수 없다.

→ 릴레이션에서 레코드를 유일하게 구분해주는 기본키의 역할을 가능하게 한다.

기본키에 NULL 값이나 중복된 값이 들어가게 하는 SQL문은 거부함으로써 개체 무결성 제약조건을 준수한다.

## 참조 무결성 제약조건

두 릴레이션의 연관된 레코드들 사이의 일관성을 유지하기 위해 필요하다.

외래키의 값은 NULL이거나 참조 릴레이션의 기본키 값과 동일해야 한다.
외래키 값은 참조할 수 없는 값을 가질 수 없다.

![image](https://user-images.githubusercontent.com/87989933/200717465-3045d169-169c-4c0d-b39f-286d619cd69b.png)

![image](https://user-images.githubusercontent.com/87989933/200717478-e899cd3c-1803-4ee7-8808-1908f78a0509.png)

위의 예시는 참조 무결성 제약 조건이 지켜지고 있다. 만약 몽쉘의 참조하는 과자<외래키>의 값이 양파링이라면 외래키가 참조할 수 없는 값을 가지게 되어 참조 무결성 제약조건이 깨지게 된다.
', '데이터베이스', '무결성 제약조건', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (45, '# 인덱스(index)

인덱스란 추가적인 쓰기 작업과 저장 공간을 활용하여 데이터베이스 테이블의 검색 속도를 향상시키기 위한 자료구조이다. 만약 우리가 책에서 원하는 내용을 찾는다고 하면, 책의 모든 페이지를 찾아 보는것은 오랜 시간이 걸린다. 그렇기 때문에 책의 저자들은 책의 맨 앞 또는 맨 뒤에 색인을 추가하는데, 데이터베이스의 index는 책의 색인과 같다.

데이터베이스에서도 테이블의 모든 데이터를 검색하면 시간이 오래 걸리기 때문에 데이터와 데이터의 위치를 포함한 자료구조를 생성하여 빠르게 조회할 수 있도록 돕고 있다.

인덱스를 활용하면, 데이터를 조회하는 SELECT 외에도 UPDATE나 DELETE의 성능이 함께 향상된다. 그러한 이유는 해당 연산을 수행하려면 해당 대상을 조회해야만 작업을 할 수 있기 때문이다.

만약 index를 사용하지 않은 컬럼을 조회해야 하는 상황이라면 전체를 탐색하는 Full Scan을 수행해야 한다. Full Scan은 전체를 비교하여 탐색하기 때문에 처리 속도가 떨어진다

## 인덱스 (index)의 관리

DBMS는 index를 항상 최신의 정렬된 상태로 유지해야 원하는 값을 빠르게 탐색할 수 있다. 그렇기 때문에 인덱스가 적용된 컬럼에 INSERT, UPDATE, DELETE가 수행된다면 각각 다음과 같은 연산을 추가적으로 해주어야 하며 그에 따른 오버헤드가 발생한다.

- INSERT: 새로운 데이터에 대한 인덱스를 추가함
- DELETE: 삭제하는 데이터의 인덱스를 사용하지 않는다는 작업을 진행함
- UPDATE: 기존의 인덱스를 사용하지 않음 처리하고, 갱신된 데이터에 대해 인덱스를 추가함

## 인덱스 (index) 장단점

### 장점

- 테이블을 조회하는 속도와 그에 따른 성능을 향상시킬 수 있다.
- 전반적인 시스템의 부하를 줄일 수 있다.

### 단점

- 인덱스를 관리하기 위해 DB의 약 10%에 해당하는 저장공간이 필요하다.
- 인덱스를 관리하기 위해 추가 작업이 필요하다.
- 인덱스를 잘못 사용할 경우 오히려 성능이 저하되는 역효과가 발생할 수 있다.

만약 CREATE, DELETE, UPDATE가 빈번한 속성에 인덱스를 걸게 되면 인덱스의 크기가 비대해져서 성능이 오히려 저하되는 역효과가 발생할 수 있다.  
그러한 이유 중 하나는 DELETE와 UPDATE 연산 때문이다. 앞에서 설명한대로, UPDATE와 DELETE는 기존의 인덱스를 삭제하지 않고 ''사용하지 않음'' 처리를 해준다고 하였다.  
만약 어떤 테이블에 UPDATE와 DELETE가 빈번하게 발생된다면 실제 데이터는 10만건이지만 인덱스는 100만 건이 넘어가게 되어, SQL문 처리 시 비대해진 인덱스에 의해 오히려 성능이 떨어지게 될 것이다.
', '데이터베이스', '인덱스', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (46, '# NoSQL

NoSQL은 비관계형 데이터베이스를 말한다. 즉, 관계형 데이터 모델을 지양 하며 대량의 분산된 데이터를 저장하고 조회하는 데 특화되었으며 스키마 없이 사용 가능하거나 느슨한 스키마를 제공하는 저장소를 말한다.

NoSQL은 기존 RDBMS 형태의 관계형 데이터베이스가 아닌 다른 형태의 데이터 저장 기술을 의미하며, 관계형 데이터베이스의 한계를 극복하기 위한 데이터 저장소의 새로운 형태이다.

## NoSQL 특징

1. RDBMS와 달리 데이터 간의 관계를 정의하지 않는다.  
   RDBMS는 데이터 관계를 외래키 등으로 정의하고 JOIN 연산을 수행할 수 있지만, NoSQL은 JOIN 연산이 불가능하다.
2. RDBMS에 비해 대용량의 데이터를 저장할 수 있다.  
   페타바이트 급의 대용량 데이터를 저장할 수 있다.

3. 분산형 구조이다.  
   여러 곳의 서버에 데이터를 분산 저장해 특정 서버에 장애가 발생했을 때도 데이터 유실 혹은 서비스 중지가 발생하지 않도록 한다.

4. 고정되지 않은 테이블 스키마를 갖는다.  
   RDBMS와 달리 테이블의 스키마가 유동적이다. 데이터를 저장하는 칼럼이 각기 다른 이름과 다른 데이터 타입을 갖는 것이 허용된다.

## NoSQL 장점

- RDBMS에 비해 저렴한 비용으로 분산처리와 병렬 처리 가능
- 비정형 데이터 구조 설계로 설계 비용 감소
- Big Data 처리에 효과적
- 가변적인 구조로 데이터 저장이 가능
- 데이터 모델의 유연한 변화가 가능

## NoSQL 단점

- 데이터 업데이트 중 장애가 발생하면 데이터 손실 발생 가능
- 많은 인덱스를 사용하려면 충분한 메모리가 필요. 인덱스 구조가 메모리에 저장
- 데이터 일관성이 항상 보장되지 않음
', '데이터베이스', 'NoSQL', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (47, '<img width= "100%" height="200px" src=https://user-images.githubusercontent.com/87989933/187015321-0a23c017-df5e-4eb3-895a-91580bfafb62.png>

# Redis란??

레디스(Redis)는 Remote Dictionary SErver의 약자로서, **"Key-Value" 구조의 비정형 데이터를 저장하고 관리하기 위한 오픈소스 기반의 비관계형 데이터베이스 관리 시스템(DBMS)이다.**  
인메모리 상태에서 데이터를 처리함으로써 흔히 사용하는 관계형 데이터베이스(RDS) 그리고 몽고 DB로 대표되는 문서형(Document) 데이터베이스보다도 빠르고 가볍게 동작한다.

<br/>

## 캐시 서버 (Cache Server)

DB가 있는데도 Redis라는 인메모리 데이터 구조 저장소를 사용하는 이유는??

DB는 데이터를 물리 디스크에 직접 쓰기 때문에, 서버에 문제가 발생하여 다운되더라도 데이터가 손실되지 않는다. 하지만, 매번 디스크에 접근해야 하기 때문에 사용자가 많아질수록 부하가 많아져서 느려질 수 있다.
일반적으로 서비스 운영 초반이거나 규모가 작은, 사용자가 많지않은 서비스의 경우에는 WEB - WAS - DB의 구조로도 DB에 무리가 가지않지만, 사용자가 많아지면 데이터베이스가 과부하 될 수 있기때문에, 캐시서버를 도입하여 사용한다.

캐시는 한번 읽어온 데이터를 임의의 공간에 저장하여 다음에 읽을 때는 빠르게 결과값을 받을 수 있도록 도와주는 공간이다. 같은 요청이 여러번 들어오는 경우 매번 데이터베이스를 거치지 않고, 캐시서버에서 첫번째 요청이후 저장된 결과값을 바로 내려주기 때문에 DB의 부하를 줄이고 서비스의 속도도 느려지지 않는 장점이 있다.

## 캐시서버 패턴

### Look aside cache

1. 클라이언트가 데이터를 요청
2. 웹서버는 데이터가 존재하는지 Cache 서버에 먼저 확인
3. Cache 서버에 데이터가 있으면 DB에 데이터를 조회하지 않고 Cache 서버에 있는 결과값을 클라이언트에게 바로 반환 (Cache Hit)
4. Cache 서버에 데이터가 없으면 DB에 데이터를 조회하여 Cache 서버에 저장하고 결과값을 클라이언트에게 반환 (Cache Miss)

### Write Back

1. 웹서버는 모든 데이터를 Cache 서버에 저장
2. Cache 서버에 특정 시간 동안 데이터가 저장됨
3. Cache 서버에 있는 데이터를 DB에 저장
4. DB에 저장된 Cache 서버의 데이터를 삭제

\\* 쿼리를 500번 날리지 않고, 500개를 붙여서 한번에 날리는 것이 효율적이라는 원리  
\\* 이 방식은 들어오는 데이터들이 저장되기 전에 메모리 공간에 머무르는데 이때 서버에 장애가 발생하여 다운된다면 데이터가 손실될 수 있다는 단점이 있다.

<br/>

## 레디스를 사용할때 2가지 방법

1. 로컬 환경에서 레디스를 호출한다.  
   AWS EC2를 예로 인스턴스에 레디스를 설치해 인스턴스 메모리를 사용해 레디스를 사용한다. 인스턴스의 메모리여유가 있다면 비용적인 측면으로나 사용성 측면으로 뛰어나다.

2. 클라우드 서비스를 사용해 외부 자원을 사용한다.  
   레드시 랩등의 서드파티 서비스를 사용해 레디스를 사용하게되면, 통신하는 웹 서버가 아무리 많아도 하나의 프레임워크 바인딩을 사용할 수 있다. 이 경우 레디스는 여러 웹 서버들의 공유 메모리 역할을 감당할 수 있다.

<br/>

## 언제 Redis를 사용할까?

운영중인 웹 서버에서 키-값 형태의 데이터 타입을 처리해야하고, I/O가 빈번히 발생해 다른 저장 방식을 사용하면 효율이 떨어지는 경우 사용한다.

### 조회수와 같은 카운트 형태의 I/O가 빈번한 데이터

- 레디스를 사용해 데이터를 캐싱처리하고, 일정한 주기에 따라 RDS에 업데이트하면, RDS에 가해지는 부담을 크게 줄이고, 성능은 크게 향상할 수 있다.

### 사용자의 세션 관리

- 사용자의 세션을 유지하고, 불러오고, 여러 활동들을 추적하는게 매우 효과적으로 사용할 수 있다.

### API 캐싱

- 라우트로 들어온 요청에 대해 요청값을 캐싱하면, 동일 요청에 대해 캐싱된 데이터를 리턴하는 방식이다.

<br/>

## 레디스의 데이터 구조

1. 문자열 (String) : 가장 일반적인 key - value 구조의 형태
2. 해시 (Hash)
3. 리스트 (List)
4. 셋 (Set)
5. 정령된 셋 (Sorted Set)

<br/>

## 레디스 스키마

레디스의 스키마는 **데이터를 정규화하고, 데이터의 로우에 대해 일관된 레퍼런스를 가질 수 있게 해주는 용도**로 존재한다.

ex) 사용자의 이메일, 닉네임, 최근 로그인 시간을 레디스에 저장

- user:userId:email:문자열
- user:userId:nickname:문자열
- user:userId:lastLogin:문자열

스키마를 활용하면 사용자 아이디에 해당하는 userId만 알아도 연결된 데이터인 email, nickname, lastLogin을 알 수 있다.

<br/>

## 레디스 키 삭제

레디스는 한번 생성한 키를 선택적으로 삭제하기 어렵다.

1. 일괄 삭제 - **FLUSHDB 명령어**를 통해 모든 키를 삭제한다.

2. 일정시간 이후 삭제 - 키를 저장할때 셋에 저장해 특정 시간이나 조건에 따라 삭제하는 방법으로, 실제 삭제라기보다 밀어내기의 방법이다.

3. 기간 만료 후 삭제 - 가장 많이 사용되는 방법으로, 키를 추적할 필요없이 쉽게 관리할 수 있다. key-value를 set 커맨드로 저장하여 expire커맨드로 기간만료시간을 설정하는 방법이다.

## 레디스 주의사항

- Single Thread  
  레디스는 Single Thread이기 때문에 한번에 하나의 명령만 처리할 수 있다. 그래서 중간에 처리시간이 긴 명령이 들어오면, 그 뒤에 명령들은 모두 앞의 명령이 끝날때 까지 대기해야한다.
- 서버에 장애가 발생했을 경우  
  인메모리 데이터 저장소의 특성상, 서버에 장애가 발생했을 경우 데이터 유실이 발생할 수 있다.
', '데이터베이스', '레디스(Redis)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (48, '# 커넥션 풀 이해

데이터베이스 커넥션을 획득 과정

<img src="https://user-images.githubusercontent.com/87989933/201578756-d3effad5-730b-461d-a157-adf73257a6dc.png" width=80%>

1. 애플리케이션 로직은 DB 드라이버를 통해 커넥션을 조회한다.
2. DB 드라이버는 DB와 TCP/IP 커넥션을 연결한다. 물론 이 과정에서 3 way handshake 같은 TCP/IP 연결을 위한 네트워크 동작이 발생한다.
3. DB 드라이버는 TCP/IP 커넥션이 연결되면 ID, PW와 기타 부가정보를 DB에 전달한다.
4. DB는 ID, PW를 통해 내부 인증을 완료하고, 내부에 DB 세션을 생성한다.
5. DB는 커넥션 생성이 완료되었다는 응답을 보낸다.
6. DB 드라이버는 커넥션 객체를 생성해서 클라이언트에 반환한다.

→ 이렇게 커넥션을 새로 만드는 것은 과정도 복잡하고 시간도 많이 많이 소모되는 일이다.
DB는 물론이고 애플리케이션 서버에서도 TCP/IP 커넥션을 새로 생성하기 위한 리소스를 매번 사용해야한다.

진짜 문제는 고객이 애플리케이션을 사용할 때, SQL을 실행하는 시간 뿐만 아니라 커넥션을 새로 만드는
시간이 추가되기 때문에 결과적으로 응답 속도에 영향을 준다.

→ 이런 문제를 한번에 해결하는 아이디어가 바로 **커넥션을 미리 생성해두고 사용하는 커넥션 풀**이라는 방법이다.
커넥션 풀은 이름 그대로 커넥션을 관리하는 풀(수영장 풀을 상상하면 된다.)이다.

## 커넥션 풀 동작

<img src="https://user-images.githubusercontent.com/87989933/201578907-96f81e40-75e2-45bc-8031-b04aac5a3fd9.png" width=80%>

애플리케이션을 시작하는 시점에 커넥션 풀은 필요한 만큼 커넥션을 미리 확보해서 풀에 보관한다. 보통 얼마나 보관할 지는 서비스의 특징과 서버 스펙에 따라 다르지만 기본값은 보통 10개이다.

<img src="https://user-images.githubusercontent.com/87989933/201579528-ee830578-ab49-4217-931e-77c157791cd7.png" width=80%>

커넥션 풀에 들어 있는 커넥션은 TCP/IP로 DB와 커넥션이 연결되어 있는 상태이기 때문에 언제든지 즉시 SQL을 DB에 전달할 수 있다.

<img src="https://user-images.githubusercontent.com/87989933/201579215-8e7bc778-c024-42b7-8f66-b8b14256d59c.png" width=80%>

애플리케이션 로직에서 이제는 DB 드라이버를 통해서 새로운 커넥션을 획득하는 것이 아니고,
커넥션 풀을 통해 이미 생성되어 있는 커넥션을 객체 참조로 그냥 가져다 쓰기만 하면 된다.
커넥션 풀에 커넥션을 요청하면 커넥션 풀은 자신이 가지고 있는 커넥션 중에 하나를 반환한다.

<img src="https://user-images.githubusercontent.com/87989933/201578997-93786d4f-68d6-4e6a-bf1f-703e69de056b.png" width=80%>

애플리케이션 로직은 커넥션 풀에서 받은 커넥션을 사용해서 SQL을 데이터베이스에 전달하고 그 결과를 받아서 처리한다.
커넥션을 모두 사용하고 나면 이제는 커넥션을 종료하는 것이 아니라, 다음에 다시 사용할 수 있도록 해당 커넥션을 그대로 커넥션 풀에 반환하면 된다. 여기서 주의할 점은 커넥션을 종료하는 것이 아니라 **커넥션이 살아있는 상태로 커넥션 풀에 반환**해야 한다는 것이다. (종료하면 TCP/IP 연결이 끊어짐)

- 커넥션 풀은 서버당 최대 커넥션 수를 제한할 수 있어서, DB에 무한정 연결이 생성되는 것을 막아주어서 DB를 보호할 수 있다. 커넥션 풀은 얻는 이점이 매우 크기 때문에 **실무에서는 항상 기본으로 사용**한다.

- 대표적인 커넥션 풀 오픈소스는 commons-dbcp2 , tomcat-jdbc pool , HikariCP 등이 있다.
  성능과 사용의 편리함 측면에서 최근에는 **hikariCP** 를 주로 사용한다. 스프링 부트 2.0 부터는 기본
  커넥션 풀로 hikariCP 를 제공한다. 성능, 사용의 편리함, 안전성 측면에서 이미 검증이 되었기 때문에
  커넥션 풀을 사용할 때는 고민할 것 없이 hikariCP 를 사용하면 된다. 실무에서도 레거시 프로젝트가 아닌
  이상 대부분 hikariCP 를 사용한다.
', '데이터베이스', '커넥션 풀', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (49, '# DataSource 이해

DataSource 는 **커넥션을 획득하는 방법을 추상화** 하는 인터페이스이다.

**DriverManager를 통해 커넥션 획득하다가 커넥션 풀로 변경시 문제**

<img src="https://user-images.githubusercontent.com/87989933/201579860-0b5fb261-1325-47bc-8b08-6e68862f4bba.png" width=80%>

애플리케이션 로직에서 DriverManager 를 사용해서 커넥션을 획득하다가 HikariCP 같은 커넥션 풀을 사용하도록 변경하면 커넥션을 획득하는 애플리케이션 코드도 함께 변경해야 한다. 의존관계가 DriverManager 에서 HikariCP 로 변경되기 때문이다.

→ **커넥션을 획득하는 방법을 추상화**

<img src="https://user-images.githubusercontent.com/87989933/201579990-bb98932c-2a9d-4d1b-b903-48c168d28da2.png" width=80%>

자바에서는 이런 문제를 해결하기 위해 javax.sql.DataSource 라는 인터페이스를 제공한다.

DataSource 는 **커넥션을 획득하는 방법을 추상화** 하는 인터페이스이다.
이 인터페이스의 핵심 기능은 커넥션 조회 하나이다. (다른 일부 기능도 있지만 크게 중요하지 않다.)

**정리**

대부분의 커넥션 풀은 DataSource 인터페이스를 이미 구현해두었다. 따라서 개발자는 DBCP2 커넥션 풀 ,
HikariCP 커넥션 풀 의 코드를 직접 의존하는 것이 아니라 DataSource 인터페이스에만 의존하도록 애플리케이션 로직을 작성하면 된다. 커넥션 풀 구현 기술을 변경하고 싶으면 해당 구현체로 갈아끼우기만 하면 된다.

DriverManager 는 DataSource 인터페이스를 사용하지 않는다. 따라서 DriverManager 는 직접
사용해야 한다. 따라서 DriverManager 를 사용하다가 DataSource 기반의 커넥션 풀을 사용하도록
변경하면 관련 코드를 다 고쳐야 한다. 이런 문제를 해결하기 위해 스프링은 DriverManager 도
DataSource 를 통해서 사용할 수 있도록 DriverManagerDataSource 라는 DataSource 를 구현한
클래스를 제공한다.

자바는 DataSource 를 통해 커넥션을 획득하는 방법을 추상화했다. 이제 애플리케이션 로직은
DataSource 인터페이스에만 의존하면 된다. 덕분에 DriverManagerDataSource 를 통해서
DriverManager 를 사용하다가 커넥션 풀을 사용하도록 코드를 변경해도 애플리케이션 로직은 변경하지
않아도 된다.

### DriverManagerDataSource vs DriverManager

<img src="https://user-images.githubusercontent.com/87989933/201579908-44e023f2-a14e-4181-827a-c8219711116c.png" width=80%>

DriverManager 는 커넥션을 획득할 때 마다 URL , USERNAME , PASSWORD 같은 파라미터를 계속 전달해야 한다. 반면에 DataSource 를 사용하는 방식은 처음 객체를 생성할 때만 필요한 파리미터를 넘겨두고, 커넥션을 획득할 때는 단순히 dataSource.getConnection() 만 호출하면 된다.

**→ 설정과 사용의 분리**

- **설정**: DataSource 를 만들고 필요한 속성들을 사용해서 URL , USERNAME , PASSWORD 같은 부분을 입력하는 것을 말한다. 이렇게 설정과 관련된 속성들은 한 곳에 있는 것이 향후 변경에 더 유연하게 대처할 수 있다.
- **사용**: 설정은 신경쓰지 않고, DataSource 의 getConnection() 만 호출해서 사용하면 된다.

**데이터소스 커넥션 풀**

<img src="https://user-images.githubusercontent.com/87989933/201580025-f07f9627-0bb9-4c4e-86a9-fa8f3bdd7c70.png" width=80%>

HikariCP 커넥션 풀을 사용한다

커넥션 풀에서 커넥션을 생성하는 작업은 애플리케이션 실행 속도에 영향을 주지 않기 위해 별도의 쓰레드에서 작동한다. 별도의 쓰레드에서 동작하기 때문에 테스트가 먼저 종료되어 버린다. 예제처럼 Thread.sleep 을 통해 대기 시간을 주어야 쓰레드 풀에 커넥션이 생성되는 로그를 확인할 수 있다.

- **MyPool connection adder**

별도의 쓰레드 사용해서 커넥션 풀에 커넥션을 채우고 있는 것을 확인할 수 있다. 이 쓰레드는 커넥션 풀에
커넥션을 최대 풀 수( 10 )까지 채운다.

**그렇다면 왜 별도의 쓰레드를 사용해서 커넥션 풀에 커넥션을 채우는 것일까?**

커넥션 풀에 커넥션을 채우는 것은 상대적으로 오래 걸리는 일이다. 애플리케이션을 실행할 때 커넥션 풀을
채울 때 까지 마냥 대기하고 있다면 애플리케이션 실행 시간이 늦어진다. 따라서 이렇게 **별도의 쓰레드를**
**사용해서 커넥션 풀을 채워야 애플리케이션 실행 시간에 영향을 주지 않는다.**

### DataSource 적용

DataSource 는 표준 인터페이스 이기 때문에 DriverManagerDataSource 에서 HikariDataSource 로 변경되어도 해당 코드를 변경하지 않아도 된다.

- JdbcUtils 편의 메서드

스프링은 JDBC를 편리하게 다룰 수 있는 JdbcUtils 라는 편의 메서드로 커넥션을 좀 더 편리하게 닫을 수 있다.
JdbcUtils.closeResultSet(rs) .closeStatement(stmt) .closeConnection(con)
', '데이터베이스', '데이터 소스 (DataSource)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (61, '## 운영 체제란 무엇인가?

> **운영 체제(OS, Operating System)**
>
> : 하드웨어를 관리하고, 컴퓨터 시스템의 자원들을 효율적으로 관리하며, 응용 프로그램과 하드웨어 간의 인터페이스로써 다른 응용 프로그램이 유용한 작업을 할 수 있도록 환경을 제공해준다.
>
> 즉, 운영 체제는 **사용자가 컴퓨터를 편리하고 효과적으로 사용할 수 있도록 환경을 제공하는 시스템 소프트웨어**라고 할 수 있다.
>
> (*종류로는 Windows, Linux, UNIX, MS-DOS 등이 있으며, 시스템의 역할 구분에 따라 각각 용이점이 있다.*)

<br>

---

### [ 운영체제의 역할 ]

<br>

##### 1. 프로세스 관리

- 프로세스, 스레드
- 스케줄링
- 동기화
- IPC 통신

##### 2. 저장장치 관리

- 메모리 관리
- 가상 메모리
- 파일 시스템

##### 3. 네트워킹

- TCP/IP
- 기타 프로토콜

##### 4. 사용자 관리

- 계정 관리
- 접근권한 관리

##### 5. 디바이스 드라이버

- 순차접근 장치
- 임의접근 장치
- 네트워크 장치

<br>

---

### [ 각 역할에 대한 자세한 설명 ]

<br>

### 1. 프로세스 관리

운영체제에서 작동하는 응용 프로그램을 관리하는 기능이다.

어떤 의미에서는 프로세서(CPU) 관리하는 것이라고 볼 수도 있다. 현재 CPU를 점유해야 할 프로세스를 결정하고, 실제로 CPU를 프로세스에 할당하며, 이 프로세스 간 공유 자원 접근과 통신 등을 관리하게 된다.

<br>

### 2. 저장장치 관리

1차 저장장치에 해당하는 메인 메모리와 2차 저장장치에 해당하는 하드디스크, NAND 등을 관리하는 기능이다.

- 1차 저장장치(Main Memory)
  - 프로세스에 할당하는 메모리 영역의 할당과 해제
  - 각 메모리 영역 간의 침범 방지
  - 메인 메모리의 효율적 활용을 위한 가상 메모리 기능
- 2차 저장장치(HDD, NAND Flash Memory 등)
  - 파일 형식의 데이터 저장
  - 이런 파일 데이터 관리를 위한 파일 시스템을 OS에서 관리
  - `FAT, NTFS, EXT2, JFS, XFS` 등 많은 파일 시스템들이 개발되어 사용 중
  <br>
### 3. 네트워킹

네트워킹은 컴퓨터 활용의 핵심과도 같아졌다.

TCP/IP 기반의 인터넷에 연결하거나, 응용 프로그램이 네트워크를 사용하려면 **운영체제에서 네트워크 프로토콜을 지원**해야 한다. 현재 상용 OS들은 다양하고 많은 네트워크 프로토콜을 지원한다.

이처럼 운영체제는 사용자와 컴퓨터 하드웨어 사이에 위치해서, 하드웨어를 운영 및 관리하고 명령어를 제어하여 응용 프로그램 및 하드웨어를 소프트웨어적으로 제어 및 관리를 해야한다.
<br>
### 4. 사용자 관리

우리가 사용하는 PC는 오직 한 사람만의 것일까? 아니다.

하나의 PC로도 여러 사람이 사용하는 경우가 많다. 그래서 운영체제는 한 컴퓨터를 여러 사람이 사용하는 환경도 지원해야 한다. 가족들이 각자의 계정을 만들어 PC를 사용한다면, 이는 하나의 컴퓨터를 여러 명이 사용한다고 말할 수 있다.

따라서, 운영체제는 각 계정을 관리할 수 있는 기능이 필요하다. 사용자 별로 프라이버시와 보안을 위해 개인 파일에 대해선 다른 사용자가 접근할 수 없도록 해야 한다. 이 밖에도 파일이나 시스템 자원에 접근 권한을 지정할 수 있도록 지원하는 것이 사용자 관리 기능이다.
<br>
### 5. 디바이스 드라이버

운영체제는 시스템의 자원, 하드웨어를 관리한다. 시스템에는 여러 하드웨어가 붙어있는데, 이들을 운영체제에서 인식하고 관리하게 만들어 응용 프로그램이 하드웨어를 사용할 수 있게 만들어야 한다.

따라서, 운영체제 안에 하드웨어를 추상화 해주는 계층이 필요하다. 이 계층이 바로 디바이스 드라이버라고 불린다. 하드웨어의 종류가 많은 만큼, 운영체제 내부의 디바이스 드라이버도 많이 존재한다.

이러한 수많은 디바이스 드라이버들을 관리하는 기능 또한 운영체제가 맡고 있다.

---

<br>

##### [참고 자료 및 주제와 관련하여 참고하면 좋은 곳 링크]

- 도서 - ''도전 임베디드 OS 만들기'' *( 이만우 저, 인사이트 출판 )*
- 글 - ''운영체제란 무엇인가?'' *( https://coding-factory.tistory.com/300 )*', '운영체제', '운영체제 (Operation System)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (62, '## 프로세스의 주소 공간

> 프로그램이 CPU에 의해 실행됨 → 프로세스가 생성되고 메모리에 **''프로세스 주소 공간''**이 할당됨

프로세스 주소 공간에는 코드, 데이터, 스택으로 이루어져 있다.

- **코드 Segment** : 프로그램 소스 코드 저장
- **데이터 Segment** : 전역 변수 저장
- **스택 Segment** : 함수, 지역 변수 저장

<br>

***왜 이렇게 구역을 나눈건가요?***

최대한 데이터를 공유하여 메모리 사용량을 줄여야 합니다. 

Code는 같은 프로그램 자체에서는 모두 같은 내용이기 때문에 따로 관리하여 공유함

Stack과 데이터를 나눈 이유는, 스택 구조의 특성과 전역 변수의 활용성을 위한 것!

<br>

<img src="https://t1.daumcdn.net/cfile/tistory/2174013858F1BED70A">

```
프로그램의 함수와 지역 변수는, LIFO(가장 나중에 들어간게 먼저 나옴)특성을 가진 스택에서 실행된다. 
따라서 이 함수들 안에서 공통으로 사용하는 ''전역 변수''는 따로 지정해주면 메모리를 아낄 수 있다.
```', '운영체제', '프로세스의 주소 공간 (Process Address Space)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (63, '## PCB & Context Switching

<br>

#### Process Management

> CPU가 프로세스가 여러개일 때, CPU 스케줄링을 통해 관리하는 것을 말함

이때, CPU는 각 프로세스들이 누군지 알아야 관리가 가능함

프로세스들의 특징을 갖고있는 것이 바로 `Process Metadata`

- Process Metadata
  - Process ID
  - Process State
  - Process Priority
  - CPU Registers
  - Owner
  - CPU Usage
  - Memeory Usage

이 메타데이터는 프로세스가 생성되면 `PCB(Process Control Block)`이라는 곳에 저장됨

<br>

#### PCB(Process Control Block)

> 프로세스 메타데이터들을 저장해 놓는 곳, 한 PCB 안에는 한 프로세스의 정보가 담김

<img src="https://t1.daumcdn.net/cfile/tistory/25673A5058F211C224" width="400">

##### 다시 정리해보면?

```
프로그램 실행 → 프로세스 생성 → 프로세스 주소 공간에 (코드, 데이터, 스택) 생성 
→ 이 프로세스의 메타데이터들이 PCB에 저장
```

<br>

##### PCB가 왜 필요한가요?

> CPU에서는 프로세스의 상태에 따라 교체작업이 이루어진다. (interrupt가 발생해서 할당받은 프로세스가 wating 상태가 되고 다른 프로세스를 running으로 바꿔 올릴 때)
>
> 이때, **앞으로 다시 수행할 대기 중인 프로세스에 관한 저장 값을 PCB에 저장해두는 것**이다.

##### PCB는 어떻게 관리되나요?

> Linked List 방식으로 관리함
>
> PCB List Head에 PCB들이 생성될 때마다 붙게 된다. 주소값으로 연결이 이루어져 있는 연결리스트이기 때문에 삽입 삭제가 용이함.
>
> 즉, 프로세스가 생성되면 해당 PCB가 생성되고 프로세스 완료시 제거됨

<br>

<br>

이렇게 수행 중인 프로세스를 변경할 때, CPU의 레지스터 정보가 변경되는 것을 `Context Switching`이라고 한다.

#### Context Switching

> CPU가 이전의 프로세스 상태를 PCB에 보관하고, 또 다른 프로세스의 정보를 PCB에 읽어 레지스터에 적재하는 과정

보통 인터럽트가 발생하거나, 실행 중인 CPU 사용 허가시간을 모두 소모하거나, 입출랙을 위해 대기해야 하는 경우에 Context Switching이 발생

`즉, 프로세스가 Ready → Running, Running → Ready, Running → Waiting처럼 상태 변경 시 발생!` 

<br>

##### Context Switching의 OverHead란?

overhead는 과부하라는 뜻으로 보통 안좋은 말로 많이 쓰인다.

하지만 프로세스 작업 중에는 OverHead를 감수해야 하는 상황이 있다.

```
프로세스를 수행하다가 입출력 이벤트가 발생해서 대기 상태로 전환시킴
이때, CPU를 그냥 놀게 놔두는 것보다 다른 프로세스를 수행시키는 것이 효율적
```

즉, CPU에 계속 프로세스를 수행시키도록 하기 위해서 다른 프로세스를 실행시키고 Context Switching 하는 것

CPU가 놀지 않도록 만들고, 사용자에게 빠르게 일처리를 제공해주기 위한 것이다.', '운영체제', '프로세스 관리와 제어 (Process Management & PCB)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (64, '# 프로세스 & 스레드

<br>

> **프로세스** : 프로그램을 메모리 상에서 실행중인 작업
>
> **스레드** : 프로세스 안에서 실행되는 여러 흐름 단위

<br>

기본적으로 프로세스마다 최소 1개의 스레드 소유 (메인 스레드 포함)

<br>

![img](https://camo.githubusercontent.com/3dc4ad61f03160c310a855a4bd68a9f2a2c9a4c7/68747470733a2f2f74312e6461756d63646e2e6e65742f6366696c652f746973746f72792f393938383931343635433637433330363036)



프로세스는 각각 별도의 주소공간 할당 (독립적)

- Code : 코드 자체를 구성하는 메모리 영역(프로그램 명령)

- Data : 전역변수, 정적변수, 배열 등
    - 초기화 된 데이터는 data 영역에 저장
    - 초기화 되지 않은 데이터는 bss 영역에 저장
    
- Heap : 동적 할당 시 사용 (new(), malloc() 등)

- Stack : 지역변수, 매개변수, 리턴 값 (임시 메모리 영역)

<br>

스레드는 Stack만 따로 할당 받고 나머지 영역은 서로 공유

<br>

하나의 프로세스가 생성될 때, 기본적으로 하나의 스레드 같이 생성

<br>

**프로세스는 자신만의 고유 공간과 자원을 할당받아 사용**하는데 반해, **스레드는 다른 스레드와 공간, 자원을 공유하면서 사용**하는 차이가 존재함

<br>

<br>

##### 멀티프로세스

> 하나의 프로그램을 여러개의 프로세스로 구성하여 각 프로세스가 병렬적으로 작업을 수행하는 것

**장점** : 안전성 (메모리 침범 문제를 OS 차원에서 해결)

**단점** : 각각 독립된 메모리 영역을 갖고 있어, 작업량 많을 수록 오버헤드 발생. Context Switching으로 인한 성능 저하

<br>

***Context Switching*이란?**

> 프로세스의 상태 정보를 저장하고 복원하는 일련의 과정
>
> 즉, 동작 중인 프로세스가 대기하면서 해당 프로세스의 상태를 보관하고, 대기하고 있던 다음 순번의 프로세스가 동작하면서 이전에 보관했던 프로세스 상태를 복구하는 과정을 말함
>
> → 프로세스는 각 독립된 메모리 영역을 할당받아 사용되므로, 캐시 메모리 초기화와 같은 무거운 작업이 진행되었을 때 오버헤드가 발생할 문제가 존재함

<br>

<br>

##### 멀티 스레드

> 하나의 응용 프로그램에서 여러 스레드를 구성해 각 스레드가 하나의 작업을 처리하는 것

스레드들이 공유 메모리를 통해 다수의 작업을 동시에 처리하도록 해줌

<br>

**장점** : 독립적인 프로세스에 비해 공유 메모리만큼의 시간, 자원 손실이 감소
전역 변수와 정적 변수에 대한 자료 공유 가능

**단점** : 안전성 문제. 하나의 스레드가 데이터 공간 망가뜨리면, 모든 스레드가 작동 불능 상태 (공유 메모리를 갖기 때문) 

- 멀티스레드의 안전성에 대한 단점은 Critical Section 기법을 통해 대비함

  > 하나의 스레드가 공유 데이터 값을 변경하는 시점에 다른 스레드가 그 값을 읽으려할 때 발생하는 문제를 해결하기 위한 동기화 과정
  >
  > ```
  > 상호 배제, 진행, 한정된 대기를 충족해야함
  > ```
', '운영체제', '프로세스와 스레드 (Process vs Thread)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (65, '## 인터럽트(Interrupt)

##### 정의

프로그램을 실행하는 도중에 예기치 않은 상황이 발생할 경우 현재 실행 중인 작업을 즉시 중단하고, 발생된 상황에 대한 우선 처리가 필요함을 CPU에게 알리는 것
<br>

지금 수행 중인 일보다 더 중요한 일(ex. 입출력, 우선 순위 연산 등)이 발생하면 그 일을 먼저 처리하고 나서 하던 일을 계속해야한다.

<br>

외부/내부 인터럽트는 `CPU의 하드웨어 신호에 의해 발생`

소프트웨어 인터럽트는 `명령어의 수행에 의해 발생`

- ##### 외부 인터럽트

  입출력 장치, 타이밍 장치, 전원 등 외부적인 요인으로 발생

  `전원 이상, 기계 착오, 외부 신호, 입출력`

  <br>

- ##### 내부 인터럽트

  Trap이라고 부르며, 잘못된 명령이나 데이터를 사용할 때 발생

  > 0으로 나누기가 발생, 오버플로우, 명령어를 잘못 사용한 경우 (Exception)

- ##### 소프트웨어 인터럽트

  프로그램 처리 중 명령의 요청에 의해 발생한 것 (SVC 인터럽트)

  > 사용자가 프로그램을 실행시킬 때 발생
  >
  > 소프트웨어 이용 중에 다른 프로세스를 실행시키면 시분할 처리를 위해 자원 할당 동작이 수행된다.

<br>

#### 인터럽트 발생 처리 과정

<img src=" https://mblogthumb-phinf.pstatic.net/20160310_124/scw0531_14575366291105WjS7_PNG/ERTRTETRE.png?type=w2 ">

주 프로그램이 실행되다가 인터럽트가 발생했다.

현재 수행 중인 프로그램을 멈추고, 상태 레지스터와 PC 등을 스택에 잠시 저장한 뒤에 인터럽트 서비스 루틴으로 간다. (잠시 저장하는 이유는, 인터럽트 서비스 루틴이 끝난 뒤 다시 원래 작업으로 돌아와야 하기 때문)

만약 **인터럽트 기능이 없었다면**, 컨트롤러는 특정한 어떤 일을 할 시기를 알기 위해 계속 체크를 해야 한다. (이를 **폴링(Polling)**이라고 한다)

폴링을 하는 시간에는 원래 하던 일에 집중할 수가 없게 되어 많은 기능을 제대로 수행하지 못하는 단점이 있었다.

<br>

즉, 컨트롤러가 입력을 받아들이는 방법(우선순위 판별방법)에는 두가지가 있다.

- ##### 폴링 방식

  사용자가 명령어를 사용해 입력 핀의 값을 계속 읽어 변화를 알아내는 방식

  인터럽트 요청 플래그를 차례로 비교하여 우선순위가 가장 높은 인터럽트 자원을 찾아 이에 맞는 인터럽트 서비스 루틴을 수행한다. (하드웨어에 비해 속도 느림)

- ##### 인터럽트 방식

  MCU 자체가 하드웨적으로 변화를 체크하여 변화 시에만 일정한 동작을 하는 방식

  - Daisy Chain
  - 병렬 우선순위 부여 

<br>

인터럽트 방식은 하드웨어로 지원을 받아야 하는 제약이 있지만, 폴링에 비해 신속하게 대응하는 것이 가능하다. 따라서 **''실시간 대응''**이 필요할 때는 필수적인 기능이다.

<br>

즉, 인터럽트는 **발생시기를 예측하기 힘든 경우에 컨트롤러가 가장 빠르게 대응할 수 있는 방법**이다.
', '운영체제', '인터럽트 (Interrupt)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (66, '#### System Call

---

fork( ), exec( ), wait( )와 같은 것들은 Process 생성과 제어를 위한 System call임.

- fork, exec는 새로운 Process 생성과 관련이 되어 있다.
- wait는 Process (Parent)가 만든 다른 Process(child) 가 끝날 때까지 기다리는 명령어임.

---

##### Fork

> 새로운 Process를 생성할 때 사용.
>
> 그러나, 이상한 방식임.

```c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char *argv[]) {
    printf("pid : %d", (int) getpid()); // pid : 29146
    
    int rc = fork();					// 주목
    
    if (rc < 0) {
        exit(1);
    }									// (1) fork 실패
    else if (rc == 0) {					// (2) child 인 경우 (fork 값이 0)
        printf("child (pid : %d)", (int) getpid());
    }
    else {								// (3) parent case
        printf("parent of %d (pid : %d)", rc, (int)getpid());
    }
}
```

> pid : 29146
>
> parent of 29147 (pid : 29146)
>
> child (pid : 29147)

을 출력함 (parent와 child의 순서는 non-deterministic함. 즉, 확신할 수 없음. scheduler가 결정하는 일임.)

[해석]

PID :  프로세스 식별자. UNIX 시스템에서는 PID는 프로세스에게 명령을 할 때 사용함.

Fork()가 실행되는 순간. 프로세스가 하나 더 생기는데, 이 때 생긴 프로세스(Child)는 fork를 만든 프로세스(Parent)와 (almost) 동일한 복사본을 갖게 된다. **<u>이 때 OS는 위와 똑같은 2개의 프로그램이 동작한다고 생각하고, fork()가 return될 차례라고 생각한다.</u>** 그 때문에 새로 생성된 Process (child)는 main에서 시작하지 않고, if 문부터 시작하게 된다.

그러나, 차이점이 있었다. 바로 child와 parent의 fork() 값이 다르다는 점이다.
 따라서, 완전히 동일한 복사본이라 할 수 없다. 

> Parent의 fork()값 => child의 pid 값
>
> Child의 fork()값 => 0

Parent와 child의 fork 값이 다르다는 점은 매우 유용한 방식이다.

그러나! Scheduler가 부모를 먼저 수행할지 아닐지 확신할 수 없다. 따라서 아래와 같이 출력될 수 있다.

> pid : 29146
>
> child (pid : 29147)
>
> parent of 29147 (pid : 29146)

----

##### wait

> child 프로세스가 종료될 때까지 기다리는 작업

위의 예시에 int wc = wait(NULL)만 추가함.

```C
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char *argv[]) {
    printf("pid : %d", (int) getpid()); // pid : 29146
    
    int rc = fork();					// 주목
    
    if (rc < 0) {
        exit(1);
    }									// (1) fork 실패
    else if (rc == 0) {					// (2) child 인 경우 (fork 값이 0)
        printf("child (pid : %d)", (int) getpid());
    }
    else {								// (3) parent case
        int wc = wait(NULL)				// 추가된 부분
        printf("parent of %d (wc : %d / pid : %d)", wc, rc, (int)getpid());
    }
}
```

> pid : 29146
>
> child (pid : 29147)
>
> parent of 29147 (wc : 29147 / pid : 29146)

wait를 통해서, child의 실행이 끝날 때까지 기다려줌. parent가 먼저 실행되더라도, wait ()는 child가 끝나기 전에는 return하지 않으므로, 반드시 child가 먼저 실행됨.

----

##### exec

단순 fork는 동일한 프로세스의 내용을 여러 번 동작할 때 사용함.

child에서는 parent와 다른 동작을 하고 싶을 때는 exec를 사용할 수 있음.

```c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(int argc, char *argv[]) {
    printf("pid : %d", (int) getpid()); // pid : 29146
    
    int rc = fork();					// 주목
    
    if (rc < 0) {
        exit(1);
    }									// (1) fork 실패
    else if (rc == 0) {					// (2) child 인 경우 (fork 값이 0)
        printf("child (pid : %d)", (int) getpid());
        char *myargs[3];
        myargs[0] = strdup("wc");		// 내가 실행할 파일 이름
        myargs[1] = strdup("p3.c");		// 실행할 파일에 넘겨줄 argument
        myargs[2] = NULL;				// end of array
        execvp(myarges[0], myargs);		// wc 파일 실행.
        printf("this shouldn''t print out") // 실행되지 않음.
    }
    else {								// (3) parent case
        int wc = wait(NULL)				// 추가된 부분
        printf("parent of %d (wc : %d / pid : %d)", wc, rc, (int)getpid());
    }
}
```

exec가 실행되면, 

execvp( 실행 파일, 전달 인자 ) 함수는, code segment 영역에 실행 파일의 코드를 읽어와서 덮어 씌운다.

씌운 이후에는,  heap, stack, 다른 메모리 영역이 초기화되고, OS는 그냥 실행한다. 즉, 새로운 Process를 생성하지 않고, 현재 프로그램에 wc라는 파일을 실행한다. 그로인해서, execvp() 이후의 부분은 실행되지 않는다.', '운영체제', '시스템 콜 (System Call)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (67, '# CPU Scheduling

<br>

### 1. 스케줄링

> CPU 를 잘 사용하기 위해 프로세스를 잘 배정하기

- 조건 : 오버헤드 ↓ / 사용률 ↑ / 기아 현상 ↓
- 목표
    1. `Batch System`: 가능하면 많은 일을 수행. 시간(time) 보단 처리량(throughout)이 중요
    2. `Interactive System`: 빠른 응답 시간. 적은 대기 시간.
    3. `Real-time System`: 기한(deadline) 맞추기.

### 2. 선점 / 비선점 스케줄링

- 선점 (preemptive) : OS가 CPU의 사용권을 선점할 수 있는 경우, 강제 회수하는 경우 (처리시간 예측 어려움)
- 비선점 (nonpreemptive) : 프로세스 종료 or I/O 등의 이벤트가 있을 때까지 실행 보장 (처리시간 예측 용이함)

### 3. 프로세스 상태

![download (5)](https://user-images.githubusercontent.com/13609011/91695344-f2dfae80-eba8-11ea-9a9b-702192316170.jpeg)
- 선점 스케줄링 : `Interrupt`, `I/O or Event Completion`, `I/O or Event Wait`, `Exit`
- 비선점 스케줄링 : `I/O or Event Wait`, `Exit`

---

**프로세스의 상태 전이**

✓ **승인 (Admitted)** : 프로세스 생성이 가능하여 승인됨.

✓ **스케줄러 디스패치 (Scheduler Dispatch)** : 준비 상태에 있는 프로세스 중 하나를 선택하여 실행시키는 것.

✓ **인터럽트 (Interrupt)** : 예외, 입출력, 이벤트 등이 발생하여 현재 실행 중인 프로세스를 준비 상태로 바꾸고, 해당 작업을 먼저 처리하는 것.

✓ **입출력 또는 이벤트 대기 (I/O or Event wait)** : 실행 중인 프로세스가 입출력이나 이벤트를 처리해야 하는 경우, 입출력/이벤트가 모두 끝날 때까지 대기 상태로 만드는 것.

✓ **입출력 또는 이벤트 완료 (I/O or Event Completion)** : 입출력/이벤트가 끝난 프로세스를 준비 상태로 전환하여 스케줄러에 의해 선택될 수 있도록 만드는 것.

### 4. CPU 스케줄링의 종류

- 비선점 스케줄링
    1. FCFS (First Come First Served)
        - 큐에 도착한 순서대로 CPU 할당
        - 실행 시간이 짧은 게 뒤로 가면 평균 대기 시간이 길어짐
    2. SJF (Shortest Job First)
        - 수행시간이 가장 짧다고 판단되는 작업을 먼저 수행
        - FCFS 보다 평균 대기 시간 감소, 짧은 작업에 유리
    3. HRN (Hightest Response-ratio Next)
        - 우선순위를 계산하여 점유 불평등을 보완한 방법(SJF의 단점 보완)
        - 우선순위 = (대기시간 + 실행시간) / (실행시간)

- 선점 스케줄링
    1. Priority Scheduling
        - 정적/동적으로 우선순위를 부여하여 우선순위가 높은 순서대로 처리
        - 우선 순위가 낮은 프로세스가 무한정 기다리는 Starvation 이 생길 수 있음
        - Aging 방법으로 Starvation 문제 해결 가능
    2. Round Robin
        - FCFS에 의해 프로세스들이 보내지면 각 프로세스는 동일한 시간의 `Time Quantum` 만큼 CPU를 할달 받음
            - `Time Quantum` or `Time Slice` : 실행의 최소 단위 시간
        - 할당 시간(`Time Quantum`)이 크면 FCFS와 같게 되고, 작으면 문맥 교환 (Context Switching) 잦아져서 오버헤드 증가
    3. Multilevel-Queue (다단계 큐)
    
        ![Untitled1](https://user-images.githubusercontent.com/13609011/91695428-16a2f480-eba9-11ea-8d91-17d22bab01e5.png)
        - 작업들을 여러 종류의 그룹으로 나누어 여러 개의 큐를 이용하는 기법
        ![Untitled](https://user-images.githubusercontent.com/13609011/91695480-2a4e5b00-eba9-11ea-8dbf-390bf0a73c10.png)

        - 우선순위가 낮은 큐들이 실행 못하는 걸 방지하고자 각 큐마다 다른 `Time Quantum`을 설정 해주는 방식 사용
        - 우선순위가 높은 큐는 작은 `Time Quantum` 할당. 우선순위가 낮은 큐는 큰 `Time Quantum` 할당.
    4. Multilevel-Feedback-Queue (다단계 피드백 큐)

        ![Untitled2](https://user-images.githubusercontent.com/13609011/91695489-2cb0b500-eba9-11ea-8578-6602fee742ed.png)

        - 다단계 큐에서 자신의 `Time Quantum`을 다 채운 프로세스는 밑으로 내려가고 자신의 `Time Quantum`을 다 채우지 못한 프로세스는 원래 큐 그대로
            - Time Quantum을 다 채운 프로세스는 CPU burst 프로세스로 판단하기 때문
        - 짧은 작업에 유리, 입출력 위주(Interrupt가 잦은) 작업에 우선권을 줌
        - 처리 시간이 짧은 프로세스를 먼저 처리하기 때문에 Turnaround 평균 시간을 줄옂줌

### 5. CPU 스케줄링 척도

1. Response Time
    - 작업이 처음 실행되기까지 걸린 시간
2. Turnaround Time
    - 실행 시간과 대기 시간을 모두 합한 시간으로 작업이 완료될 때 까지 걸린 시간

---

### 출처

- 스케줄링 목표 : [링크](https://jhnyang.tistory.com/29?category=815411)
- 프로세스 전이도 그림 출처 : [링크](https://rebas.kr/852)
- CPU 스케줄링 종류 및 정의 참고 : [링크](https://m.blog.naver.com/PostView.nhn?blogId=so_fragrant&logNo=80056608452&proxyReferer=https:%2F%2Fwww.google.com%2F)
- 다단계큐 참고 : [링크](https://jhnyang.tistory.com/28)
- 다단계 피드백 큐 참고 : [링크](https://jhnyang.tistory.com/156)', '운영체제', 'CPU 스케줄링 (CPU Scheduling)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (68, '### 페이지 교체 알고리즘

---

> 페이지 부재 발생 → 새로운 페이지를 할당해야 함 → 현재 할당된 페이지 중 어떤 것 교체할 지 결정하는 방법

<br>

- 좀 더 자세하게 생각해보면?

가상 메모리는 `요구 페이지 기법`을 통해 필요한 페이지만 메모리에 적재하고 사용하지 않는 부분은 그대로 둠

하지만 필요한 페이지만 올려도 메모리는 결국 가득 차게 되고, 올라와있던 페이지가 사용이 다 된 후에도 자리만 차지하고 있을 수 있음

따라서 메모리가 가득 차면, 추가로 페이지를 가져오기 위해서 안쓰는 페이지는 out하고, 해당 공간에 현재 필요한 페이지를 in 시켜야 함

여기서 어떤 페이지를 out 시켜야할 지 정해야 함. (이때 out 되는 페이지를 victim page라고 부름) 

기왕이면 수정이 되지 않는 페이지를 선택해야 좋음
(Why? : 만약 수정되면 메인 메모리에서 내보낼 때, 하드디스크에서 또 수정을 진행해야 하므로 시간이 오래 걸림)

> 이와 같은 상황에서 상황에 맞는 페이지 교체를 진행하기 위해 페이지 교체 알고리즘이 존재하는 것!

<br>

##### Page Reference String

> CPU는 논리 주소를 통해 특정 주소를 요구함
>
> 메인 메모리에 올라와 있는 주소들은 페이지의 단위로 가져오기 때문에 페이지 번호가 연속되어 나타나게 되면 페이지 결함 발생 X
>
> 따라서 CPU의 주소 요구에 따라 페이지 결함이 일어나지 않는 부분은 생략하여 표시하는 방법이 바로 `Page Reference String`

<br>

1. ##### FIFO 알고리즘

   > First-in First-out, 메모리에 먼저 올라온 페이지를 먼저 내보내는 알고리즘

   victim page : out 되는 페이지는, 가장 먼저 메모리에 올라온 페이지

   가장 간단한 방법으로, 특히 초기화 코드에서 적절한 방법임

   `초기화 코드` : 처음 프로세스 실행될 때 최초 초기화를 시키는 역할만 진행하고 다른 역할은 수행하지 않으므로, 메인 메모리에서 빼도 괜찮음

   하지만 처음 프로세스 실행시에는 무조건 필요한 코드이므로, FIFO 알고리즘을 사용하면 초기화를 시켜준 후 가장 먼저 내보내는 것이 가능함

   

   <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FVQCGK%2FbtquJuqRkyS%2FLb3NgwHkBve08YhZpLkq31%2Fimg.png">

<br>

<br>

2. ##### OPT 알고리즘

   > Optimal Page Replacement 알고리즘, 앞으로 가장 사용하지 않을 페이지를 가장 우선적으로 내보냄

   FIFO에 비해 페이지 결함의 횟수를 많이 감소시킬 수 있음

   하지만, 실질적으로 페이지가 앞으로 잘 사용되지 않을 것이라는 보장이 없기 때문에 수행하기 어려운 알고리즘임

   <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FSvRs7%2FbtquHbeJLQX%2FWXmK7xdGUbIxl43t0JG6Qk%2Fimg.png">

<br>

3. ##### LRU 알고리즘

   > Least-Recently-Used, 최근에 사용하지 않은 페이지를 가장 먼저 내려보내는 알고리즘

   최근에 사용하지 않았으면, 나중에도 사용되지 않을 것이라는 아이디어에서 나옴

   OPT의 경우 미래 예측이지만, LRU의 경우는 과거를 보고 판단하므로 실질적으로 사용이 가능한 알고리즘

   (실제로도 최근에 사용하지 않은 페이지는 앞으로도 사용하지 않을 확률이 높다)

   OPT보다는 페이지 결함이 더 일어날 수 있지만, **실제로 사용할 수 있는 페이지 교체 알고리즘에서는 가장 좋은 방법 중 하나임**

   <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FnCgc3%2FbtquGW9VUrm%2FxTKnVKPOVQuSXmAuRehSw1%2Fimg.png">



##### 교체 방식

- Global 교체

  > 메모리 상의 모든 프로세스 페이지에 대해 교체하는 방식

- Local 교체

  > 메모리 상의 자기 프로세스 페이지에서만 교체하는 방식



다중 프로그래밍의 경우, 메인 메모리에 다양한 프로세스가 동시에 올라올 수 있음

따라서, 다양한 프로세스의 페이지가 메모리에 존재함

페이지 교체 시, 다양한 페이지 교체 알고리즘을 활용해 victim page를 선정하는데, 선정 기준을 Global로 하느냐, Local로 하느냐에 대한 차이

→ 실제로는 전체를 기준으로 페이지를 교체하는 것이 더 효율적이라고 함. 자기 프로세스 페이지에서만 교체를 하면, 교체를 해야할 때 각각 모두 교체를 진행해야 하므로 비효율적', '운영체제', '페이지 교체 알고리즘 (Page Replacement Algorithm)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (69, '### 페이징과 세그먼테이션

---

##### 기법을 쓰는 이유

> 다중 프로그래밍 시스템에 여러 프로세스를 수용하기 위해 주기억장치를 동적 분할하는 메모리 관리 작업이 필요해서

<br>

#### 메모리 관리 기법

1. 연속 메모리 관리

   > 프로그램 전체가 하나의 커다란 공간에 연속적으로 할당되어야 함

   - 고정 분할 기법 : 주기억장치가 고정된 파티션으로 분할 (**내부 단편화 발생**)
   - 동적 분할 기법 : 파티션들이 동적 생성되며 자신의 크기와 같은 파티션에 적재 (**외부 단편화 발생**)

   <br>

2. 불연속 메모리 관리

   > 프로그램의 일부가 서로 다른 주소 공간에 할당될 수 있는 기법

   페이지 : 고정 사이즈의 작은 프로세스 조각

   프레임 : 페이지 크기와 같은 주기억장치 메모리 조각

   단편화 : 기억 장치의 빈 공간 or 자료가 여러 조각으로 나뉘는 현상

   세그먼트 : 서로 다른 크기를 가진 논리적 블록이 연속적 공간에 배치되는 것
   <br>

   **고정 크기** : 페이징(Paging)

   **가변 크기** : 세그먼테이션(Segmentation)
   <br>

   - 단순 페이징

     > 각 프로세스는 프레임들과 같은 길이를 가진 균등 페이지로 나뉨
     >
     > 외부 단편화 X
     >
     > 소량의 내부 단편화 존재

   - 단순 세그먼테이션

     > 각 프로세스는 여러 세그먼트들로 나뉨
     >
     > 내부 단편화 X, 메모리 사용 효율 개선, 동적 분할을 통한 오버헤드 감소
     >
     > 외부 단편화 존재

   - 가상 메모리 페이징

     > 단순 페이징과 비교해 프로세스 페이지 전부를 로드시킬 필요X
     >
     > 필요한 페이지가 있으면 나중에 자동으로 불러들어짐
     >
     > 외부 단편화 X
     >
     > 복잡한 메모리 관리로 오버헤드 발생

   - 가상 메모리 세그먼테이션

     > 필요하지 않은 세그먼트들은 로드되지 않음
     >
     > 필요한 세그먼트 있을때 나중에 자동으로 불러들어짐
     >
     > 내부 단편화X
     >
     > 복잡한 메모리 관리로 오버헤드 발생
', '운영체제', '페이징과 세그먼테이션 (Paging and Segmentation)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (70, '## [OS] Race Condition

공유 자원에 대해 여러 프로세스가 동시에 접근할 때, 결과값에 영향을 줄 수 있는 상태

> 동시 접근 시 자료의 일관성을 해치는 결과가 나타남

<br>

#### Race Condition이 발생하는 경우

1. ##### 커널 작업을 수행하는 중에 인터럽트 발생

   - 문제점 : 커널모드에서 데이터를 로드하여 작업을 수행하다가 인터럽트가 발생하여 같은 데이터를 조작하는 경우
   - 해결법 : 커널모드에서 작업을 수행하는 동안, 인터럽트를 disable 시켜 CPU 제어권을 가져가지 못하도록 한다.

2. ##### 프로세스가 ''System Call''을 하여 커널 모드로 진입하여 작업을 수행하는 도중 문맥 교환이 발생할 때

   - 문제점 : 프로세스1이 커널모드에서 데이터를 조작하는 도중, 시간이 초과되어 CPU 제어권이 프로세스2로 넘어가 같은 데이터를 조작하는 경우 ( 프로세스2가 작업에 반영되지 않음 )
   - 해결법 : 프로세스가 커널모드에서 작업을 하는 경우 시간이 초과되어도 CPU 제어권이 다른 프로세스에게 넘어가지 않도록 함

3. ##### 멀티 프로세서 환경에서 공유 메모리 내의 커널 데이터에 접근할 때

   - 문제점 : 멀티 프로세서 환경에서 2개의 CPU가 동시에 커널 내부의 공유 데이터에 접근하여 조작하는 경우
   - 해결법 : 커널 내부에 있는 각 공유 데이터에 접근할 때마다, 그 데이터에 대한 lock/unlock을 하는 방법

   
', '운영체제', '경합 조건 (Race Condition)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (71, '## 세마포어(Semaphore) & 뮤텍스(Mutex)

<br>

공유된 자원에 여러 프로세스가 동시에 접근하면서 문제가 발생할 수 있다. 이때 공유된 자원의 데이터는 한 번에 하나의 프로세스만 접근할 수 있도록 제한을 둬야 한다.

이를 위해 나온 것이 바로 **''세마포어''**

**세마포어** : 멀티프로그래밍 환경에서 공유 자원에 대한 접근을 제한하는 방법

<br>

##### 임계 구역(Critical Section)

> 여러 프로세스가 데이터를 공유하며 수행될 때, **각 프로세스에서 공유 데이터를 접근하는 프로그램 코드 부분**

공유 데이터를 여러 프로세스가 동시에 접근할 때 잘못된 결과를 만들 수 있기 때문에, 한 프로세스가 임계 구역을 수행할 때는 다른 프로세스가 접근하지 못하도록 해야 한다.

<br>

#### 세마포어 P, V 연산

P : 임계 구역 들어가기 전에 수행 ( 프로세스 진입 여부를 자원의 개수(S)를 통해 결정)

V : 임계 구역에서 나올 때 수행 ( 자원 반납 알림, 대기 중인 프로세스를 깨우는 신호 )

<br>

##### 구현 방법

```sql
P(S);

// --- 임계 구역 ---

V(S);
```

<br>

```sql
procedure P(S)   --> 최초 S값은 1임
    while S=0 do wait  --> S가 0면 1이 될때까지 기다려야 함
    S := S-1   --> S를 0로 만들어 다른 프로세스가 들어 오지 못하도록 함
end P

--- 임계 구역 ---

procedure V(S) --> 현재상태는 S가 0임
    S := S+1   --> S를 1로 원위치시켜 해제하는 과정
end V
```

이를 통해, 한 프로세스가 P 혹은 V를 수행하고 있는 동안 프로세스가 인터럽트 당하지 않게 된다. P와 V를 사용하여 임계 구역에 대한 상호배제 구현이 가능하게 되었다.

***예시***

> 최초 S 값은 1이고, 현재 해당 구역을 수행할 프로세스 A, B가 있다고 가정하자

1. 먼저 도착한 A가 P(S)를 실행하여 S를 0으로 만들고 임계구역에 들어감
2. 그 뒤에 도착한 B가 P(S)를 실행하지만 S가 0이므로 대기 상태
3. A가 임계구역 수행을 마치고 V(S)를 실행하면 S는 다시 1이 됨
4. B는 이제 P(S)에서 while문을 빠져나올 수 있고, 임계구역으로 들어가 수행함

<br>

<br>

**뮤텍스** : 임계 구역을 가진 스레드들의 실행시간이 서로 겹치지 않고 각각 단독으로 실행되게 하는 기술

> 상호 배제(**Mut**ual **Ex**clusion)의 약자임

해당 접근을 조율하기 위해 lock과 unlock을 사용한다.

- lock : 현재 임계 구역에 들어갈 권한을 얻어옴 ( 만약 다른 프로세스/스레드가 임계 구역 수행 중이면 종료할 때까지 대기 )
- unlock : 현재 임계 구역을 모두 사용했음을 알림. ( 대기 중인 다른 프로세스/스레드가 임계 구역에 진입할 수 있음 )

<br>

뮤텍스는 상태가 0, 1로 **이진 세마포어**로 부르기도 함

<br>

#### **뮤텍스 알고리즘**

1. ##### 데커(Dekker) 알고리즘

   flag와 turn 변수를 통해 임계 구역에 들어갈 프로세스/스레드를 결정하는 방식

   - flag : 프로세스 중 누가 임계영역에 진입할 것인지 나타내는 변수
   - turn : 누가 임계구역에 들어갈 차례인지 나타내는 변수

   ```java
   while(true) {
       flag[i] = true; // 프로세스 i가 임계 구역 진입 시도
       while(flag[j]) { // 프로세스 j가 현재 임계 구역에 있는지 확인
           if(turn == j) { // j가 임계 구역 사용 중이면
               flag[i] = false; // 프로세스 i 진입 취소
               while(turn == j); // turn이 j에서 변경될 때까지 대기
               flag[i] = true; // j turn이 끝나면 다시 진입 시도
           }
       }
   }
   
   // ------- 임계 구역 ---------
   
   turn = j; // 임계 구역 사용 끝나면 turn을 넘김
   flag[i] = false; // flag 값을 false로 바꿔 임계 구역 사용 완료를 알림
   ```

   <br>

2. ##### 피터슨(Peterson) 알고리즘

   데커와 유사하지만, 상대방 프로세스/스레드에게 진입 기회를 양보하는 것에 차이가 있음

   ```java
   while(true) {
       flag[i] = true; // 프로세스 i가 임계 구역 진입 시도
       turn = j; // 다른 프로세스에게 진입 기회 양보
       while(flag[j] && turn == j) { // 다른 프로세스가 진입 시도하면 대기
       }
   }
   
   // ------- 임계 구역 ---------
   
   flag[i] = false; // flag 값을 false로 바꿔 임계 구역 사용 완료를 알림
   ```

   <br>

3. ##### 제과점(Bakery) 알고리즘

   여러 프로세스/스레드에 대한 처리가 가능한 알고리즘. 가장 작은 수의 번호표를 가지고 있는 프로세스가 임계 구역에 진입한다.

   ```java
   while(true) {
       
       isReady[i] = true; // 번호표 받을 준비
       number[i] = max(number[0~n-1]) + 1; // 현재 실행 중인 프로세스 중에 가장 큰 번호 배정 
       isReady[i] = false; // 번호표 수령 완료
       
       for(j = 0; j < n; j++) { // 모든 프로세스 번호표 비교
           while(isReady[j]); // 비교 프로세스가 번호표 받을 때까지 대기
           while(number[j] && number[j] < number[i] && j < i);
           
           // 프로세스 j가 번호표 가지고 있어야 함
           // 프로세스 j의 번호표 < 프로세스 i의 번호표
       }
   }
   
   // ------- 임계 구역 ---------
   
   number[i] = 0; // 임계 구역 사용 종료
   ```

   ', '운영체제', '세마포어와 뮤텍스 (Semaphore & Mutex)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (72, '## 데드락 (DeadLock, 교착 상태)

> 두 개 이상의 프로세스나 스레드가 서로 자원을 얻지 못해서 다음 처리를 하지 못하는 상태
>
> 무한히 다음 자원을 기다리게 되는 상태를 말한다.
>
> 시스템적으로 한정된 자원을 여러 곳에서 사용하려고 할 때 발생한다.

> *(마치, 외나무 다리의 양 끝에서 서로가 비켜주기를 기다리고만 있는 것과 같다.)*

<br>

* 데드락이 일어나는 경우

<img src="https://t1.daumcdn.net/cfile/tistory/243E89355714C26E28">

프로세스1과 2가 자원1, 2를 모두 얻어야 한다고 가정해보자

t1 : 프로세스1이 자원1을 얻음 / 프로세스2가 자원2를 얻음

t2 : 프로세스1은 자원2를 기다림 / 프로세스2는 자원1을 기다림

<br>

현재 서로 원하는 자원이 상대방에 할당되어 있어서 두 프로세스는 무한정 wait 상태에 빠짐

→ 이것이 바로 **DeadLock**!!!!!!

<br>

(주로 발생하는 경우)

> 멀티 프로그래밍 환경에서 한정된 자원을 얻기 위해 서로 경쟁하는 상황 발생
>
> 한 프로세스가 자원을 요청했을 때, 동시에 그 자원을 사용할 수 없는 상황이 발생할 수 있음. 이때 프로세스는 대기 상태로 들어감
>
> 대기 상태로 들어간 프로세스들이 실행 상태로 변경될 수 없을 때 ''교착 상태'' 발생

<br>

##### *데드락(DeadLock) 발생 조건*

> 4가지 모두 성립해야 데드락 발생
>
> (하나라도 성립하지 않으면 데드락 문제 해결 가능)

1. ##### 상호 배제(Mutual exclusion)

   > 자원은 한번에 한 프로세스만 사용할 수 있음

2. ##### 점유 대기(Hold and wait)

   > 최소한 하나의 자원을 점유하고 있으면서 다른 프로세스에 할당되어 사용하고 있는 자원을 추가로 점유하기 위해 대기하는 프로세스가 존재해야 함

3. ##### 비선점(No preemption)

   > 다른 프로세스에 할당된 자원은 사용이 끝날 때까지 강제로 빼앗을 수 없음

4. ##### 순환 대기(Circular wait)

   > 프로세스의 집합에서 순환 형태로 자원을 대기하고 있어야 함

<br>

##### *데드락(DeadLock) 처리*

---

##### 교착 상태를 예방 & 회피

1. ##### 예방(prevention)

   교착 상태 발생 조건 중 하나를 제거하면서 해결한다 (자원 낭비 엄청 심함)

   > - 상호배제 부정 : 여러 프로세스가 공유 자원 사용
   > - 점유대기 부정 : 프로세스 실행전 모든 자원을 할당
   > - 비선점 부정 : 자원 점유 중인 프로세스가 다른 자원을 요구할 때 가진 자원 반납
   > - 순환대기 부정 : 자원에 고유번호 할당 후 순서대로 자원 요구

2. ##### 회피(avoidance)

   교착 상태 발생 시 피해나가는 방법

   > 은행원 알고리즘(Banker''s Algorithm)
   >
   > - 은행에서 모든 고객의 요구가 충족되도록 현금을 할당하는데서 유래함
   > - 프로세스가 자원을 요구할 때, 시스템은 자원을 할당한 후에도 안정 상태로 남아있게 되는지 사전에 검사하여 교착 상태 회피
   > - 안정 상태면 자원 할당, 아니면 다른 프로세스들이 자원 해지까지 대기



##### 교착 상태를 탐지 & 회복

교착 상태가 되도록 허용한 다음 회복시키는 방법

1. ##### 탐지(Detection)

   자원 할당 그래프를 통해 교착 상태를 탐지함

   자원 요청 시, 탐지 알고리즘을 실행시켜 그에 대한 오버헤드 발생함

2. ##### 회복(Recovery)

   교착 상태 일으킨 프로세스를 종료하거나, 할당된 자원을 해제시켜 회복시키는 방법

   > ##### 프로세스 종료 방법
   >
   > - 교착 상태의 프로세스를 모두 중지
   > - 교착 상태가 제거될 때까지 하나씩 프로세스 중지
   >
   > ##### 자원 선점 방법
   >
   > - 교착 상태의 프로세스가 점유하고 있는 자원을 선점해 다른 프로세스에게 할당 (해당 프로세스 일시정지 시킴)
   > - 우선 순위가 낮은 프로세스나 수행 횟수 적은 프로세스 위주로 프로세스 자원 선점





#### 주요 질문

1. 데드락(교착 상태)가 뭔가요? 발생 조건에 대해 말해보세요.

2. 회피 기법인 은행원 알고리즘이 뭔지 설명해보세요.

3. 기아상태를 설명하는 식사하는 철학자 문제에 대해 설명해보세요.

   > 교착 상태 해결책
   >
   > 1. n명이 앉을 수 있는 테이블에서 철학자를 n-1명만 앉힘
   > 2. 한 철학자가 젓가락 두개를 모두 집을 수 있는 상황에서만 젓가락 집도록 허용
   > 3. 누군가는 왼쪽 젓가락을 먼저 집지 않고 오른쪽 젓가락을 먼저 집도록 허용', '운영체제', '데드락 (DeadLock)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (73, '#### 메인 메모리(main memory)

> 메인 메모리는 CPU가 직접 접근할 수 있는 기억 장치
>
> 프로세스가 실행되려면 프로그램이 메모리에 올라와야 함

주소가 할당된 일련의 바이트들로 구성되어 있음

<br>

CPU는 레지스터가 지시하는대로 메모리에 접근하여 다음에 수행할 명령어를 가져옴

명령어 수행 시 메모리에 필요한 데이터가 없으면 해당 데이터를 우선 가져와야 함

이 역할을 하는 것이 바로 **MMU**.

<br>

#### MMU (Memory Management Unit, 메모리 관리 장치)

- 논리 주소를 물리주소로 변환해 준다.

- 메모리 보호나 캐시 관리 등 CPU가 메모리에 접근하는 것을 총 관리해주는 하드웨어임

<br>

메모리의 공간이 한정적이기 때문에, 사용자에게 더 많은 메모리를 제공하기 위해 ''가상 주소''라는 개념이 등장 (가상 주소는 프로그램 상에서 사용자가 보는 주소 공간이라고 보면 됨)

이 가상 주소에서 실제 데이터가 담겨 있는 곳에 접근하기 위해선 빠른 주소 변환이 필요한데, 이를 MMU가 도와주는 것

즉, MMU의 역할은 다음과 같다고 말할 수 있다.

> MMU가 지원되지 않으면, physical address를 직접 접근해야 하기 때문에 부담이 있다.
>
> MMU는 사용자가 기억장소를 일일이 할당해야 하는 불편을 없애준다.
>
> 프로세스의 크기가 실제 메모리의 용량을 초과해도 실행될 수 있게 해준다.

<br>

또한 메인 메모리의 직접 접근은 비효율적이므로, CPU와 메인 메모리 속도를 맞추기 위해 캐시가 존재함

<br>

##### MMU의 메모리 보호

프로세스는 독립적인 메모리 공간을 가져야 되고, 자신의 공간만 접근해야 함

따라서 한 프로세스에게 합법적인 주소 영역을 설정하고, 잘못된 접근이 오면 trap을 발생시키며 보호함

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2F5Lgut%2FbtquNvKMRwH%2FJOqzcmz8wiXf0Kv7okfGzK%2Fimg.png">

base와 limit 레지스터를 활용한 메모리 보호 기법

base 레지스터는 메모리상의 프로세스 시작주소를 물리 주소로 저장
limit 레지스터는 프로세스의 사이즈를 저장

이로써 프로세스의 접근 가능한 합법적인 메모리 영역(x)은

```
base <= x < base+limit
```

이 영역 밖에서 접근을 요구하면 trap을 발생시키는 것

<br>

안전성을 위해 base와 limit 레지스터는 커널 모드에서만 수정 가능하도록 설계 (사용자 모드에서는 직접 변경할 수 없도록)

<br>

<br>

##### 메모리 과할당(over allocating)

> 실제 메모리의 사이즈보다 더 큰 사이즈의 메모리를 프로세스에 할당한 상황

<br>

페이지 기법과 같은 메모리 관리 기법은 사용자가 눈치 채지 못하도록 눈속임을 통해 메모리를 할당해줌 (가상 메모리를 이용해서)

<br>

과할당 상황에 대해서 사용자를 속인 것을 들킬만한 상황이 존재함

1. 프로세스 실행 도중 페이지 폴트 발생
2. 페이지 폴트를 발생시킨 페이지 위치를 디스크에서 찾음
3. 메모리의 빈 프레임에 페이지를 올려야 하는데, 모든 메모리가 사용중이라 빈 프레임이 없음

<br>

이러한 과할당을 해결하기 위해선, 빈 프레임을 확보할 수 있어야 함

1. 메모리에 올라와 있는 한 프로세스를 종료시켜 빈 프레임을 얻음

2. 프로세스 하나를 swap out하고, 이 공간을 빈 프레임으로 활용

<br>

swapping 기법을 통해 공간을 바꿔치기하는 2번 방법과는 달리 1번은 사용자에게 페이징 시스템을 들킬 가능성이 매우 높아서 하면 안됨

(페이징 기법은 사용자 모르게 시스템 능률을 높이기 위해 선택한 일이므로 들키지 않게 처리해야한다)

<br>

따라서, 2번과 같은 해결책을 통해 페이지 교체가 이루어져야 함

<br>

<br>

#####  페이지 교체

> 메모리 과할당이 발생했을 때, 프로세스 하나를 swap out해서 빈 프레임을 확보하는 것

<br>

1. 프로세스 실행 도중 페이지 부재 발생

2. 페이지 폴트를 발생시킨 페이지 위치를 디스크에서 찾음

3. 메모리에 빈 프레임이 있는지 확인

   > 빈 프레임이 있으면 해당 프레임을 사용
   >
   > 빈 프레임이 없으면, victim 프레임을 선정해 디스크에 기록하고 페이지 테이블을 업데이트함

4. 빈 프레임에 페이지 폴트가 발생한 페이지를 올리고, 페이지 테이블 업데이트

<br>

페이지 교체가 이루어지면 아무일이 없던것 처럼 프로세스를 계속 수행시켜주면서 사용자가 알지 못하도록 해야 함

이때, 아무일도 일어나지 않은 것처럼 하려면, 페이지 교체 당시 오버헤드를 최대한 줄여야 함

<br>

##### 오버헤드를 감소시키는 해결법

이처럼 빈 프레임이 없는 상황에서 victim 프레임을 비울 때와 원하는 페이지를 프레임으로 올릴 때 두 번의 디스크 접근이 이루어짐

페이지 교체가 많이 이루어지면, 이처럼 입출력 연산이 많이 발생하게 되면서 오버헤드 문제가 발생함

<br>

##### 방법1

변경비트를 모든 페이지마다 둬서, victim 페이지가 정해지면 해당 페이지의 비트를 확인

해당 비트가 set 상태면? → 해당 페이지 내용이 디스크 상의 페이지 내용과 달라졌다는 뜻
(즉, 페이지가 메모리 올라온 이후 한번이라도 수정이 일어났던 것. 따라서 이건 디스크에 기록해야함)

bit가 clear 상태라면? → 디스크 상의 페이지 내용과 메모리 상의 페이지가 정확히 일치하는 상황
(즉, 디스크와 내용이 같아서 기록할 필요가 없음)

비트를 활용해  디스크에 기록하는 횟수를 줄이면서 오버헤드에 대한 수를 최대 절반으로 감소시키는 방법임

<br>

##### 방법2

페이지 교체 알고리즘을 상황에 따라 잘 선택해야 함

현재 상황에서 페이지 폴트를 발생할 확률을 최대한 줄여줄 수 있는 교체 알고리즘을 사용

FIFO

OPT

LRU

<br>

<br>

#### 캐시 메모리

> 주기억장치에 저장된 내용의 일부를 임시로 저장해두는 기억장치
>
> CPU와 주기억장치의 속도 차이로 성능 저하를 방지하기 위한 방법

CPU가 이미 봤던걸 다시 재접근할 때, 메모리 참조 및 인출 과정에 대한 비용을 줄이기 위해 캐시에 저장해둔 데이터를 활용한다

캐시는 플리플롭 소자로 구성되어 SRAM으로 되어있어서 DRAM보다 빠른 장점을 지님

<br>

##### CPU와 기억장치의 상호작용

CPU에서 주소를 전달 → 캐시 기억장치에 명령이 존재하는지 확인

(존재) Hit

해당 명령어를 CPU로 전송 → 완료

(비존재) Miss

명령어를 갖고 주기억장치로 접근 → 해당 명령어를 가진 데이터 인출 → 해당 명령어 데이터를 캐시에 저장 → 해당 명령어를 CPU로 전송 → 완료

<br>

이처럼 캐시를 잘 활용한다면 비용을 많이 줄일 수 있음

따라서 CPU가 어떤 데이터를 원할지 어느정도 예측할 수 있어야 함

(캐시에 많이 활용되는 쓸모 있는 정보가 들어있어야 성능이 높아짐)

<br>

적중률을 극대화시키기 위해 사용되는 것이 바로 `지역성의 원리`

##### 지역성

> 기억 장치 내의 정보를 균일하게 액세스 하는 것이 아니라 한 순간에 특정부분을 집중적으로 참조하는 특성

<br>

지역성의 종류는 시간과 공간으로 나누어짐

**시간 지역성** : 최근에 참조된 주소의 내용은 곧 다음에도 참조되는 특성

**공간 지역성** : 실제 프로그램이 참조된 주소와 인접한 주소의 내용이 다시 참조되는 특성

<br>

<br>

#### 캐싱 라인

빈번하게 사용되는 데이터들을 캐시에 저장했더라도, 내가 필요한 데이터를 캐시에서 찾을 때 모든 데이터를 순회하는 것은 시간 낭비다.

즉, 캐시에 목적 데이터가 저장되어있을 때 바로 접근하여 출력할 수 있어야 캐시 활용이 의미있어짐

따라서 캐시에 데이터를 저장할 시, 자료구조를 활용해 묶어서 저장하는데 이를 `캐싱 라인`이라고 부른다.

즉, 캐시에 저장하는 데이터에 데이터의 메모리 주소를 함께 저장하면서 빠르게 원하는 정보를 찾을 수 있음 (set이나 map 등을 활용) ', '운영체제', '메모리 (Memory)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (74, '## 파일 시스템(File System)

<br>

컴퓨터에서 파일이나 자료를 쉽게 발견할 수 있도록, 유지 및 관리하는 방법이다.

저장매체에는 수많은 파일이 있기 때문에, 이런 파일들을 관리하는 방법을 말한다.

##### <br>

##### 특징

- 커널 영역에서 동작
- 파일 CRUD 기능을 원활히 수행하기 위한 목적

- 계층적 디렉터리 구조를 가짐
- 디스크 파티션 별로 하나씩 둘 수 있음

##### 역할

- 파일 관리
- 보조 저장소 관리
- 파일 무결성 메커니즘
- 접근 방법 제공

##### 개발 목적

- 하드디스크와 메인 메모리 속도차를 줄이기 위함
- 파일 관리
- 하드디스크 용량 효율적 이용

##### 구조

- 메타 영역 : 데이터 영역에 기록된 파일의 이름, 위치, 크기, 시간정보, 삭제유무 등의 파일 정보
- 데이터 영역 : 파일의 데이터

<br>

<br>

#### 접근 방법

1. ##### 순차 접근(Sequential Access)

   > 가장 간단한 접근 방법으로, 대부분 연산은 read와 write

   <img src="https://noep.github.io/2016/02/23/10th-filesystem/10.1.png">

   현재 위치를 가리키는 포인터에서 시스템 콜이 발생할 경우 포인터를 앞으로 보내면서 read와 write를 진행. 뒤로 돌아갈 땐 지정한 offset만큼 되감기를 해야 한다. (테이프 모델 기반)

2. ##### 직접 접근(Direct Access)

   > 특별한 순서없이, 빠르게 레코드를 read, write 가능

   <img src="https://noep.github.io/2016/02/23/10th-filesystem/10.2.png">

   현재 위치를 가리키는 cp 변수만 유지하면 직접 접근 파일을 가지고 순차 파일 기능을 쉽게 구현이 가능하다.

   무작위 파일 블록에 대한 임의 접근을 허용한다. 따라서 순서의 제약이 없음

   대규모 정보를 접근할 때 유용하기 때문에 ''데이터베이스''에 활용된다.

3. 기타 접근

   > 직접 접근 파일에 기반하여 색인 구축

   <img src="https://noep.github.io/2016/02/23/10th-filesystem/10.3.png">

   크기가 큰 파일을 입출력 탐색할 수 있게 도와주는 방법임

<br>

<br>

### 디렉터리와 디스크 구조

---

- ##### 1단계 디렉터리

  > 가장 간단한 구조

  파일들은 서로 유일한 이름을 가짐. 서로 다른 사용자라도 같은 이름 사용 불가

  <img src="https://noep.github.io/2016/02/23/10th-filesystem/10.5.png">

- ##### 2단계 디렉터리

  > 사용자에게 개별적인 디렉터리 만들어줌

  - UFD : 자신만의 사용자 파일 디렉터리
  - MFD : 사용자의 이름과 계정번호로 색인되어 있는 디렉터리

  <img src="https://noep.github.io/2016/02/23/10th-filesystem/10.6.png">

- ##### 트리 구조 디렉터리

  > 2단계 구조 확장된 다단계 트리 구조

  한 비트를 활용하여, 일반 파일(0)인지 디렉터리 파일(1) 구분

  <img src="https://noep.github.io/2016/02/23/10th-filesystem/10.7.png">

- 그래프 구조 디렉터리

  > 순환이 발생하지 않도록 하위 디렉터리가 아닌 파일에 대한 링크만 허용하거나, 가비지 컬렉션을 이용해 전체 파일 시스템을 순회하고 접근 가능한 모든 것을 표시

  링크가 있으면 우회하여 순환을 피할 수 있음

  <img src="https://noep.github.io/2016/02/23/10th-filesystem/10.9.png">













##### [참고 자료]

- [링크]( https://noep.github.io/2016/02/23/10th-filesystem/ )', '운영체제', '파일 시스템 (File System)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (75, '### IPC(Inter Process Communication)

---

<img src="https://t1.daumcdn.net/cfile/tistory/99DB8C495C4C570417">

<br>

프로세스는 독립적으로 실행된다. 즉, 독립 되어있다는 것은 다른 프로세스에게 영향을 받지 않는다고 말할 수 있다. (스레드는 프로세스 안에서 자원을 공유하므로 영향을 받는다)

이런 독립적 구조를 가진 **프로세스 간의 통신**을 해야 하는 상황이 있을 것이다. 이를 가능하도록 해주는 것이 바로 IPC 통신이다.

<br>

프로세스는 커널이 제공하는 IPC 설비를 이용해 프로세스간 통신을 할 수 있게 된다.

***커널이란?***

> 운영체제의 핵심적인 부분으로, 다른 모든 부분에 여러 기본적인 서비스를 제공해줌

<br>

IPC 설비 종류도 여러가지가 있다. 필요에 따라 IPC 설비를 선택해서 사용해야 한다.

<br>

#### IPC 종류

1. ##### 익명 PIPE

   > 파이프는 두 개의 프로세스를 연결하는데 하나의 프로세스는 데이터를 쓰기만 하고, 다른 하나는 데이터를 읽기만 할 수 있다.
   >
   > **한쪽 방향으로만 통신이 가능한 반이중 통신**이라고도 부른다.
   >
   > 따라서 양쪽으로 모두 송/수신을 하고 싶으면 2개의 파이프를 만들어야 한다.
   >
   > 
   >
   >
   > 매우 간단하게 사용할 수 있는 장점이 있고, 단순한 데이터 흐름을 가질 땐 파이프를 사용하는 것이 효율적이다. 단점으로는 전이중 통신을 위해 2개를 만들어야 할 때는 구현이 복잡해지게 된다.

   <br>

2. ##### Named PIPE(FIFO)

   > 익명 파이프는 통신할 프로세스를 명확히 알 수 있는 경우에 사용한다. (부모-자식 프로세스 간 통신처럼)
   >
   > Named 파이프는 전혀 모르는 상태의 프로세스들 사이 통신에 사용한다.
   >
   > 즉, 익명 파이프의 확장된 상태로 **부모 프로세스와 무관한 다른 프로세스도 통신이 가능한 것** (통신을 위해 이름있는 파일을 사용)
   >
   > 
   >
   >
   > 하지만, Named 파이프 역시 읽기/쓰기 동시에 불가능함. 따라서 전이중 통신을 위해서는 익명 파이프처럼 2개를 만들어야 가능

   <br>

3. ##### Message Queue

   > 입출력 방식은 Named 파이프와 동일함
   >
   > 다른점은 메시지 큐는 파이프처럼 데이터의 흐름이 아니라 메모리 공간이다.
   >
   > 
   >
   >
   > 사용할 데이터에 번호를 붙이면서 여러 프로세스가 동시에 데이터를 쉽게 다룰 수 있다.

   <br>

4. ##### 공유 메모리

   > 파이프, 메시지 큐가 통신을 이용한 설비라면, **공유 메모리는 데이터 자체를 공유하도록 지원하는 설비**다.
   > 
   >
   > 프로세스의 메모리 영역은 독립적으로 가지며 다른 프로세스가 접근하지 못하도록 반드시 보호되야한다. 하지만 다른 프로세스가 데이터를 사용하도록 해야하는 상황도 필요할 것이다. 파이프를 이용해 통신을 통해 데이터 전달도 가능하지만, 스레드처럼 메모리를 공유하도록 해준다면 더욱 편할 것이다.
   > 
   >
   > 공유 메모리는 **프로세스간 메모리 영역을 공유해서 사용할 수 있도록 허용**해준다.
   >
   > 프로세스가 공유 메모리 할당을 커널에 요청하면, 커널은 해당 프로세스에 메모리 공간을 할당해주고 이후 모든 프로세스는 해당 메모리 영역에 접근할 수 있게 된다.
   >
   > - **중개자 없이 곧바로 메모리에 접근할 수 있어서 IPC 중에 가장 빠르게 작동함**

   <br>

5. ##### 메모리 맵

   > 공유 메모리처럼 메모리를 공유해준다. 메모리 맵은 **열린 파일을 메모리에 맵핑시켜서 공유**하는 방식이다. (즉 공유 매개체가 파일+메모리)
   >
   > 주로 파일로 대용량 데이터를 공유해야 할 때 사용한다.

   <br>

6. ##### 소켓

   > 네트워크 소켓 통신을 통해 데이터를 공유한다.
   >
   > 클라이언트와 서버가 소켓을 통해서 통신하는 구조로, 원격에서 프로세스 간 데이터를 공유할 때 사용한다.
   >
   > 서버(bind, listen, accept), 클라이언트(connect)

   <br>



<br>

이러한 IPC 통신에서 프로세스 간 데이터를 동기화하고 보호하기 위해 세마포어와 뮤텍스를 사용한다. (공유된 자원에 한번에 하나의 프로세스만 접근시킬 때)', '운영체제', 'IPC (Inter Process Communication)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (81, '### 배열 (Array)

---

- C++에서 사이즈 구하기 

```
int arr[] = { 1, 2, 3, 4, 5, 6, 7 }; 
int n = sizeof(arr) / sizeof(arr[0]); // 7
```

<br/>

<br/>

1. #### 배열 회전 프로그램



![img](https://t1.daumcdn.net/cfile/tistory/99AFA23F5BE8F31B0C)



*전체 코드는 각 하이퍼링크를 눌러주시면 이동됩니다.*

<br/>

- [기본적인 회전 알고리즘 구현](https://github.com/gyoogle/tech-interview-for-developer/blob/master/Computer%20Science/Data%20Structure/code/rotate_array.cpp)

  > temp를 활용해서 첫번째 인덱스 값을 저장 후
  > arr[0]~arr[n-1]을 각각 arr[1]~arr[n]의 값을 주고, arr[n]에 temp를 넣어준다.
  >
  > ```
  > void leftRotatebyOne(int arr[], int n){
  >     int temp = arr[0], i;
  >     for(i = 0; i < n-1; i++){
  >         arr[i] = arr[i+1];
  >     }
  >     arr[i] = temp;
  > }
  > ```
  >
  > 이 함수를 활용해 원하는 회전 수 만큼 for문을 돌려 구현이 가능

  <br/>

- [저글링 알고리즘 구현](https://github.com/gyoogle/tech-interview-for-developer/blob/master/Computer%20Science/Data%20Structure/code/juggling_array.cpp)

  > ![ArrayRotation](https://cdncontribute.geeksforgeeks.org/wp-content/uploads/arra.jpg)
  >
  > 최대공약수 gcd를 이용해 집합을 나누어 여러 요소를 한꺼번에 이동시키는 것
  >
  > 위 그림처럼 배열이 아래와 같다면
  >
  > arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
  >
  > 1,2,3을 뒤로 옮길 때, 인덱스를 3개씩 묶고 회전시키는 방법이다.
  >
  > a) arr [] -> { **4** 2 3 **7** 5 6 **10** 8 9 **1** 11 12}
  >
  > b) arr [] -> {4 **5** 3 7 **8** 6 10 **11** 9 1 **2** 12}
  >
  > c) arr [] -> {4 5 **6**  7 8 **9** 10 11 **12** 1 2 **3** }

  <br/>

- [역전 알고리즘 구현](https://github.com/gyoogle/tech-interview-for-developer/blob/master/Computer%20Science/Data%20Structure/code/reversal_array.cpp)

  > 회전시키는 수에 대해 구간을 나누어 reverse로 구현하는 방법
  >
  > d = 2이면
  >
  > 1,2 / 3,4,5,6,7로 구간을 나눈다.
  >
  > 첫번째 구간 reverse -> 2,1
  >
  > 두번째 구간 reverse -> 7,6,5,4,3
  >
  > 합치기 -> 2,1,7,6,5,4,3
  >
  > 합친 배열을 reverse -> **3,4,5,6,7,1,2**
  >
  >
  >
  > - swap을 통한 reverse
  >
  > ```
  > void reverseArr(int arr[], int start, int end){
  >     
  >     while (start < end){
  >         int temp = arr[start];
  >         arr[start] = arr[end];
  >         arr[end] = temp;
  >         
  >         start++;
  >         end--;
  >     }
  > }
  > ```
  >
  >
  >
  > - 구간을 d로 나누었을 때 역전 알고리즘 구현
  >
  > ```
  > void rotateLeft(int arr[], int d, int n){
  >     reverseArr(arr, 0, d-1);
  >     reverseArr(arr, d, n-1);
  >     reverseArr(arr, 0, n-1);
  > }
  > ```

<br/>

<br/>

2. #### 배열의 특정 최대 합 구하기



**예시)** arr[i]가 있을 때, i*arr[i]의 Sum이 가장 클 때 그 값을 출력하기 

(회전하면서 최대값을 찾아야한다.)

```
Input: arr[] = {1, 20, 2, 10}
Output: 72

2번 회전했을 때 아래와 같이 최대값이 나오게 된다.
{2, 10, 1, 20}
20*3 + 1*2 + 10*1 + 2*0 = 72

Input: arr[] = {10, 1, 2, 3, 4, 5, 6, 7, 8, 9};
Output: 330

9번 회전했을 때 아래와 같이 최대값이 나오게 된다.
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
0*1 + 1*2 + 2*3 ... 9*10 = 330
```

<br/>

##### 접근 방법

arr[i]의 전체 합과 i*arr[i]의 전체 합을 저장할 변수 선언

최종 가장 큰 sum 값을 저장할 변수 선언

배열을 회전시키면서 i*arr[i]의 합의 값을 저장하고, 가장 큰 값을 저장해서 출력하면 된다.

<br/>

##### 해결법

```
회전 없이 i*arr[i]의 sum을 저장한 값
R0 = 0*arr[0] + 1*arr[1] +...+ (n-1)*arr[n-1]


1번 회전하고 i*arr[i]의 sum을 저장한 값
R1 = 0*arr[n-1] + 1*arr[0] +...+ (n-1)*arr[n-2]

이 두개를 빼면?
R1 - R0 = arr[0] + arr[1] + ... + arr[n-2] - (n-1)*arr[n-1]

2번 회전하고 i*arr[i]의 sum을 저장한 값
R2 = 0*arr[n-2] + 1*arr[n-1] +...+ (n?1)*arr[n-3]

1번 회전한 값과 빼면?
R2 - R1 = arr[0] + arr[1] + ... + arr[n-3] - (n-1)*arr[n-2] + arr[n-1]


여기서 규칙을 찾을 수 있음.

Rj - Rj-1 = arrSum - n * arr[n-j]

이를 활용해서 몇번 회전했을 때 최대값이 나오는 지 구할 수 있다.
```

[구현 소스 코드 링크](https://github.com/gyoogle/tech-interview-for-developer/blob/master/Computer%20Science/Data%20Structure/code/maxvalue_array.cpp)

<br/>

<br/>

3. #### 특정 배열을 arr[i] = i로 재배열 하기

**예시)** 주어진 배열에서 arr[i] = i이 가능한 것만 재배열 시키기

```
Input : arr = {-1, -1, 6, 1, 9, 3, 2, -1, 4, -1}
Output : [-1, 1, 2, 3, 4, -1, 6, -1, -1, 9]

Input : arr = {19, 7, 0, 3, 18, 15, 12, 6, 1, 8,
              11, 10, 9, 5, 13, 16, 2, 14, 17, 4}
Output : [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
         11, 12, 13, 14, 15, 16, 17, 18, 19]
```

arr[i] = i가 없으면 -1로 채운다.



##### 접근 방법

arr[i]가 -1이 아니고, arr[i]이 i가 아닐 때가 우선 조건

해당 arr[i] 값을 저장(x)해두고, 이 값이 x일 때 arr[x]를 탐색

arr[x] 값을 저장(y)해두고, arr[x]가 -1이 아니면서 arr[x]가 x가 아닌 동안을 탐색

arr[x]를 x값으로 저장해주고, 기존의 x를 y로 수정

```
int fix(int A[], int len){
    
    for(int i = 0; i < len; i++) {
        
        
        if (A[i] != -1 && A[i] != i){ // A[i]가 -1이 아니고, i도 아닐 때
            
            int x = A[i]; // 해당 값을 x에 저장
            
            while(A[x] != -1 && A[x] != x){ // A[x]가 -1이 아니고, x도 아닐 때
                
                int y = A[x]; // 해당 값을 y에 저장
                A[x] = x; 
                
                x = y;
            }
            
            A[x] = x;
            
            if (A[i] != i){
                A[i] = -1;
            }
        }
    }
    
}
```

[구현 소스 코드 링크](https://github.com/gyoogle/tech-interview-for-developer/blob/master/Computer%20Science/Data%20Structure/code/rearrange_array.cpp)

<br/>

<br/>', '자료구조', '배열 (Array)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (82, '### Linked List

---

![img](https://www.geeksforgeeks.org/wp-content/uploads/gq/2013/03/Linkedlist.png)

연속적인 메모리 위치에 저장되지 않는 선형 데이터 구조

(포인터를 사용해서 연결된다)

각 노드는 **데이터 필드**와 **다음 노드에 대한 참조**를 포함하는 노드로 구성

<br/>

**왜 Linked List를 사용하나?**

> 배열은 비슷한 유형의 선형 데이터를 저장하는데 사용할 수 있지만 제한 사항이 있음
>
> 1) 배열의 크기가 고정되어 있어 미리 요소의 수에 대해 할당을 받아야 함
>
> 2) 새로운 요소를 삽입하는 것은 비용이 많이 듬 (공간을 만들고, 기존 요소 전부 이동)

**장점**

> 1) 동적 크기
>
> 2) 삽입/삭제 용이

**단점**

> 1) 임의로 액세스를 허용할 수 없음. 즉, 첫 번째 노드부터 순차적으로 요소에 액세스 해야함 (이진 검색 수행 불가능)
>
> 2) 포인터의 여분의 메모리 공간이 목록의 각 요소에 필요



노드 구현은 아래와 같이 데이터와 다음 노드에 대한 참조로 나타낼 수 있다

```
// A linked list node 
struct Node 
{ 
  int data; 
  struct Node *next; 
}; 
```



**Single Linked List**

노드 3개를 잇는 코드를 만들어보자

```
      head         second         third 
        |             |             | 
        |             |             | 
    +---+---+     +---+---+     +----+----+ 
    | 1  | o----->| 2 | o-----> |  3 |  # | 
    +---+---+     +---+---+     +----+----+
```

[소스 코드]()



<br/>

<br/>

**노드 추가**

- 앞쪽에 노드 추가

```
void push(struct Node** head_ref, int new_data){
    struct Node* new_node = (struct Node*) malloc(sizeof(struct Node));

    new_node->data = new_data;

    new_node->next = (*head_ref);

    (*head_ref) = new_node;
}
```

</br>

- 특정 노드 다음에 추가

```
void insertAfter(struct Node* prev_node, int new_data){
    if (prev_node == NULL){
        printf("이전 노드가 NULL이 아니어야 합니다.");
        return;
    }

    struct Node* new_node = (struct Node*) malloc(sizeof(struct Node));

    new_node->data = new_data;
    new_node->next = prev_node->next;

    prev_node->next = new_node;
    
}
```

</br>

- 끝쪽에 노드 추가

```
void append(struct Node** head_ref, int new_data){
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));

    struct Node *last = *head_ref;

    new_node->data = new_data;

    new_node->next = NULL;

    if (*head_ref == NULL){
        *head_ref = new_node;
        return;
    }

    while(last->next != NULL){
        last = last->next;
    }

    last->next = new_node;
    return;

}
```
', '자료구조', '연결리스트 (LinkedList)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (83, '## Array vs ArrayList vs LinkedList

<br>

세 자료구조를 한 문장으로 정의하면 아래와 같이 말할 수 있다.



<img src="https://t1.daumcdn.net/cfile/tistory/995E66395B1CFD7D10">

<img src="https://t1.daumcdn.net/cfile/tistory/99250A345B1CFD690C">

<br>

- **Array**는 index로 빠르게 값을 찾는 것이 가능함
- **LinkedList**는 데이터의 삽입 및 삭제가 빠름
- **ArrayList**는 데이터를 찾는데 빠르지만, 삽입 및 삭제가 느림

<br>

좀 더 자세히 비교하면?

<br>

우선 배열(Array)는 **선언할 때 크기와 데이터 타입을 지정**해야 한다.

```java
int arr[10];
String arr[5];
```

이처럼, **array**은 메모리 공간에 할당할 사이즈를 미리 정해놓고 사용하는 자료구조다.

따라서 계속 데이터가 늘어날 때, 최대 사이즈를 알 수 없을 때는 사용하기에 부적합하다.

또한 중간에 데이터를 삽입하거나 삭제할 때도 매우 비효율적이다.

4번째 index 값에 새로운 값을 넣어야 한다면? 원래값을 뒤로 밀어내고 해당 index에 덮어씌워야 한다. 기본적으로 사이즈를 정해놓은 배열에서는 해결하기엔 부적합한 점이 많다.

대신, 배열을 사용하면 index가 존재하기 때문에 위치를 바로 알 수 있어 검색에 편한 장점이 있다.

<br>

이를 해결하기 위해 나온 것이 **List**다.

List는 array처럼 **크기를 정해주지 않아도 된다**. 대신 array에서 index가 중요했다면, List에서는 순서가 중요하다.

크기가 정해져있지 않기 때문에, 중간에 데이터를 추가하거나 삭제하더라도 array에서 갖고 있던 문제점을 해결 가능하다. index를 가지고 있으므로 검색도 빠르다.

하지만, 중간에 데이터를 추가 및 삭제할 때 시간이 오래걸리는 단점이 존재한다. (더하거나 뺄때마다 줄줄이 당겨지거나 밀려날 때 진행되는 연산이 추가, 메모리도 낭비..)

<br>

그렇다면 **LinkedList**는?

연결리스트에는 단일, 다중 등 여러가지가 존재한다.

종류가 무엇이든, **한 노드에 연결될 노드의 포인터 위치를 가리키는 방식**으로 되어있다.

> 단일은 뒤에 노드만 가리키고, 다중은 앞뒤 노드를 모두 가리키는 차이

<br>

이런 방식을 활용하면서, 데이터의 중간에 삽입 및 삭제를 하더라도 전체를 돌지 않아도 이전 값과 다음값이 가르켰던 주소값만 수정하여 연결시켜주면 되기 때문에 빠르게 진행할 수 있다.

이렇게만 보면 가장 좋은 방법 같아보이지만, `List의 k번째 값을 찾아라`에서는 비효율적이다.

<br>

array나 arrayList에서 index를 갖고 있기 때문에 검색이 빠르지만, LinkedList는 처음부터 살펴봐야하므로(순차) 검색에 있어서는 시간이 더 걸린다는 단점이 존재한다. 

<br>

따라서 상황에 맞게 자료구조를 잘 선택해서 사용하는 것이 중요하다.', '자료구조', 'Array vs ArrayList vs LinkedList', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (84, '## 스택(Stack)

입력과 출력이 한 곳(방향)으로 제한

##### LIFO (Last In First Out, 후입선출) : 가장 나중에 들어온 것이 가장 먼저 나옴

<br>

***언제 사용?***

함수의 콜스택, 문자열 역순 출력, 연산자 후위표기법

<br>

데이터 넣음 : push() 

데이터 최상위 값 뺌 : pop()

비어있는 지 확인 : isEmpty()

꽉차있는 지 확인 : isFull()

+SP

<br>

push와 pop할 때는 해당 위치를 알고 있어야 하므로 기억하고 있는 ''스택 포인터(SP)''가 필요함

스택 포인터는 다음 값이 들어갈 위치를 가리키고 있음 (처음 기본값은 -1)

```java
private int sp = -1;
```

<br>

##### push

```java
public void push(Object o) {
    if(isFull(o)) {
        return;
    }
    
    stack[++sp] = o;
}
```

스택 포인터가 최대 크기와 같으면 return

아니면 스택의 최상위 위치에 값을 넣음

<br>

##### pop

```java
public Object pop() {
    
    if(isEmpty(sp)) {
        return null;
    }
    
    Object o = stack[sp--];
    return o;
    
}
```

스택 포인터가 0이 되면 null로 return;

아니면 스택의 최상위 위치 값을 꺼내옴

<br>

##### isEmpty

```java
private boolean isEmpty(int cnt) {
    return sp == -1 ? true : false;
}
```

입력 값이 최초 값과 같다면 true, 아니면 false

<br>

##### isFull

```java
private boolean isFull(int cnt) {
    return sp + 1 == MAX_SIZE ? true : false;
}
```

스택 포인터 값+1이 MAX_SIZE와 같으면 true, 아니면 false

<br>

<br>

#### 동적 배열 스택

위처럼 구현하면 스택에는 MAX_SIZE라는 최대 크기가 존재해야 한다

(스택 포인터와 MAX_SIZE를 비교해서 isFull 메소드로 비교해야되기 때문!)

<br>

최대 크기가 없는 스택을 만드려면?

> arraycopy를 활용한 동적배열 사용

<br>

```java
public void push(Object o) {
    
    if(isFull(sp)) {
        
        Object[] arr = new Object[MAX_SIZE * 2];
        System.arraycopy(stack, 0, arr, 0, MAX_SIZE);
        stack = arr;
        MAX_SIZE *= 2; // 2배로 증가
    }
    
    stack[sp++] = o;
}
```

기존 스택의 2배 크기만큼 임시 배열(arr)을 만들고

arraycopy를 통해 stack의 인덱스 0부터 MAX_SIZE만큼을 arr 배열의 0번째부터 복사한다

복사 후에 arr의 참조값을 stack에 덮어씌운다

마지막으로 MAX_SIZE의 값을 2배로 증가시켜주면 된다.

<br>

이러면, 스택이 가득찼을 때 자동으로 확장되는 스택을 구현할 수 있음

<br>

#### 스택을 연결리스트로 구현해도 해결 가능

```java
public class Node {

    public int data;
    public Node next;

    public Node() {
    }

    public Node(int data) {
        this.data = data;
        this.next = null;
    }
}
```

```java
public class Stack {
    private Node head;
    private Node top;

    public Stack() {
        head = top = null;
    }

    private Node createNode(int data) {
        return new Node(data);
    }

    private boolean isEmpty() {
        return top == null ? true : false;
    }

    public void push(int data) {
        if (isEmpty()) { // 스택이 비어있다면
            head = createNode(data);
            top = head;
        }
        else { //스택이 비어있지 않다면 마지막 위치를 찾아 새 노드를 연결시킨다.
            Node pointer = head;

            while (pointer.next != null)
                pointer = pointer.next;

            pointer.next = createNode(data);
            top = pointer.next;
        }
    }

    public int pop() {
        int popData;
        if (!isEmpty()) { // 스택이 비어있지 않다면!! => 데이터가 있다면!!
            popData = top.data; // pop될 데이터를 미리 받아놓는다.
            Node pointer = head; // 현재 위치를 확인할 임시 노드 포인터

            if (head == top) // 데이터가 하나라면
                head = top = null;
            else { // 데이터가 2개 이상이라면
                while (pointer.next != top) // top을 가리키는 노드를 찾는다.
                    pointer = pointer.next;

                pointer.next = null; // 마지막 노드의 연결을 끊는다.
                top = pointer; // top을 이동시킨다.
            }
            return popData;
        }
        return -1; // -1은 데이터가 없다는 의미로 지정해둠.

    }

}
```

<br>

<br>

<br>

## 큐(Queue)

입력과 출력을 한 쪽 끝(front, rear)으로 제한

##### FIFO (First In First Out, 선입선출) : 가장 먼저 들어온 것이 가장 먼저 나옴

<br>

***언제 사용?***

버퍼, 마구 입력된 것을 처리하지 못하고 있는 상황, BFS

<br>

큐의 가장 첫 원소를 front, 끝 원소를 rear라고 부름

큐는 **들어올 때 rear로 들어오지만, 나올 때는 front부터 빠지는 특성**을 가짐

접근방법은 가장 첫 원소와 끝 원소로만 가능

<br>

데이터 넣음 : enQueue()

데이터 뺌 : deQueue()

비어있는 지 확인 : isEmpty()

꽉차있는 지 확인 : isFull()

<br>

데이터를 넣고 뺄 때 해당 값의 위치를 기억해야 함. (스택에서 스택 포인터와 같은 역할)

이 위치를 기억하고 있는 게 front와 rear

front : deQueue 할 위치 기억

rear : enQueue 할 위치 기억

<br>

##### 기본값

```java
private int size = 0; 
private int rear = -1; 
private int front = -1;

Queue(int size) { 
    this.size = size;
    this.queue = new Object[size];
}
```

<br>

<br>

##### enQueue

```java
public void enQueue(Object o) {
    
    if(isFull()) {
        return;
    }
    
    queue[++rear] = o;
}
```

enQueue 시, 가득 찼다면 꽉 차 있는 상태에서 enQueue를 했기 때문에 overflow

아니면 rear에 값 넣고 1 증가

<br>

<br>

##### deQueue

```java
public Object deQueue(Object o) {
    
    if(isEmpty()) { 
        return null;
    }
    
    Object o = queue[front];
    queue[front++] = null;
    return o;
}
```

deQueue를 할 때 공백이면 underflow

front에 위치한 값을 object에 꺼낸 후, 꺼낸 위치는 null로 채워줌

<br>

#####  isEmpty

```java
public boolean isEmpty() {
    return front == rear;
}
```

front와 rear가 같아지면 비어진 것

<br>

##### isFull

```java
public boolean isFull() {
    return (rear == queueSize-1);
}
```

rear가 사이즈-1과 같아지면 가득찬 것

<br>

---

일반 큐의 단점 : 큐에 빈 메모리가 남아 있어도, 꽉 차있는것으로 판단할 수도 있음

(rear가 끝에 도달했을 때)

<br>

이를 개선한 것이 **''원형 큐''**

논리적으로 배열의 처음과 끝이 연결되어 있는 것으로 간주함!

<br>

원형 큐는 초기 공백 상태일 때 front와 rear가 0

공백, 포화 상태를 쉽게 구분하기 위해 **자리 하나를 항상 비워둠**

```
(index + 1) % size로 순환시킨다
```

<br>

##### 기본값

```java
private int size = 0; 
private int rear = 0; 
private int front = 0;

Queue(int size) { 
    this.size = size;
    this.queue = new Object[size];
}
```

<br>

##### enQueue

```java
public void enQueue(Object o) {
    
    if(isFull()) {
        return;
    }
    
    rear = (++rear) % size;
    queue[rear] = o;
}
```

enQueue 시, 가득 찼다면 꽉 차 있는 상태에서 enQueue를 했기 때문에 overflow

<br>

<br>

##### deQueue

```java
public Object deQueue(Object o) {
    
    if(isEmpty()) { 
        return null;
    }
    
    front = (++front) % size;
    Object o = queue[front];
    return o;
}
```

deQueue를 할 때 공백이면 underflow

<br>

#####  isEmpty

```java
public boolean isEmpty() {
    return front == rear;
}
```

front와 rear가 같아지면 비어진 것

<br>

##### isFull

```java
public boolean isFull() {
    return ((rear+1) % size == front);
}
```

rear+1%size가 front와 같으면 가득찬 것

<br>

원형 큐의 단점 : 메모리 공간은 잘 활용하지만, 배열로 구현되어 있기 때문에 큐의 크기가 제한

<br>

<br>

이를 개선한 것이 ''연결리스트 큐''

##### 연결리스트 큐는 크기가 제한이 없고 삽입, 삭제가 편리

<br>

##### enqueue 구현

```java
public void enqueue(E item) {
    Node oldlast = tail; // 기존의 tail 임시 저장
    tail = new Node; // 새로운 tail 생성
    tail.item = item;
    tail.next = null;
    if(isEmpty()) head = tail; // 큐가 비어있으면 head와 tail 모두 같은 노드 가리킴
    else oldlast.next = tail; // 비어있지 않으면 기존 tail의 next = 새로운 tail로 설정
}
```

> - 데이터 추가는 끝 부분인 tail에 한다.
>
> - 기존의 tail는 보관하고, 새로운 tail 생성
>
> - 큐가 비었으면 head = tail를 통해 둘이 같은 노드를 가리키도록 한다.
> - 큐가 비어있지 않으면, 기존 tail의 next에 새로만든 tail를 설정해준다.

<br>

##### dequeue 구현

```java
public T dequeue() {
    // 비어있으면
    if(isEmpty()) {
        tail = head;
        return null;
    }
    // 비어있지 않으면
    else {
        T item = head.item; // 빼낼 현재 front 값 저장
        head = head.next; // front를 다음 노드로 설정
        return item;
    }
}
```

> - 데이터는 head로부터 꺼낸다. (가장 먼저 들어온 것부터 빼야하므로)
> - head의 데이터를 미리 저장해둔다.
> - 기존의 head를 그 다음 노드의 head로 설정한다.
> - 저장해둔 데이터를 return 해서 값을 빼온다.

<br>

이처럼 삽입은 tail, 제거는 head로 하면서 삽입/삭제를 스택처럼 O(1)에 가능하도록 구현이 가능하다.', '자료구조', '스택과 큐 (Stack & Queue)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (85, '## 해시(Hash)

데이터를 효율적으로 관리하기 위해, 임의의 길이 데이터를 고정된 길이의 데이터로 매핑하는 것

해시 함수를 구현하여 데이터 값을 해시 값으로 매핑한다.

<br>

```
Lee → 해싱함수 → 5
Kim → 해싱함수 → 3
Park → 해싱함수 → 2
...
Chun → 해싱함수 → 5 // Lee와 해싱값 충돌
```

결국 데이터가 많아지면, 다른 데이터가 같은 해시 값으로 충돌나는 현상이 발생함 **''collision'' 현상**

***그래도 해시 테이블을 쓰는 이유는?***

> 적은 자원으로 많은 데이터를 효율적으로 관리하기 위해
>
> 하드디스크나, 클라우드에 존재하는 무한한 데이터들을 유한한 개수의 해시값으로 매핑하면 작은 메모리로도 프로세스 관리가 가능해짐!

- 언제나 동일한 해시값 리턴, index를 알면 빠른 데이터 검색이 가능해짐
- 해시테이블의 시간복잡도 O(1) - (이진탐색트리는 O(logN))

<br>

##### 충돌 문제 해결

1. **체이닝** : 연결리스트로 노드를 계속 추가해나가는 방식 
   (제한 없이 계속 연결 가능, but 메모리 문제)

2. **Open Addressing** : 해시 함수로 얻은 주소가 아닌 다른 주소에 데이터를 저장할 수 있도록 허용 (해당 키 값에 저장되어있으면 다음 주소에 저장)

3. **선형 탐사** : 정해진 고정 폭으로 옮겨 해시값의 중복을 피함
4. **제곱 탐사** : 정해진 고정 폭을 제곱수로 옮겨 해시값의 중복을 피함 

<br>

<br>

참고자료 : [링크](<https://ratsgo.github.io/data%20structure&algorithm/2017/10/25/hash/>)', '자료구조', '해시 (Hash)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (86, '# Tree

<br>

```
Node와 Edge로 이루어진 자료구조
Tree의 특성을 이해하자
```

<br>

<img src="https://www.geeksforgeeks.org/wp-content/uploads/binary-tree-to-DLL.png">

<br>

트리는 값을 가진 `노드(Node)`와 이 노드들을 연결해주는 `간선(Edge)`으로 이루어져있다.

그림 상 데이터 1을 가진 노드가 `루트(Root) 노드`다.

모든 노드들은 0개 이상의 자식(Child) 노드를 갖고 있으며 보통 부모-자식 관계로 부른다.

<br>

아래처럼 가족 관계도를 그릴 때 트리 형식으로 나타내는 경우도 많이 봤을 것이다. 자료구조의 트리도 이 방식을 그대로 구현한 것이다.

<img src="https://post-phinf.pstatic.net/MjAxOTA4MjZfMTg1/MDAxNTY2Nzc0Mzk2OTMw.k2EDmhB2y4O1MVrL-XqOXibXkSOBtGX8r86emCgUk9Eg.8C_5nfeIvIDSiLO8FL-i4e28h-8DmbQRS4r2CqSJ6TUg.JPEG/2216_nephew.jpg?type=w1200" width="500">

<br>

트리는 몇 가지 특징이 있다.

- 트리에는 사이클이 존재할 수 없다. (만약 사이클이 만들어진다면, 그것은 트리가 아니고 그래프다)
- 모든 노드는 자료형으로 표현이 가능하다.
- 루트에서 한 노드로 가는 경로는 유일한 경로 뿐이다.
- 노드의 개수가 N개면, 간선은 N-1개를 가진다.

<br>

가장 중요한 것은, `그래프`와 `트리`의 차이가 무엇인가인데, 이는 사이클의 유무로 설명할 수 있다.

<br>

###  트리 순회 방식

트리를 순회하는 방식은 총 4가지가 있다. 위의 그림을 예시로 진행해보자

<br>

<img src="https://www.geeksforgeeks.org/wp-content/uploads/binary-tree-to-DLL.png">

<br>

1. #### 전위 순회(pre-order)

   각 루트(Root)를 순차적으로 먼저 방문하는 방식이다. 

   (Root → 왼쪽 자식 → 오른쪽 자식)

   > 1 → 2 → 4 → 8 → 9 → 5 → 10 → 11 → 3 → 6 → 13 → 7 → 14

   <br>

2. #### 중위 순회(in-order)

   왼쪽 하위 트리를 방문 후 루트(Root)를 방문하는 방식이다. 

   (왼쪽 자식 → Root → 오른쪽 자식)

   > 8 → 4 → 9 → 2 → 10 → 5 → 11 → 1 → 6 → 13 → 3 →14 → 7

   <br>

3. #### 후위 순회(post-order)

   왼쪽 하위 트리부터 하위를 모두 방문 후 루트(Root)를 방문하는 방식이다.

   (왼쪽 자식 → 오른쪽 자식 → Root)

   > 8 → 9 → 4 → 10 → 11 → 5 → 2 → 13 → 6 → 14 → 7 → 3 → 1

   <br>

4. #### 레벨 순회(level-order)

   루트(Root)부터 계층 별로 방문하는 방식이다.

   > 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 10 → 11 → 13 → 14

<br>

<br>

### Code

```java
public class Tree<T> {
    private Node<T> root;

    public Tree(T rootData) {
        root = new Node<T>();
        root.data = rootData;
        root.children = new ArrayList<Node<T>>();
    }

    public static class Node<T> {
        private T data;
        private Node<T> parent;
        private List<Node<T>> children;
    }
}
```

<br>

<br>

#### [참고 자료]

- [링크](https://www.geeksforgeeks.org/binary-tree-data-structure/)', '자료구조', '트리 (Tree)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (87, '## [자료구조] 이진탐색트리 (Binary Search Tree)

<br>

***이진탐색트리의 목적은?***

> 이진탐색 + 연결리스트

이진탐색 : **탐색에 소요되는 시간복잡도는 O(logN)**, but 삽입,삭제가 불가능

연결리스트 : **삽입, 삭제의 시간복잡도는 O(1)**, but 탐색하는 시간복잡도가 O(N)

이 두가지를 합하여 장점을 모두 얻는 것이 **''이진탐색트리''**

즉, 효율적인 탐색 능력을 가지고, 자료의 삽입 삭제도 가능하게 만들자

<br>

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2Fk074C%2FbtqwZZvI1D3%2FeVUanrpKdIRKnZpkKiQMe0%2Fimg.png">

<br>

#### 특징

- 각 노드의 자식이 2개 이하
- 각 노드의 왼쪽 자식은 부모보다 작고, 오른쪽 자식은 부모보다 큼
- 중복된 노드가 없어야 함

***중복이 없어야 하는 이유는?***

검색 목적 자료구조인데, 굳이 중복이 많은 경우에 트리를 사용하여 검색 속도를 느리게 할 필요가 없음. (트리에 삽입하는 것보다, 노드에 count 값을 가지게 하여 처리하는 것이 훨씬 효율적)

<br>

이진탐색트리의 순회는 **''중위순회(inorder)'' 방식 (왼쪽 - 루트 - 오른쪽)**

중위 순회로 **정렬된 순서**를 읽을 수 있음

<br>

#### BST 핵심연산

- 검색
- 삽입
- 삭제
- 트리 생성
- 트리 삭제

<br>

#### 시간 복잡도

- 균등 트리 : 노드 개수가 N개일 때 O(logN)
- 편향 트리 : 노드 개수가 N개일 때 O(N)

> 삽입, 검색, 삭제 시간복잡도는 **트리의 Depth**에 비례

<br>

#### 삭제의 3가지 Case

1) 자식이 없는 leaf 노드일 때 → 그냥 삭제

2) 자식이 1개인 노드일 때 → 지워진 노드에 자식을 올리기

3) 자식이 2개인 노드일 때 → 오른쪽 자식 노드에서 가장 작은 값 or 왼쪽 자식 노드에서 가장 큰 값 올리기

<br>

편향된 트리(정렬된 상태 값을 트리로 만들면 한쪽으로만 뻗음)는 시간복잡도가 O(N)이므로 트리를 사용할 이유가 사라짐 → 이를 바로 잡도록 도와주는 개선된 트리가 AVL Tree, RedBlack Tree

<br>

[소스 코드(java)](<https://github.com/kim6394/tech-interview-for-developer/blob/master/Computer%20Science/Data%20Structure/code/binarySearchTree.java>)', '자료구조', '이진 탐색 트리 (Binary Search Tree)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (88, '## [자료구조] 힙(Heap)

<br>

##### 알아야할 것

> 1.힙의 개념
>
> 2.힙의 삽입 및 삭제

<br>

힙은, 우선순위 큐를 위해 만들어진 자료구조다.

먼저 **우선순위 큐**에 대해서 간략히 알아보자 

<br>

**우선순위 큐** : 우선순위의 개념을 큐에 도입한 자료구조

> 데이터들이 우선순위를 가지고 있음. 우선순위가 높은 데이터가 먼저 나감

스택은 LIFO, 큐는 FIFO

<br>

##### 언제 사용?

> 시뮬레이션 시스템, 작업 스케줄링, 수치해석 계산

우선순위 큐는 배열, 연결리스트, 힙으로 구현 (힙으로 구현이 가장 효율적!)

힙 → 삽입 : O(logn) , 삭제 : O(logn)

<br>

<br>

### 힙(Heap)

---

완전 이진 트리의 일종

> 여러 값 중, 최대값과 최소값을 빠르게 찾아내도록 만들어진 자료구조

반정렬 상태

힙 트리는 중복된 값 허용 (이진 탐색 트리는 중복값 허용X)

<br>

#### 힙 종류

###### 최대 힙(max heap)

  부모 노드의 키 값이 자식 노드의 키 값보다 크거나 같은 완전 이진 트리

###### 최소 힙(min heap)

  부모 노드의 키 값이 자식 노드의 키 값보다 작거나 같은 완전 이진 트리

 <img src="https://t1.daumcdn.net/cfile/tistory/17084F504DA9895214">

<br>

#### 구현

---

힙을 저장하는 표준적인 자료구조는 `배열`

구현을 쉽게 하기 위해 배열의 첫번째 인덱스인 0은 사용되지 않음

특정 위치의 노드 번호는 새로운 노드가 추가되어도 변하지 않음

(ex. 루트 노드(1)의 오른쪽 노드 번호는 항상 3)

 <br>

##### 부모 노드와 자식 노드 관계

```
왼쪽 자식 index = (부모 index) * 2

오른쪽 자식 index = (부모 index) * 2 + 1

부모 index = (자식 index) / 2
```

<br>

#### 힙의 삽입

1.힙에 새로운 요소가 들어오면, 일단 새로운 노드를 힙의 마지막 노드에 삽입

2.새로운 노드를 부모 노드들과 교환

<br>

###### 최대 힙 삽입 구현

```java
void insert_max_heap(int x) {
    
    maxHeap[++heapSize] = x; 
    // 힙 크기를 하나 증가하고, 마지막 노드에 x를 넣음
    
    for( int i = heapSize; i > 1; i /= 2) {
        
        // 마지막 노드가 자신의 부모 노드보다 크면 swap
        if(maxHeap[i/2] < maxHeap[i]) {
            swap(i/2, i);
        } else {
            break;
        }
        
    }
}
```

부모 노드는 자신의 인덱스의 /2 이므로, 비교하고 자신이 더 크면 swap하는 방식

<br>

#### 힙의 삭제

1.최대 힙에서 최대값은 루트 노드이므로 루트 노드가 삭제됨
(최대 힙에서 삭제 연산은 최대값 요소를 삭제하는 것)

2.삭제된 루트 노드에는 힙의 마지막 노드를 가져옴

3.힙을 재구성

<br>

###### 최대 힙 삭제 구현

```java
int delete_max_heap() {
    
    if(heapSize == 0) // 배열이 비어있으면 리턴
        return 0;
    
    int item = maxHeap[1]; // 루트 노드의 값을 저장
    maxHeap[1] = maxHeap[heapSize]; // 마지막 노드 값을 루트로 이동
    maxHeap[heapSize--] = 0; // 힙 크기를 하나 줄이고 마지막 노드 0 초기화
    
    for(int i = 1; i*2 <= heapSize;) {
        
        // 마지막 노드가 왼쪽 노드와 오른쪽 노드보다 크면 끝
        if(maxHeap[i] > maxHeap[i*2] && maxHeap[i] > maxHeap[i*2+1]) {
            break;
        }
        
        // 왼쪽 노드가 더 큰 경우, swap
        else if (maxHeap[i*2] > maxHeap[i*2+1]) {
            swap(i, i*2);
            i = i*2;
        }
        
        // 오른쪽 노드가 더 큰 경우
        else {
            swap(i, i*2+1);
            i = i*2+1;
        }
    }
    
    return item;
    
}
```

<br>

<br>

**[참고 자료]** [링크](<https://gmlwjd9405.github.io/2018/05/10/data-structure-heap.html>)', '자료구조', '힙 (Heap)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (89, '## B Tree & B+ Tree

<br>

> **이진 트리**는 하나의 부모가 두 개의 자식밖에 가지질 못하고, 균형이 맞지 않으면 검색 효율이 선형검색 급으로 떨어진다. 하지만 이진 트리 구조의 간결함과 균형만 맞다면 검색, 삽입, 삭제 모두 O(logN)의 성능을 보이는 장점이 있기 때문에 계속 개선시키기 위한 노력이 이루어지고 있다.

<br>

#### B Tree

---

데이터베이스, 파일 시스템에서 널리 사용되는 트리 자료구조의 일종이다.

이진 트리를 확장해서, 더 많은 수의 자식을 가질 수 있게 일반화 시킨 것이 B-Tree

<br>

자식 수에 대한 일반화를 진행하면서, 하나의 레벨에 더 저장되는 것 뿐만 아니라 트리의 균형을 자동으로 맞춰주는 로직까지 갖추었다. 단순하고 효율적이며, 레벨로만 따지면 완전히 균형을 맞춘 트리다.

```
대량의 데이터를 처리해야 할 때, 검색 구조의 경우 하나의 노드에 많은 데이터를 가질 수 있다는 점은 상당히 큰 장점이다.

대량의 데이터는 메모리보다 블럭 단위로 입출력하는 하드디스크 or SSD에 저장해야하기 때문!

ex) 한 블럭이 1024 바이트면, 2바이트를 읽으나 1024바이트를 읽으나 똑같은 입출력 비용 발생. 따라서 하나의 노드를 모두 1024바이트로 꽉 채워서 조절할 수 있으면 입출력에 있어서 효율적인 구성을 갖출 수 있다.

→ B-Tree는 이러한 장점을 토대로 많은 데이터베이스 시스템의 인덱스 저장 방법으로 애용하고 있음
```

<br>

##### 규칙

- 노드의 자료수가 N이면, 자식 수는 N+1이어야 함
- 각 노드의 자료는 정렬된 상태여야함
- 루트 노드는 적어도 2개 이상의 자식을 가져야함
- 루트 노드를 제외한 모든 노드는 적어도 M/2개의 자료를 가지고 있어야함
- 외부 노드로 가는 경로의 길이는 모두 같음.
- 입력 자료는 중복 될 수 없음

<br>

<br>

#### B+ Tree

---

데이터의 빠른 접근을 위한 인덱스 역할만 하는 비단말 노드(not Leaf)가 추가로 있음

(기존의 B-Tree와 데이터의 연결리스트로 구현된 색인구조)

<br>

B-Tree의 변형 구조로, index 부분과 leaf 노드로 구성된 순차 데이터 부분으로 이루어진다. 인덱스 부분의 key 값은 leaf에 있는 key 값을 직접 찾아가는데 사용함.

<br>

##### 장점

> 블럭 사이즈를 더 많이 이용할 수 있음 (key 값에 대한 하드디스크 액세스 주소가 없기 때문)
>
> leaf 노드끼리 연결 리스트로 연결되어 있어서 범위 탐색에 매우 유리함

##### 단점

> B-tree의 경우 최상 케이스에서는 루트에서 끝날 수 있지만, B+tree는 무조건 leaf 노드까지 내려가봐야 함

<br>

<br>

<br>

##### B-Tree & B+ Tree

> B-tree는 각 노드에 데이터가 저장됨
>
> B+tree는 index 노드와 leaf 노드로 분리되어 저장됨
>
> (또한, leaf 노드는 서로 연결되어 있어서 임의접근이나 순차접근 모두 성능이 우수함)

<br>

B-tree는 각 노드에서 key와 data 모두 들어갈 수 있고, data는 disk block으로 포인터가 될 수 있음

B+tree는 각 노드에서 key만 들어감. 따라서 data는 모두 leaf 노드에만 존재

B+tree는 add와 delete가 모두 leaf 노드에서만 이루어짐

<br>

**참고자료** : [링크](<https://wangin9.tistory.com/entry/B-tree-B-tree>)', '자료구조', 'B Tree & B+ Tree', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (90, '## 트라이(Trie)

> 문자열에서 검색을 빠르게 도와주는 자료구조

```
정수형에서 이진탐색트리를 이용하면 시간복잡도 O(logN)
하지만 문자열에서 적용했을 때, 문자열 최대 길이가 M이면 O(M*logN)이 된다.

트라이를 활용하면? → O(M)으로 문자열 검색이 가능함!
```

<br>

<img src="https://t1.daumcdn.net/cfile/tistory/24354E335833A7CF17">

> 예시 그림에서 주어지는 배열의 총 문자열 개수는 8개인데, 트라이를 활용한 트리에서도 마지막 끝나는 노드마다 ''네모'' 모양으로 구성된 것을 확인하면 총 8개다.

<br>

해당 자료구조를 풀어보기 위해 좋은 문제 : [백준 5052(전화번호 목록)](<https://www.acmicpc.net/problem/5052>)

##### 문제에서 Trie를 java로 구현한 코드

```java
static class Trie {
    boolean end;
    boolean pass;
    Trie[] child;

    Trie() {
        end = false;
        pass = false;
        child = new Trie[10];
    }

    public boolean insert(String str, int idx) {

        //끝나는 단어 있으면 false 종료
        if(end) return false;

        //idx가 str만큼 왔을때
        if(idx == str.length()) {
            end = true;
            if(pass) return false; // 더 지나가는 단어 있으면 false 종료
            else return true;
        }
        //아직 안왔을 때
        else {
            int next = str.charAt(idx) - ''0'';
            if(child[next] == null) {
                child[next] = new Trie();
                pass = true;
            }
            return child[next].insert(str, idx+1);
        }

    }
}
```
', '자료구조', '트라이 (Trie)', 'CS');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (101, '# 다익스트라 알고리즘 (Dijkstra Algorithm)

음의 가중치(음의 간선, 음의 값)가 없는 그래프의 한 노드에서 각 모든 노드까지의 최단거리를 구하는 알고리즘이다.

시작 정점에서 거리가 최소인 정점을 선택해 나가면서 최단경로를 구하는 방식이다. (BFS의 확장형태)  
탐욕 기법을 사용한 알고리즘으로 MST의 프림 알고리즘과 유사하다.

초기 모델은 O(V^2)의 시간복잡도를 가졌다. 이후 우선순위 큐 등을 이용한 고안된 알고리즘이 탄생했고, 현재는 O((V+E)log V)의 시간복잡도를 가진다.

(1) 방문하지 않은 노드 중에서 가장 비용이 적은 노드를 선택한다(그리디 알고리즘)

(2) 해당 노드로부터 갈 수 있는 노드들의 비용을 갱신한다(다이나믹 프로그래밍)

## 동작단계

1. 간선리스트 배열을 생성해서 초기화 해준다.
2. 정점의 간선리스트에 도착점과 가중치를 넣는다.
3. 최단거리 배열과 방문여부 체크 배열을 만든다.
4. 최단거리 배열에 출발점은 0으로, 나머지는 최대값을 넣어서 초기화 한다.
5. 우선순위 큐에 출발지 정점과 그 가중치(0)을 넣는다.
6. 우선순위 큐에서 꺼내면서 다음 정점으로의 방문여부를 체크하여 방문했으면 continue하고, 방문하지 않았으면 방문체크 이후 최소비용을 업데이트한다.
7. 해당 정점의 간선리스트를 모두 확인하며, 해당 정점까지의 기존 최소비용(distance[node.to])과 이전 정점까지의 최소비용 + 이전 정점에서 간선리스트의 정점까지 가중치를 더한 값(distance[current.to] + node.weight)을 비교하여 최소비용(distance)을 업데이트하고 우선순위 큐에 넣는다.  
   -> 기존 해당점점까지의 최단거리 vs 최근정점까지 경유한 이후 해당정점까지의 거리

8. 다음 최단경로의 정점을 경유지로 다시 방문하지 않은 다른정점들과 비교하며 최소비용을 업데이트 해준다.

<br/>

# 예제코드

```java
public class DijkstraTest2_PQ {

    static class Vertex implements Comparable<Vertex> {
        int no; // 정점번호
        int minDistance; // 출발지에서 자신으로의 최소비용

        public Vertex(int no, int minDistance) {
            this.no = no;
            this.minDistance = minDistance;
        }

        @Override
        public int compareTo(Vertex o) {
            return this.minDistance - o.minDistance;
        }
    }


    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int V = Integer.parseInt(br.readLine());

        int[][] adjMatrix = new int[V][V];
        int start = 0;
//        int end = V-1;

        StringTokenizer st;
        for (int i = 0; i < V; i++) {
            st = new StringTokenizer(br.readLine());
            for (int j = 0; j < V; j++) {
                adjMatrix[i][j] = Integer.parseInt(st.nextToken());
            }
        }

        int[] distance = new int[V]; // 출발지에서 자신으로 오는 최소비용
        boolean[] visited = new boolean[V]; // 최소비용 확정여부

        PriorityQueue<Vertex> pque = new PriorityQueue<Vertex>();

        Arrays.fill(distance, Integer.MAX_VALUE); // 최대값을 넣고 시작
        distance[start] = 0; // 시작점(start) 0으로
        pque.offer(new Vertex(start, distance[start]));

        while (!pque.isEmpty()) {
            // 단계1 : 최소비용이 확정되지 않은 정점 중 최소비용의 정점 선택

            Vertex current = pque.poll();

            if (visited[current.no]) continue; // 이미 방문해서 확정된 정점이라면 넘어간다. (pq에 이전 업데이트내역이 남아있을 수 있으므로)
            visited[current.no] = true; // 가장 최소비용인 정점을 확정지어준다.

//            if(current == end) break; // 꺼낸정점이 원하는 끝지점이면 꺼낼수 있다.


            // 단계2 : 선택된 정점을 경유지로 하여 아직 최소비용이 확정되지않은 다른 정점의 최소비용을 고려

            for (int j = 0; j < V; j++) {
                if (!visited[j] && adjMatrix[current.no][j] != 0
                        && distance[j] > distance[current.no] + adjMatrix[current.no][j]) {
                    distance[j] = distance[current.no] + adjMatrix[current.no][j];
                    pque.offer(new Vertex(j, distance[j]));
                }
            }

        }

//        System.out.println(distance[end]); // 원하는 끝지점까지의 최소거리
        System.out.println(Arrays.toString(distance));

    }
}
```
', '알고리즘', '다익스트라', 'ALGORITHM');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (102, '# 예제코드

```java
public class DisjointSetTest {

    static int N;
    static int[] parents;

    // 단위집합 생성
    public static void makeSet() {
        parents = new int[N];
        // 자신의 부모노드를 자신의 값으로 세팅
        for(int i = 0; i < N; i++) {
            parents[i] = i;
        }
    }

    // a의 집합 찾기 : a의 대표자 찾기
    public static int findSet(int a) {
        if(a == parents[a]) return a; // 자신이 부모와 같다 = 자신이 루트이다.

        return parents[a] = findSet(parents[a]); // path compression 루트노드의 번호를 재귀로 찾아와서 나의 부모로 대체한다.

    }

    // a,b 두 집합 합치기
    public static boolean union(int a, int b) {
        int aRoot = findSet(a); // 두집합의 대표자 찾기
        int bRoot = findSet(b);

        if(aRoot == bRoot) return false; // 둘이 같은 집합이면 합칠 수 없다.

        parents[bRoot] = aRoot; // a밑에 b붙이기
        return true;
    }
```
', '알고리즘', '유니온파인드', 'ALGORITHM');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (103, '# 정규 표현식 (Regular Expression)

특정한 규칙을 가진 문자열의 집합을 표현하는데 사용되는 언어이다.

텍스트 편집기나 스크립트 언어에서 문자열의 검색과 치환을 위해 지원하고 있다.

## Pattern 클래스

java.util.regex.Pattern 클래스는 matches() 메서드를 지원한다. 특정 문자열이 주어진 정규식에 매칭되는지 테스트할 수 있다.

```java
String pattern = "^[0-9]*$"; // 숫자만
String val = "123456789"; // 대상 문자열

boolean isRegex = Pattern.matches(pattern, val); // true
```

### 주요 메서드

- compile(String regex) : 주어진 정규표현식으로부터 패턴을 만든다.
- matcher(CharSequence input) : 대상 문자열이 패턴과 일치할 경우 true를 반환한다.
- asPredicate() : 문자열을 일치시키는데 사용할 수 있는 술어를 작성한다.
- pattern() : 컴파일된 정규표현식을 String 형태로 반환한다.
- split(CharSequence input) : 문자열을 주어진 인자값 CharSequence 패턴에 따라 분리한다.

<br/>

## Matcher 클래스

대상 문자열의 패턴을 해석하고 주어진 패턴과 일치하는지 판별할 때 사용된다.  
Pattern 클래스와 마찬가지로 Matcher 클래스는 생성자가 없다.  
Matcher 객체는 Pattern 객체의 matcher() 메서드를 호출해서 얻는다.

```java
Pattern pattern = Pattern.compile("^[a-zA-Z]*$"); // 영문자만
String val = "abcdef"; // 대상문자열

Matcher matcher = pattern.matcher(val); // true
```

### 주요 메서드

- matches() : 대상 문자열과 패턴이 일치하는 경우 true 반환
- find() : 대상 문자열과 패턴이 일치하는 경우 true 반환하고 그 위치로 이동
- find(int start) : start 인자로 받은 위치부터 매칭 체크
- start(int group) : 지정된 그룹이 매칭되는 시작위치 반환
- end() : 매칭되는 문자열의 끝 바로 다음 위치를 반환
- end(int group) : 지정된 그룹이 매칭되는 끝 바로 다음 문자 위치를 반환
- group() : 매칭된 부분 반환
- group(int group) : 매칭된 부분 중 group번째 그루핑 매칭부분 반환
- groupCount() : 패턴 내 그룹핑한 전체 갯수를 반환

<br/>

## 정규표현식 문법

- ^ : 문자열의 시작
- $ : 문자열의 끝
- . : 임의의 한 문자
- \\* : 앞의 문자가 0번 이상 발생
- \\+ : 앞의 문자가 1번 이상 발생
- ? : 앞의 문자가 0번 혹은 1번 이상 발생
- [] : 문자의 집합 범위를 나타냄  
  ex) [0-9] : 숫자 0~9 , [a-z] : 알파벳 a~z  
  **앞에 ^가 나타나면 not을 의미**
- {} : 횟수 또는 범위를 의미
- () : 소괄호 안의 문자를 하나의 문자로 인식
- | : or 조건

---

- \\ : 확장 문자의 시작
- \\b : 단어의 경계
- \\B : 단어가 아닌 것의 경계
- \\A : 입력의 시작부분
- \\G : 이전 매치의 끝
- \\Z : 입력의 끝이지만 종결자가 있는 경우
- \\z : 입력의 끝
- \\s : 공백 문자
- \\S : 공백 문자가 아닌 나머지 문자 (= [^\\s] )
- \\w : 알파벳이나 숫자 (= [a-zA-Z_0-9])
- \\W : 알파벳이나 숫자를 제외한 문자 (= [^\\w])
- \\d : 숫자 (= [0-9] )
- \\D : 숫자를 제외한 모든 문자 (= [^0-9] )

<br/>

## 자주 사용하는 정규표현식

- ^[0-9]\\*$ : 숫자
- ^[a-zA-Z]\\*$ : 영문자
- ^[가-힣]\\*$ : 한글
- [abc] : a,b,c 중 하나의 문자
- [^abc] : a,b,c 이외의 하나의 문자
- [a-zA-Z] : a~z 또는 A~Z 사이의 문자를 포함하는지 확인
- [a-d[m-p]] : [a-dm-p]와 동일
- ^([a-zA-Z0-9]\\*)$ : 영어,숫자만 (띄어쓰기 불가능)
- ^([a-zA-Z0-9\\s]\\*)$ : 영어,숫자만 (띄어쓰기 가능)

---

- \\\\\\w+@\\\\w+\\\\.\\\\w+(\\\\.\\\\w+)? : 이메일 주소
- ^\\d{2,3}-\\d{3,4}-\\d{4}$ : 전화번호
- ^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$ : 핸드폰 번호
- \\d{6}\\-[1-4]\\d{6} : 주민등록번호
- ^\\d{3}-\\d{2}$ : 우편번호
', '알고리즘', '정규표현식', 'ALGORITHM');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (104, '# 에라토스테네스의 체

고대 그리스의 수학자 에라토스테네스가 만들어 낸 소수를 찾는 방법으로,
이 방법은 마치 체로 치듯이 수를 걸러낸다고 하여 ''에라토스테네스의 체''라고 부른다.
임의의 자연수 n에 대해 그 이하의 소수를 찾는 가장 간단하고 빠른 방법이다.

### 에라토스테네스의 체 원리

<img src="https://images.velog.io/images/hyojhand/post/c5bbdcd8-a7bf-4d96-a3e8-15f2041388fb/img.gif" width=80%>
2를 제외한 2의 배수를 모두 거르고,
3을 제외한 3의 배수를 모두 거르고,
4는 걸러진 수이므로 넘어간다.
다시 5를 제외한 5의 배수를 거르기를 반복하면서
남은 수들을 소수로 판별할 수 있다.

### 단일 숫자 소수 여부 확인

대량의 수는 에라토스테네스의 체를 사용하는게 효과적이겠지만,
필요한 해당 숫자의 소수여부 판별은 그 수만 찾아주는게 효과적이다.

어떤 수의 소수의 여부를 확인 할 때는, 특정한 숫자의 제곱근 까지만 검증하면 O(N^1/2)의 시간 복잡도로 빠르게 구할 수 있다.

수가 수(N이라고 가정)를 나누면 몫이 생기는데, 몫과 나누는 수 둘 중 하나는 N 제곱근 이하이기 때문이다.
', '알고리즘', '에라토스테네스의 체', 'ALGORITHM');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (105, '유클리드 호제법을 활용한 최대공약수와 최소공배수 구하는 방법에 대해서 알아보자!

## 최대공약수 & 최소공배수

최대공약수(GCD, Greateast Common Division)와 최소공배수(LCM, Least Common Multiple)

<img src="https://images.velog.io/images/hyojhand/post/2c5396e2-2d1f-4052-8093-cc9792194060/IMG_0169.jpg" width=80%>

두 수 A,B의 최대공약수를 G, 최소공배수를 L이라고 하면, " **AB=LG** " 가 성립한다.

## 유클리드 호제법 이란??

유클리드 호제법(Euclidean algorithm) 또는 유클리드 알고리즘은 2개의 자연수의 최대공약수를 구하는 알고리즘의 하나이다.
호제법이란 말은 두 수가 서로(互) 상대방 수를 나누어(除)서 결국 원하는 수를 얻는 알고리즘을 나타낸다.

(a>b 일때) 2개의 자연수 a, b에 대해서 a를 b로 나눈 나머지를 r이라 하면,
a와 b의 최대공약수는 b와 r의 최대공약수와 같다.
이 성질에 따라, b를 r로 나눈 나머지 r''를 구하고, 다시 r을 r''로 나눈 나머지를 구하는 과정을 반복하여 나머지가 0이 되었을 때 나누는 수가 a와 b의 최대공약수이다.

? 요약) a > b일때, a%b = r이며, a와 b의 최대공약수를 gcd(a,b)라고 하면,
**gcd(a,b) = gcd(b,r)**이 성립한다.

예시)
78696과 19332의 최대공약수를 구하면,

    78696 ＝ 19332×4 ＋ 1368
    19332 ＝ 1368×14 ＋ 180
     1368 ＝ 180×7 ＋ 108
      180 ＝ 108×1 ＋ 72
      108 ＝ 72×1 ＋ 36
       72 ＝ 36×2 ＋ 0

따라서, 최대공약수는 36이다.

위의 최대공약수와 최소공배수의 관계에서 AB=LG 이므로,
최소공배수 L은 두수 A,B의 곱 / 최대공약수 이므로
? **최소공배수 lcm = (a\\*b) / gcd(a,b)** 가 된다.
', '알고리즘', '유클리드 호제법', 'ALGORITHM');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (106, '모든 정점에 대한 최단경로는 다익스트라로도 해결할 수 있다. (양의 가중치만 있을때)

→ 단일 출발점 ~ 다른 정점의 도착지까지의 최단경로를 구하기 떄문에 다익스트라를 N번 사용하여 해결

→ PQ,인접리스트로 최적화하지않으면 다익스트라의 시간복잡도 O(N²)에 N번 을 쓰기때문에 O(N³)이 된다.

# 플로이드-워샬 (Floyd-Warshall)

3중 for문으로 구현이 쉽지만 시간복잡도가 O(N³)이다.

음수의 가중치도 처리 가능하다.

- 최초 가중치 배열 세팅

최초에 가중치를 세팅하고, 자기자신을 제외한 곳들의 가중치가 0이라면 큰 값으로 바꿔줘야한다.  
( 최소값을 구하고 있는데 다른 정점을 통해 갈 수 있는 곳들이기 때문에 0이라면 최소값계산에 문제가 생긴다.)

\\* MAXVALUE로 세팅하면 두개의 maxvalue를 거쳐가는 경우 더하게 되면 오버플로우가 생겨 -값으로 바뀌어 문제가 생길 수 있으니 임의의 가중치 최대값을 넣어준다 ex) 999999

```java
for(int i = 1; i<=n; i++){
    for(int j =1; j<=n; j++){
        if (i == j) dist[i][j] = 0;
        else if (adj[i][j]) dist[i][j] = adj[i][j];
        else dist[i][j] = INF;
    }
}
```

- 경유지를 고려해가며 가중치 비교

경유지를 고려하지 않은 직접 가중치부터 시작해서 경유지를 하나씩 늘려가면서, 경유지를 거치는 가중치가 더 최소값일때 값을 바꿔준다.

ex) 경유지를 거치지않는 가중치와 경유지 1개를 거쳤을때의 가중치를 비교해서 최소값으로 세팅하면, 두 경우의 수 중 최소값으로 가중치들이 셋팅된다. 이를 경유지의 수만큼 반복해준다.

최종적으로 경유지를 거치지 않는 경우부터 경유지를 거쳐서 가는 경우까지 중 각 정점들의 최단경로들이 세팅된다.

Dij ^k = Math.min( Dij ^ k-1 , Dik ^ k-1 + Dkj ^ k-1 )

- 음수가중치 일때 \\* 이때 i→j 가 갈수없는경우이고, i→k 는 음수 가중치, k→j가 갈수없는 큰값인 상황이라면
  실제로는 갈 수 없는데, 큰 값보다 조금 작은 값으로 가중치가 업데이트 되버린다 !!!
  → 음의 가중치 일때는 그 경로가 갈 수 있는지 확인하는 과정이 필요하다

```java
for(int k = 1; k<= n; k++){
    for(int i = 1; i <= n; i++){
        for(int j = 1; j<=n; j++){
            dist[i][j] = min(dist[i][j], dist[i][k]+dist[k][j]);
        }
    }
}
```

k까지 고려한 i에서 j까지의 최적해 = k-1까지 고려한 i에서 j까지의 최적해 or k-1까지 고려한 i 에서 k, k에서 j 까지의 최적해의 합

최적화의 원칙 - 내가 최적이 되기 위해서는 내가 이용하는 값들도 최적이어야 한다.

경유지 - 출발지- 도착지 가 아닌, 출발지-경유지-도착지 순으로 for문을 돌린다면
아직 최적의 값이 아닌 값들을 최적이라 생각하고 사용하게 되기 때문에 오류가 발생
', '알고리즘', '플로이드 워샬', 'ALGORITHM');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (107, '# 최소 신장 트리 (Minimum Spannig Tree)

spanning Tree 중에서 사용된 간선들의 가중치 합이 최소인 트리이다.
MST는 간선에 가중치를 고려하여 최소 비용의 스패닝 트리를 선택하는 것이다.

조건

- 본래의 그래프의 모든 노드를 포함
- 간선의 가중치의 합이 최소여야 한다
- 모든 노드가 서로 연결 되어있다
- 트리의 속성을 만족 (사이클이 존재하지 않는다)

## 크루스칼 알고리즘 (Kruskal Algorithm)

최소 비용 신장 트리를 찾는 알고리즘으로 가장 적은 비용으로 모든 노드를 연결하기 위해 사용하는 알고리즘이다.

최소 스패닝 트리를 찾음으로써 간선의 가중치의 합이 최솟값이 되도록 한다.

- 스패닝 트리 : 그래프에서 일부 간선을 선택해서 만든 트리
- 최소 스패닝 트리 : 스패닝 트리 중에 선택한 간선의 가중치의 합이 최소인 트리

### 동작 원리

1. 모든 간선들의 가중치를 오름차 순으로 정렬
2. 가중치가 가장 작은 간선을 선택
3. 위에서 선택한 간선이 연결하려는 2개의 노드가 서로 연결되지 않은 상태라면, 2개의 노드를 서로 연결한다.
4. 이 과정을 반복

## 프림 알고리즘 (Prim Algorithm)

시작 정점을 기준으로 가장 작은 간선과 연결된 정점을 선택하며 신장 트리를 확장 시키는 알고리즘으로, 정점 선택을 기반으로 한다.

### 동작 원리

1. 임의의 간선을 선택
2. 선택한 간선의 정점으로부터 가장 낮은 가중치를 갖는 정점을 선택
3. 모든 정점이 선택될 때까지 반복
', '알고리즘', '크루스칼 & 프림', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (121, '# 스프링 컨테이너 (**ApplicationContext)**

**ApplicationContext**를 ‘스프링 컨테이너’라고 하고, 인터페이스이다.  
스프링 컨테이너는 **@Configuration** 이 붙은 클래스를 파라미터로 받아서, 설정(구성) 정보로 사용한다

**new AnnotationConfigApplicationContext** - 자바 설정 클래스를 기반으로 빈 객체를 생성, 관리하는, 스프링 컨테이너의 구현 객체를 생성한다.

BeanFactory 기능을 모두 상속받아서 빈 관리기능 + 편리한 **부가 기능**을 제공한다.  
(**Bean Factory** - 스프링 컨테이너의 최상위 인터페이스이다. 스프링 빈을 관리하고 조회하는 역할을 담당한다.)

\\* 부가기능 : MessageSource (국제화기능), EnvironmentCapable (환경변수)
, ApplicationEventPublisher (애플리케이션이벤트), ResourceLoader (리소스 조회)

\\* BeanFactory를 직접 사용할 일은 거의 없다. 부가기능이 포함된 ApplicationContext를 사용한다.  
BeanFactory나 ApplicationContext를 **스프링 컨테이너**라 한다.

\\* 스프링 컨테이너는 다양한 형식의 설정 정보를 받아드릴 수 있게 유연하게 설계되어 있다.  
(xml, groovy..) -> **GenericXmlApplicationContext** 를 사용하면서 xml 설정 파일을 넘기면 된다.', 'Spring', 'Spring 컨테이너', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (122, '# Spring Bean

**@Bean** 어노테이션으로 스프링 컨테이너에 등록된 객체를 **''빈 객체(스프링 빈)''** 이라 한다

**@Bean이 붙은 메서드의 명을 스프링 빈의 이름**으로 사용한다. (name= 으로 임의 부여가능)
\\* **빈 이름은 항상 다른 이름을 부여**해야 한다. 같은 이름을 부여하면, 다른 빈이 무시되거나, 기존 빈을 덮어버리거나 설정에 따라 오류가 발생한다.

1. 스프링 컨테이너 생성
2. 스프링 빈 등록
3. 스프링 빈 의존관계 설정 - 준비
4. 스프링 빈 의존관계 설정 - 완료

< 빈 관련 메서드 >

- 스프링구현체**.getBeanDefinitionNames()** - 스프링에 등록된 모든 빈 이름 조회
- **.getBean(빈이름, 타입)** - 빈 이름으로 빈 객체(인스턴스) 조회 (빈이름생략가능)
- **.getBeanDefinition()** - 빈에 각각에 대한 메타데이터 정보
- **.getRole()** - 스프링이 내부에서 사용하는 빈 구분
  - **ROLE_APPLICATION** : 일반적으로 사용자가 정의한 빈
  - **ROLE_INFRASTRUCTURE** : 스프링이 내부에서 사용하는 빈
- **.getBeansOfType()** 을 사용하면 **해당 타입의 모든 빈을 조회**할 수 있다

<br/>

### 빈 조회

- 조회 대상 스프링 빈이 없으면 예외 발생 : **NoSuchBeanDefinitionException**

* 타입으로 조회시 같은 타입의 스프링 빈이 둘 이상이면 오류가 발생한다. 이때는 빈 이름을 지정하자.
* 부모 타입으로 조회하면, 자식 타입도 함께 조회한다.
  → 모든 자바 객체의 최고 부모인 **Object 타입으로 조회하면, 모든 스프링 빈을 조회**한다.

<br/>

### 스프링 빈 설정 메타 정보 - BeanDefinition

<img src="https://velog.velcdn.com/images/hyojhand/post/517e30e7-375c-4557-b016-a871f57b9ba4/image.png" width="600" height="300"/>

AnnotationConfigApplicationContext 는 AnnotatedBeanDefinitionReader 를 사용해서 AppConfig.class 를 읽고 **BeanDefinition** 을 생성한다.
<br>

### BeanDefinition 정보

**BeanClassName** : 생성할 빈의 클래스 명(자바 설정 처럼 팩토리 역할의 빈을 사용하면 없음)

**factoryBeanName** : 팩토리 역할의 빈을 사용할 경우 이름, 예) appConfig

**factoryMethodName** : 빈을 생성할 팩토리 메서드 지정, 예) memberService

**Scope** : 싱글톤(기본값)

**lazyInit** : 스프링 컨테이너를 생성할 때 빈을 생성하는 것이 아니라, 실제 빈을 사용할 때 까지 최대한
생성을 지연처리 하는지 여부

**InitMethodName** : 빈을 생성하고, 의존관계를 적용한 뒤에 호출되는 초기화 메서드 명

**DestroyMethodName** : 빈의 생명주기가 끝나서 제거하기 직전에 호출되는 메서드 명

**Constructor arguments, Properties** : 의존관계 주입에서 사용한다. (자바 설정 처럼 팩토리
역할의 빈을 사용하면 없음)

스프링이 다양한 형태의 설정 정보를 **BeanDefinition**으로 추상화해서 사용하는 것 정도만 이해하자
', 'Spring', 'Spring Bean', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (123, '순수한 DI 컨테이너는 요청을 할때마다 객체를 새로 생성해서 메모리 낭비가 심각해진다.  
→ 해당 객체를 1개만 생성하고 공유하도록 설계한다 (싱글톤 패턴)

# 싱글톤 컨테이너

스프링 컨테이너는 싱글톤 패턴의 문제점을 해결하면서, 객체 인스턴스를 싱글톤(1개만 생성)으로 관리한다.  
스프링 컨테이너는 싱글톤 컨테이너 역할을 한다.  
이렇게 싱글톤 객체를 생성하고 관리하는 기능을 **싱글톤 레지스트리**라 한다.

스프링 컨테이너에 등록된 스프링 빈은 자동으로 싱글톤으로 동작한다.

## 싱글톤 방식의 주의점

싱글톤 방식은 여러 클라이언트가 하나의 같은 객체 인스턴스를 공유하기 때문에
싱글톤 객체는 상태를 유지(stateful)하게 설계하면 안된다.  
**무상태(stateless)** 로 설계해야 한다!

- 특정 클라이언트에 의존적인 필드가 있으면 안된다.
- 특정 클라이언트가 값을 변경할 수 있는 필드가 있으면 안된다!
- 가급적 읽기만 가능해야 한다.
- 필드 대신에 자바에서 공유되지 않는, 지역변수, 파라미터, ThreadLocal 등을 사용해야 한다.

**스프링 빈은 항상 무상태(stateless)로 설계하자.**

## @Configuration

DI 컨테이너의 설정을 구성한다.

스프링 컨테이너가 @Configuration이 붙은 클래스를 파라미터로 받아서, 설정(구성)정보로 사용한다.  
@Configuration 을 붙이면 바이트코드를 조작하는 CGLIB 기술을 사용해서 싱글톤을 보장한다.

❗️ 스프링 컨테이너는 싱글톤 레지스트리이므로, 스프링 빈이 싱글턴이 되도록 보장해준다.

→ 스프링 빈의 클래스 정보를 출력해보면, 순수한 클래스의 결과와 다르게, 클래스명에 xxxCGLIB이 붙게되는데, 이것은 내가만든 클래스가 아니라, 스프링이 CGLIB이라는 바이트코드 조작 라이브러리를 사용해서 내가 만든 클래스(그림 예: AppConfig)를 상속받은 임의의 다른 클래스를 만들고, 그 다른 클래스를 스프링 빈으로 등록한 것이다.

(AppConfig@CGLIB은 AppConfig의 자식타입이므로 AppConfig타입으로 조회가 가능하다)
그 임의의 다른 클래스가 싱글톤이 보장되도록 해준다.

<img src="https://velog.velcdn.com/images/hyojhand/post/285f61bb-e6aa-4226-ac35-c4a60c8637e1/image.png" width="80%"></img>

<img src="https://velog.velcdn.com/images/hyojhand/post/09a87262-d466-4c4e-b9a4-599ed5107494/image.png" width="80%"></img>

스프링 빈에 등록하면서 메서드를 한번씩 호출하게되고, 그렇게 되면서 memberRepository()가 3번 호출되는 것 처럼 보이지만, @Bean이 붙은 메서드마다 이미 스프링 빈이 존재하면 존재하는 빈을 반환하고,  
스프링 빈이 없으면 생성해서 스프링 빈으로 등록하고 반환하는 코드가 동적으로 만들어진다.
덕분에 싱글톤이 보장되는 것이다.

### ❗️ @Configuration 을 적용하지 않고, @Bean 만 적용하면 어떻게 될까?

→ CGLIB 기술 없이 순수한 AppConfig로 스프링 빈에 등록된 것을 확인할 수 있다.  
→ 스프링 빈으로 등록은 되지만, 싱글톤을 보장하지 않는다 (memberRepository가 3번 호출됨)

요약 : 스프링 설정 정보는 항상 @Configuration 을 사용하자 !

<img src="https://velog.velcdn.com/images/hyojhand/post/3ce1ca43-a616-4dc2-8bbe-d09b25259830/image.png" width="80%"></img>

1. 스프링 컨테이너에 싱글톤 스코프 빈을 요청한다.
2. 스프링 컨테이너가 관리하는 스프링 빈을 반환한다.
3. 같은 요청이 와도 같은 객체의 인스턴스의 스프링빈을 반환
', 'Spring', 'Singleton 패턴', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (124, '# 프로토타입 스코프

## @Scope(”prototype”)

<img src="https://velog.velcdn.com/images/hyojhand/post/5885dca1-992a-471b-8f77-bd3a6ac16039/image.png" width="80%"></img>

1. 프로토타입 스코프의 빈을 컨테이너에 요청
2. 요청받은 시점부터 프로토타입 빈을 생성하고, 필요한 의존관계를 주입

<img src="https://velog.velcdn.com/images/hyojhand/post/080b880c-b91b-4c10-95aa-9ee7a71d63f6/image.png" width="80%"></img>

1. 생성한 프로토타입 빈을 클라이언트에 반환하고 더이상 관리하지 않는다.
2. 이후 스프링 컨테이너에 같은 요청이 오면 항상 새로운 프로토타입 빈을 생성해서 반환

→ **스프링 컨테이너는 프로토타입 빈을 생성하고, 의존관계 주입, 초기화까지만 처리한다.**

이후 스프링 컨테이너는 생성된 프로토타입 빈을 관리하지 않는다.  
프로토타입 빈을 관리할 책임은 프로토타입 빈을 받은 클라이언트에 있다.  
그래서 **@PreDestroy 같은 종료 메서드가 호출되지 않는다.**

## 프로토타입 스코프 - 싱글톤 빈과 함께 사용시 문제점

먼저 프로토타입 빈을 직접 요청할때

<img src="https://velog.velcdn.com/images/hyojhand/post/75824a42-5c91-440c-9c79-1cf59ec2941d/image.png" width="80%"></img>

스프링 컨테이너에 프로토타입 빈을 요청하면, 스프링 컨테이너는 프로토타입 빈을 새로 생성해서 반환한다.

빈의 count 필드값은 0이고, 클라이언트는 조회한 프로토타입 빈에 addCount()를 호출하면서 count+1을 한다면, 이때 클라이언트 A와 B가 각각 호출하여 2번 호출했지만 ,반환받은 프로토타입 빈의 count값은 둘다 1이다.

### 싱글톤 빈에서 프로토타입 빈을 사용한다면??

<img src="https://velog.velcdn.com/images/hyojhand/post/7445a307-1771-4d0a-8d03-abb92641a491/image.png" width="80%"></img>

이 clientBean은 싱글톤이므로, 스프링 컨테이너 생성 시점에 함께 생성되고, 의존관계주입도 발생한다.  
이 의존관계 주입 시점에 스프링 컨테이너에 프로토타입 빈을 요청하게 된다.

스프링 컨테이너는 프로토타입 빈을 생성해서 clientBean에 반환하고, clientBean은 프로토타입 빈을 내부필드에 보관한다(정확히는 참조값) 이때, 프로토타입빈의 count 필드값은 0 이다.

<br/>

이제, 클라이언트 A가 스프링 컨테이너에 clientBean을 요청한다.

<img src="https://velog.velcdn.com/images/hyojhand/post/45a685b3-e305-4dd3-96fe-4a3f02f07a55/image.png" width="80%"></img>

싱글톤이므로 항상 같은 clientBean이 반환되고, 클라이언트 A는 clientBean.logic()을 호출한다고 생각해보자

clientBean은 프로토타입빈의 addCount()를 호출해서 프로토타입 빈의 count를 증가시키고 count는 1이다.

<br/>

다음으로, 다른 클라이언트 B가 스프링 컨테이너에 clientBean을 요청해서 받는다.

<img src="https://velog.velcdn.com/images/hyojhand/post/25924117-76cd-449e-a550-ef75fd801fb5/image.png" width="80%"></img>

싱글톤이므로 항상 같은 clientBean을 반환하게 된다.

여기서!! clientBean이 내부에 가지고 있는 프로토타입 빈은 이미 과거에 주입이 끝난 빈이다. (A가 clientBean을 요청하고 logic을 호출하면서 프로토타입 빈이 요청 및 주입됨)

**!! 주입 시점에 스프링컨테이너에서 프로토타입 빈이 생성된것이지, 사용할때마다 새로 생성되는 것이 아니다!!**

클라이언트 B는 clientBean.logic()을 호출한다.

clientBean은 프로토타입 빈의 addCount()를 호출하면 이미 주입이 끝난 프로토타입이기때문에 새로 생성하지않고 로직을 수행하므로, count 필드값이 2가 된다.

근데 이런 결과를 위해서 프로토타입 빈을 썻나???  
싱글톤 빈이 프로토타입 빈을 사용하면서 프로토타입의 기능을 사용하지 못하게된다.

<br/>

## 프로토타입 스코프 - 싱글톤 빈과 함께 사용시 Provider로 문제 해결

싱글톤 빈과 프로토타입 빈을 함께 사용할 때, 어떻게 하면 사용할 때 마다 항상 새로운 프로토타입 빈을 생성할 수 있을까?

→ 싱글톤 빈이 프로토타입을 사용할 때마다 스프링 컨테이너에 새로 요청하는 것이다.

<img src="https://velog.velcdn.com/images/hyojhand/post/20be372e-76f0-415b-89cc-2168adf77c04/image.png" width="80%"></img>

- 의존관계를 외부에서 주입(DI) 받는게 아니라 **직접 필요한 의존관계를 찾는 것을 Dependency Lookup (DL) 의존관계 조회(탐색)** 이라한다.

그런데 이렇게 스프링의 애플리케이션 컨텍스트 전체를 주입받게 되면, 스프링 컨테이너에 종속적인 코드가 되고, 단위 테스트도 어려워진다.

지금 필요한 기능은 지정한 프로토타입 빈을 컨테이너에서 대신 찾아주는 딱! **DL** 정도의 기능만 제공하는
무언가가 있으면 된다.

→ 스프링에서 제공하는 ObjectProvider 사용

### **ObjectFactory, ObjectProvider**

지정한 빈을 컨테이너에서 대신 찾아주는 DL 서비스를 제공하는 것이 바로 ObjectProvider 이다.

과거에는 ObjectFactory 가 있었는데, 여기에 편의 기능을 추가해서 ObjectProvider 가 만들어졌다.

<img src="https://velog.velcdn.com/images/hyojhand/post/c5f13d04-dd4f-449f-94c4-3cf234997098/image.png" width="80%"></img>

ObjectProvider 의 **getObject()** 를 호출하면 내부에서는 스프링 컨테이너를 통해 해당 빈을 찾아서
항상 새로운 프로토타입 빈을 생성한다. (**DL**)

특징
ObjectFactory: 기능이 단순, 별도의 라이브러리 필요 없음, 스프링에 의존  
ObjectProvider: ObjectFactory 상속, 옵션, 스트림 처리등 편의 기능이 많고, 별도의 라이브러리 필요
없음, 스프링에 의존

→ 또 다른 방법 : 자바 표준의 Provider 사용

### JSR-330 Provider

javax.inject.Provider 라는 JSR-330 자바 표준을 사용하는 방법이다.

이 방법을 사용하려면 javax.inject:javax.inject:1 라이브러리를 gradle에 추가해야 한다.  
자바 표준이므로 스프링이 아닌 다른 컨테이너에서도 사용할 수 있다.

<img src="https://velog.velcdn.com/images/hyojhand/post/4e641c73-8bfa-4186-9cc4-e662e8921b86/image.png" width="80%"></img>

provider.get() 을 통해서 항상 새로운 프로토타입 빈이 생성된다.  
provider 의 get() 을 호출하면 내부에서는 스프링 컨테이너를 통해 해당 빈을 찾아서 반환한다. (**DL**)

→ 다른 컨테이너에서 사용할 일이 없다면 (거의 없을것) 그냥 스프링이 제공하는 기능을 쓰는게 낫다 (ObjectProvider를 쓰자)
', 'Spring', '프로토타입 스코프', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (125, '# 스프링 MVC 구조

<img src="https://user-images.githubusercontent.com/87989933/201577355-c3c27cfe-61bd-4905-834e-559cca5dd0b4.png" width=70%>

**DispacherServlet 서블릿**

DispacherServlet 도 부모 클래스에서 **HttpServlet 을 상속** 받아서 사용하고, 서블릿으로 동작한다.
DispatcherServlet → FrameworkServlet → HttpServletBean → HttpServlet

스프링 부트는 **DispacherServlet** 을 서블릿으로 자동으로 등록하면서 **모든 경로**( urlPatterns="/" )에
대해서 매핑한다. \\* 더 자세한 경로가 우선순위가 높다. 그래서 기존에 등록한 서블릿도 함께 동작한다.

**요청 흐름**

서블릿이 호출되면 HttpServlet 이 제공하는 serivce() 가 호출된다.
스프링 MVC는 DispatcherServlet 의 부모인 FrameworkServlet 에서 service() 를 오버라이드
해두었다.

FrameworkServlet.service() 를 시작으로 여러 메서드가 호출되면서 DispacherServlet.**doDispatch**() 가 호출된다.

**동작 순서**

1. **핸들러 조회** : 핸들러 매핑을 통해 요청 URL에 매핑된 핸들러(컨트롤러)를 조회한다.
2. **핸들러 어댑터 조회** : 핸들러를 실행할 수 있는 핸들러 어댑터를 조회한다.
3. **핸들러 어댑터 실행** : 핸들러 어댑터를 실행한다.
4. **핸들러 실행** : 핸들러 어댑터가 실제 핸들러를 실행한다.
5. **ModelAndView 반환** : 핸들러 어댑터는 핸들러가 반환하는 정보를 ModelAndView로 **변환**해서 반환한다.
6. **viewResolver 호출** : 뷰 리졸버를 찾고 실행한다.

   JSP의 경우 : InternalResourceViewResolver 가 자동 등록되고, 사용된다.

7. **View반환** : 뷰 리졸버는 뷰의 논리이름을 물리이름으로 바꾸고, 렌더링 역할을 담당하는 뷰 객체를 반환한다.
   JSP의 경우 InternalResourceView(JstlView) 를 반환하는데, 내부에 forward() 로직이 있다.
8. **뷰렌더링** : 뷰를 통해서 뷰를 렌더링한다.

스프링 MVC의 큰 강점은 DispatcherServlet 코드의 변경 없이, 원하는 기능을 변경하거나 확장할 수 있다는 점이다. 지금까지 설명한 대부분을 확장 가능할 수 있게 인터페이스로 제공한다.

**주요 인터페이스 목록**

- 핸들러 매핑: org.springframework.web.servlet.HandlerMapping
- 핸들러 어댑터: org.springframework.web.servlet.HandlerAdapter
- 뷰 리졸버: org.springframework.web.servlet.ViewResolver
- 뷰: org.springframework.web.servlet.View

### HandlerMapping(핸들러 매핑)

0 : RequestMappingHandlerMapping : 애노테이션 기반의 컨트롤러인 **@RequestMapping**에서 사용
1 : BeanNameUrlHandlerMapping : 스프링 빈의 이름으로 핸들러를 찾는다.

핸들러 매핑에서 이 컨트롤러를 찾을 수 있어야 한다.
예) **스프링 빈의 이름으로 핸들러를 찾을 수 있는 핸들러 매핑**이 필요하다.

### HandlerAdapter(핸들러 어댑터)

0 : RequestMappingHandlerAdapter : 애노테이션 기반의 컨트롤러인 **@RequestMapping**에서 사용
1 : HttpRequestHandlerAdapter : HttpRequestHandler 처리
2 : SimpleControllerHandlerAdapter : Controller 인터페이스(애노테이션X, 과거에 사용) 처리

핸들러 매핑을 통해서 찾은 핸들러를 실행할 수 있는 핸들러 어댑터가 필요하다.
예) Controller 인터페이스를 실행할 수 있는 핸들러 어댑터를 찾고 실행해야 한다.

### 뷰 리졸버

**뷰 리졸버 - InternalResourceViewResolver**

스프링 부트는 InternalResourceViewResolver 라는 뷰 리졸버를 자동으로 등록하는데, 이때 **application.properties 에 등록한 spring.mvc.view.prefix , spring.mvc.view.suffix 설정
정보를 사용해서 등록한다.**
ex) spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp

**스프링 부트가 자동 등록하는 뷰 리졸버 (실제로 더 많음)**

1 : BeanNameViewResolver : 빈 이름으로 뷰를 찾아서 반환한다. (예: 엑셀 파일 생성 기능에 사용)
2 : InternalResourceViewResolver : JSP를 처리할 수 있는 뷰를 반환한다.

InternalResourceView 는 JSP처럼 포워드 forward() 를 호출해서 처리할 수 있는 경우에 사용한다.
view.render() 가 호출되고 InternalResourceView 는 forward() 를 사용해서 JSP를 실행한다.
', 'Spring', 'Spring MVC', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (126, '# 스프링 타입 컨버터

HTTP 요청 파라미터는 모두 문자로 처리된다. 따라서 요청 파라미터를 자바에서 다른 타입으로 변환해서 사용하고 싶으면 다음과 같이 숫자 타입으로 변환하는 과정을 거쳐야 한다.

HTTP 쿼리 스트링으로 전달하는 data=10 부분에서 10은 숫자 10이 아니라 문자 10이다.
**스프링이 제공하는 @RequestParam** 을 사용하면 이 문자 10을 Integer 타입의 숫자 10으로 편리하게
받을 수 있다.**이것은 스프링이 중간에서 타입을 변환해주었기 때문이다.**

@ModelAttribute , @PathVariable 에서도 확인할 수 있다.

스프링은 확장 가능한 **컨버터 인터페이스를 제공**한다.
개발자는 스프링에 추가적인 타입 변환이 필요하면 이 컨버터 인터페이스를 구현해서 등록하면 된다.
이 컨버터 인터페이스는 모든 타입에 적용할 수 있다

## 타입 컨버터 - Converter

타입 컨버터를 사용하려면 **org.springframework.core.convert.converter.Converter** 인터페이스를 구현하면 된다.

스프링은 용도에 따라 다양한 방식의 타입 컨버터를 제공한다.

Converter → 기본 타입 컨버터
ConverterFactory → 전체 클래스 계층 구조가 필요할 때
GenericConverter → 정교한 구현, 대상 필드의 애노테이션 정보 사용 가능
ConditionalGenericConverter → 특정 조건이 참인 경우에만 실행

## 컨버전 서비스 - ConversionService

스프링은 개별 컨버터를 모아두고 그것들을 묶어서 편리하게 사용할 수 있는 기능을 제공하는데,
이것이 바로 **컨버전 서비스( ConversionService )**이다.

컨버전 서비스 인터페이스는 단순히 컨버팅이 가능한가 확인하는 기능과, 컨버팅 기능을 제공한다

<img src="https://user-images.githubusercontent.com/87989933/201580807-3c737119-178a-4c75-9c4c-54fc59a127f3.png" width=80%>

DefaultConversionService 는 ConversionService 인터페이스를 구현했는데, 추가로 컨버터를
등록하는 기능도 제공한다.

**등록과 사용 분리**

컨버터를 등록할 때는 StringToIntegerConverter 같은 타입 컨버터를 명확하게 알아야 한다. 반면에
컨버터를 사용하는 입장에서는 타입 컨버터를 전혀 몰라도 된다. 타입 컨버터들은 모두 컨버전 서비스
내부에 숨어서 제공된다. 따라서 타입을 변환을 원하는 사용자는 컨버전 서비스 인터페이스에만 의존하면
된다. 물론 컨버전 서비스를 등록하는 부분과 사용하는 부분을 분리하고 의존관계 주입을 사용해야 한다

→ 스프링은 내부에서 ConversionService 를 사용해서 타입을 변환한다.

- **인터페이스 분리 원칙 - ISP(Interface Segregation Principal)**
  인터페이스 분리 원칙은 클라이언트가 자신이 이용하지 않는 메서드에 의존하지 않아야 한다

DefaultConversionService 는 다음 두 인터페이스를 구현했다.
ConversionService : 컨버터 사용에 초점
ConverterRegistry : 컨버터 등록에 초점

이렇게 인터페이스를 분리하면 컨버터를 사용하는 클라이언트와 컨버터를 등록하고 관리하는 클라이언트의 관심사를 명확하게 분리할 수 있다. 특히 컨버터를 사용하는 클라이언트는 ConversionService 만 의존하면 되므로, 컨버터를 어떻게 등록하고 관리하는지는 전혀 몰라도 된다. 결과적으로 컨버터를 사용하는 클라이언트는 꼭 필요한 메서드만 알게된다. 이렇게 인터페이스를 분리하는 것을 ISP 라 한다.

## 스프링에 Converter 적용하기

<img src="https://user-images.githubusercontent.com/87989933/201580881-1e44ba04-0b88-467e-8809-dda88ad946ee.png" width=80%>

스프링은 내부에서 ConversionService 를 제공한다. 우리는 **WebMvcConfigurer 가 제공하는 addFormatters()** 를 사용해서 추가하고 싶은 컨버터를 등록하면 된다. 이렇게 하면 스프링은 내부에서 사용하는 ConversionService 에 컨버터를 추가해준다.

- 스프링이 내부에서 수 많은 기본 컨버터들을 제공하는데, 컨버터를 추가하면 추가한 컨버터가 기본 컨버터 보다 높은 우선순위를 가진다.

스프링 컨트롤러 호출전에 컨버터가 컨버팅을 해놓은 상태로 컨트롤러가 호출될때 컨버팅된 값을 넣어준다.

**처리 과정**

@RequestParam 은 @RequestParam 을 처리하는 ArgumentResolver 인
RequestParamMethodArgumentResolver 에서 ConversionService 를 사용해서 타입을 변환한다. 부모
클래스와 다양한 외부 클래스를 호출하는 등 복잡한 내부 과정을 거치기 때문에 대략 이렇게 처리되는
것으로 이해해도 충분하다. 만약 더 깊이있게 확인하고 싶으면 IpPortConverter 에 디버그 브레이크
포인트를 걸어서 확인해보자.

## 뷰 템플릿에 컨버터 적용하기

타임리프는 ${{...}} 를 사용하면 자동으로 컨버전 서비스를 사용해서 변환된 결과를 출력해준다. 물론
스프링과 통합 되어서 스프링이 제공하는 컨버전 서비스를 사용하므로, 우리가 등록한 컨버터들을 사용할
수 있다.

**변수 표현식 :** ${...}
**컨버전 서비스 적용 :** ${{...}}

타임리프의 **th:field** 는 앞서 설명했듯이 id , name 를 출력하는 등 다양한 기능이 있는데,
여기에 **컨버전 서비스도 함께 적용된다.**

**폼에 적용하기**

뷰 템플릿에 보여줄때 → 객체를 문자로 변환
뷰 템플릿에서 넘어올때 → 문자를 객체로 변환

### **포맷터 - Formatter**

Converter 는 입력과 출력 타입에 제한이 없는, 범용 타입 변환 기능을 제공한다.

이번에는 일반적인 웹 애플리케이션 환경을 생각해보자. 불린 타입을 숫자로 바꾸는 것 같은 범용 기능
보다는 개발자 입장에서는 문자를 다른 타입으로 변환하거나, 다른 타입을 문자로 변환하는 상황이 대부분이다.

**웹 애플리케이션에서 객체를 문자로, 문자를 객체로 변환하는 예**

화면에 숫자를 출력해야 하는데, Integer String 출력 시점에 숫자 1000 문자 "1,000" 이렇게
1000 단위에 쉼표를 넣어서 출력하거나, 또는 "1,000" 라는 문자를 1000 이라는 숫자로 변경해야 한다.
날짜 객체를 문자인 "2021-01-01 10:50:11" 와 같이 출력하거나 또는 그 반대의 상황

**Locale :** 여기에 추가로 날짜 숫자의 표현 방법은 Locale 현지화 정보가 사용될 수 있다.

→ 이렇게 객체를 특정한 포멧에 맞추어 문자로 출력하거나 또는 그 반대의 역할을 하는 것에 특화된 기능이
바로 **포맷터( Formatter )**이다. 포맷터는 컨버터의 특별한 버전으로 이해하면 된다.

## **Converter vs Formatter**

Converter 는 범용(객체 객체)
Formatter 는 문자에 특화(객체 문자, 문자 객체) + 현지화(Locale) , Converter 의 특별한 버전

포맷터( Formatter )는 객체를 문자로 변경하고, 문자를 객체로 변경하는 두 가지 기능을 모두 수행한다.

String print(T object, Locale locale) : 객체를 문자로 변경한다.
T parse(String text, Locale locale) : 문자를 객체로 변경한다.

<img src="https://user-images.githubusercontent.com/87989933/201580961-0d0855bc-a0c2-49a6-906f-595b8eafb208.png" width=80%>

"1,000" 처럼 숫자 중간의 쉼표를 적용하려면 자바가 기본으로 제공하는 NumberFormat 객체를 사용하면
된다. 이 객체는 Locale 정보를 활용해서 나라별로 다른 숫자 포맷을 만들어준다.

**parse()** 를 사용해서 문자를 숫자로 변환한다. 참고로 Number 타입은 Integer , Long 과 같은 숫자
타입의 부모 클래스이다.
**print()** 를 사용해서 객체를 문자로 변환한다.

- 참고 - 스프링은 용도에 따라 다양한 방식의 포맷터를 제공한다.

* Formatter : 포맷터
* AnnotationFormatterFactory : 필드의 타입이나 애노테이션 정보를 활용할 수 있는 포맷터

### **포맷터를 지원하는 컨버전 서비스**

컨버전 서비스에는 컨버터만 등록할 수 있고, 포맷터를 등록할 수 는 없다. 그런데 생각해보면 포맷터는 객체 문자, 문자 객체로 변환하는 특별한 컨버터일 뿐이다.
포맷터를 지원하는 컨버전 서비스를 사용하면 컨버전 서비스에 포맷터를 추가할 수 있다. 내부에서 어댑터 패턴을 사용해서 Formatter 가 Converter 처럼 동작하도록 지원한다.

**FormattingConversionService** 는 포맷터를 지원하는 컨버전 서비스이다. **DefaultFormattingConversionService** 는 FormattingConversionService 에 기본적인 통화, 숫자 관련 몇가지 기본 포맷터를 추가해서 제공한다.

<img src="https://user-images.githubusercontent.com/87989933/201581027-ffe7e014-f7cb-4ca5-994c-95a563e5ea46.png" width=80%>

**DefaultFormattingConversionService 상속 관계**
FormattingConversionService 는 ConversionService 관련 기능을 상속받기 때문에
결과적으로 컨버터도 포맷터도 모두 등록할 수 있다. 그리고 사용할 때는 ConversionService 가 제공하는 convert 를 사용하면 된다.

- 추가로 스프링 부트는 DefaultFormattingConversionService 를 상속 받은 **WebConversionService**
  를 내부에서 사용한다.

- 컨버터와 포멧터의 기능이 동일할때, 우선순위는 컨버터가 높아서 포맷터가 적용되지 않고, 컨버터가 적용된다.

### 스프링이 제공하는 기본 포맷터

포맷터는 기본 형식이 지정되어 있기 때문에, 객체의 각 필드마다 다른 형식으로 포맷을 지정하기는 어렵다.
스프링은 이런 문제를 해결하기 위해 애노테이션 기반으로 원하는 형식을 지정해서 사용할 수 있는 매우 유용한 포맷터 두 가지를 기본으로 제공한다.

**@NumberFormat** : 숫자 관련 형식 지정 포맷터 사용, NumberFormatAnnotationFormatterFactory
**@DateTimeFormat** : 날짜 관련 형식 지정 포맷터 사용, Jsr310DateTimeFormatAnnotationFormatterFactory

<img src="https://user-images.githubusercontent.com/87989933/201581087-f3ffdc39-0143-4688-a884-022afad35369.png" width=80%>

### 주의!

메시지 컨버터( HttpMessageConverter )에는 컨버전 서비스가 적용되지 않는다.
특히 객체를 JSON으로 변환할 때 메시지 컨버터를 사용하면서 이 부분을 많이 오해하는데,
HttpMessageConverter 의 역할은 HTTP 메시지 바디의 내용을 객체로 변환하거나 객체를 HTTP 메시지
바디에 입력하는 것이다. 예를 들어서 JSON을 객체로 변환하는 메시지 컨버터는 내부에서 Jackson 같은
라이브러리를 사용한다. 객체를 JSON으로 변환한다면 그 결과는 이 라이브러리에 달린 것이다. 따라서
JSON 결과로 만들어지는 숫자나 날짜 포맷을 변경하고 싶으면 해당 라이브러리가 제공하는 설정을 통해서
포맷을 지정해야 한다. 결과적으로 이것은 컨버전 서비스와 전혀 관계가 없다.

컨버전 서비스는 @RequestParam , @ModelAttribute , @PathVariable , 뷰 템플릿 등에서 사용할 수 있다.
', 'Spring', '타입 컨버터', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (131, '# JPA 란??

JPA(Java Persistence API)는 자바 진영에서  
**ORM 기술 표준**으로 사용되는 인터페이스의 모음이다.

즉, 실제로 구현된것이 아니라, 클래스와 매핑을 해주기 위해 사용되는 프레임워크이다.

JPA 2.1 표준명세를 구현한 3가지 구현체로는  
**Hibernate, EclipseLink, DataNucleus** 가 있다.

# ORM 이란??

Object-relational mapping(객체 관계 매핑)의 약자로
애플리케이션 클래스와 RDB(Relational DataBase)의 테이블을 매핑하는 것이다.

객체는 객체대로 설계하고, 관계형 데이터베이스는 관계형 데이터베이스대로 설계하여 ORM 프레임워크가 중간에서 매핑해준다.

ORM은 객체와 RDB 두 기둥 위에 있는 기술이다.

## JPA를 왜 사용해야 하는가?

- SQL 중심적인 개발에서 객체 중심으로 개발
- 생산성
- 유지보수
- 패러다임의 불일치 해결
- 성능
- 데이터 접근 추상화와 벤더 독립성

### SQL 중심적인 개발에서 객체 중심으로 개발

객체를 관계형 데이터베이스에 저장할때, SQL Mapper 역할이 필요한데, 이를 개발자가 직접 SQL을 작성하여 Mapper 역할을 해야한다.  
-> But, JPA가 제공하는 API를 사용하여 객체를 DB에 저장&관리할때 개발자가 직접 SQL을 작성하지 않아도 된다.  
JPA가 개발자 대신 SQL을 생성하여 DB에 전달하고, 객체를 자동으로 Mapping해준다.

### 생산성, 유지보수

SQL 쿼리를 JPA가 작성해 줌으로써 CRUD작업이 간결화되고, CREATE TABLE 같은 DDL문도 자동으로 해준다.  
또한, 객체의 필드가 변경되면 모든 SQL문을 수정하지 않고 객체에 필드만 추가해주면 JPA가 알아서 SQL을 수정해준다.

### 패러다임의 불일치 해결

데이터베이스는 데이터 중심으로 구조화되어있다. 객체의 상속, 다형성 같은 개념이없다.  
그렇다보니 객체와 데이터베이스가 지향하는 점이 다르다. 이것을 객체와 데이터베이스의 패러다임 불일치라고 한다.  
자바 언어는 객체지향으로 이뤄져있고 데이터베이스는 데이터 중심으로 구조화되어있기때문에 패러다임 불일치 문제를 개발자가 해결해야한다.
**하지만 JPA는 이러한 상속, 연관관계, 객체그래프 탐색, 비교 등의 패러다임 불일치 문제를 해결해준다.**

### 데이터 접근 추상화와 벤더 독립성

JPA는 interface들의 집합으로써 특정 DB에 종속적이지 않는다.

### 마치 자바 컬렉션에 객체를 저장하듯 사용할 수 있게된다!!

<br/>

## JPA의 성능 최적화 기능

**1. 1차 캐시와 동일성(identity) 보장**

- 같은 트랜잭션 안에서는 같은 엔티티를 반환 - 약간의 조회 성능 향상

**2. 트랜잭션을 지원하는 쓰기 지연(transactional write-behind)**

- 트랜잭션을 커밋할 때까지 INSERT SQL을 모아놓고, JDBC BATCH SQL 기능을 사용해서 한번에 SQL 전송

**3. 지연 로딩(Lazy Loading)**

- 지연로딩: 객체가 실제 사용될때 로딩
- 즉시 로딩: JOIN SQL로 한번에 연관된 객체까지 미리 조회

<br/>

## 데이터베이스 방언이란??

**방언**이란 SQL 표준을 지키지 않는 특정 데이터베이스만의 고유한 기능을 말한다.

- 가변 문자: MySQL은 VARCHAR, Oracle은 VARCHAR2
- 문자열을 자르는 함수: SQL 표준은 SUBSTRING(), Oracle은 SUBSTR()
- 페이징: MySQL은 LIMIT , Oracle은 ROWNUM

JPA는 특정 데이터베이스에 종속 되지않기때문에, **hibernate.dialect** 속성으로 지정해준다.

H2 : org.hibernate.dialect.H2Dialect
Oracle 10g : org.hibernate.dialect.Oracle10gDialect
MySQL : org.hibernate.dialect.MySQL5InnoDBDialect

## **JPA 구동 방식**

persistence.xml 의 설정정보를 읽어서 EntityManagerFactory 클래스를 생성한다.
→ 필요할때마다 EntityManager를 생성한다.

**주의 !!**

- **엔티티 매니저 팩토리는 하나만 생성해서 애플리케이션 전체에서 공유**
- **엔티티 매니저는 쓰레드간에 공유X (사용하고 버려야 한다)**
- **JPA의 모든 데이터 변경은 트랜잭션 안에서 실행**

<br/>

## 참고

[자바 ORM 표준 JPA 프로그래밍](https://www.inflearn.com/course/ORM-JPA-Basic)
', 'JPA', 'JPA란??', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (132, '# 영속성 관리

**EntityManagerFactory**에서 고객이 요청할때마다 **EntityManager**를 생성하고, 이 엔티티매니저는 내부적으로 DB의 커넥션을 사용하여 DB를 사용한다.

![](https://velog.velcdn.com/images/hyojhand/post/aa6521c2-f53b-49e8-be65-925822f38f72/image.png)

# 영속성 컨텍스트

- **엔티티를 영구 저장하는 환경** 이라는 의미로, 논리적인 개념으로 눈에 보이지 않는다.
- 엔티티 매니저를 통해서 영속성 컨텍스트에 접근하며, 엔티티를 저장한다.
- 엔티티 매니저를 생성하면 내부에 **PersistenceContext가 1:1로 생성된다.**

## 엔티티의 생명주기

**비영속** (new / transient) - 영속성 컨텍스트와 전혀 관계가 없는 **새로운** 상태 **(객체를 생성한 상태)**

**영속** (managed) - 영속성 컨텍스트에 **관리**되는 상태 **(객체를 저장한 상태, persist)**

**준영속** (detached) - 영속성 컨텍스트에 저장되었다가 **분리**된 상태 **(엔티티를 영속성 컨텍스트에서 분리)**

**삭제** (removed) - **삭제**된 상태 **(객체를 삭제한 상태)**

<img width="500" alt="image" src="https://user-images.githubusercontent.com/87989933/173196239-90e7b124-5c8c-42bf-92f7-096ce5356487.png">

<br/>

## 영속성 컨텍스트의 이점

- 1차 캐시
- 동일성(identity) 보장
- 트랜잭션을 지원하는 쓰기 지연 (transactional write-behind)
- 변경 감지(Dirty Checking)
- 지연 로딩(Lazy Loading)

### 1차 캐시

key는 Id로, value는 객체가 저장된다.

→ 조회할때 영속성 컨텍스트에서 1차캐시를 먼저 확인한다. 캐시에 값이 있으면 DB까지 가지않고 캐시에서 가져온다. 1차캐시에 없으면 DB에서 조회 후 1차 캐시에 저장한다.

<img width="712" alt="image" src="https://user-images.githubusercontent.com/87989933/173196340-72eec227-d158-48b8-b181-1d78320eea82.png">

But, 1차캐시는 동일한 트랜잭션 내에서 유효하기 때문에, 트랜잭션이 끝나면 1차캐시도 함께 없어져서 큰 이점은 없다. 또한, 엔티티매니저와 영속성 컨텍스트는 1:1이기 때문에, 동일한 엔티티 매니저 내에서 유효하다!!

### 영속 엔티티의 동일성 보장

1차 캐시로 반복 가능한 읽기(REPEATABLE READ) 등급의 트랜잭션 격리 수준을 데이터베이스가 아닌 **애플리케이션 차원에서 제공 ( == 비교시 true)**

### 트랜잭션을 지원하는 쓰기 지연

**커밋하는 순간 데이터베이스에 INSERT SQL을 보낸다.**

영속 컨텍스트 내부의 **쓰기지연 SQL 저장소**에 SQL을 넣어놓는다.

<img width="494" alt="image" src="https://user-images.githubusercontent.com/87989933/173196424-46ff0de3-9ee0-4db5-8bbd-7f20c9df2759.png">

<br/>

# 플러시

영속성 컨텍스트의 변경내용을 데이터베이스에 반영하는 것이다.  
**(영속성 컨텍스트를 비우는 것이 아니라, 영속성 컨텍스트의 변경내용을 DB에 동기화하는것!!)**

**플러시 발생시**

- 변경 감지
- 수정된 엔티티를 쓰기지연 SQL 저장소에 등록
- 쓰기지연 SQL 저장소의 쿼리를 DB에 전송한다.

**영속성 컨텍스트를 플러시 하는 방법**

- **em.flush()** (직접호출)
- **트랜잭션 커밋** ( 플러시 자동호출)
- **JPQL 쿼리실행** (플러시 자동호출)

**플러시 모드 옵션**

**FlushModeType.AUTO** - 커밋이나 쿼리를 실행할 때 플러시 (기본값)

**FlushModeType.COMMIT** - 커밋할 때만 플러시

<br/>

# 준영속 상태

persist해서 넣을때 or find했을때 1차캐시에 없으면 1차캐시에 올리면서 → 영속상태가 된다.

**영속 상태의 엔티티가 영속성 컨텍스트에서 분리(detached)**
→ 영속성 컨텍스트가 제공하는 기능을 사용 못함

**준영속 상태로 만드는 방법**

- **em.detach(엔티티)** - 특정 엔티티만 준영속 상태로 전환
- **em.clear()** - 영속성 컨텍스트를 완전히 초기화
- **em.close()** - 영속성 컨텍스트를 종료

<br/>

## 참고

[자바 ORM 표준 JPA 프로그래밍](https://www.inflearn.com/course/ORM-JPA-Basic)
', 'JPA', '영속성 컨텍스트', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (133, 'JPA의 변경감지 (DirtyChecking)와 @DynamicUpdate에 대해 알아보자

# JPA의 변경감지 (Dirty Checking)

JPA에는 수정관련된 메서드가 존재하지 않는다.  
JPA를 통해 데이터를 수정하려면, Entity를 조회하여 조회된 Entity의 데이터를 변경하면 DB에 자동으로 반영되는 기능을 Dirty Checking이라고 한다.

> 여기서 Dirty란 **상태의 변화가 생긴 정도**로, Dirty Checking은 상태 변경 검사를 말한다.  
> 이 변화가 있다의 기준은, **최초 조회 상태**이다.

## JPA의 데이터 변경 로직

1. 트랜잭션 시작
2. 영속성 Entity 조회 (없으면 조회하여 영속화)
3. 조회한 영속성 Entity의 데이터 수정
4. 트랜잭션 커밋

```java
    @Transactional
    public void modify(String nickname, String email) {
        Optional<User> findUser = userRepository.findByEmail(email);
        User user = findUser.orElseThrow(UserNotFoundException::new);
        // nickname 변경
        user.updateNickname(nickname);
    }
```

이 과정에서 update쿼리를 요청하는 부분이 없지만,
JPA의 변경감지(Dirty Checking)으로 DB의 데이터가 변경된다.

## Dirty Checking

JPA는 영속성 컨텍스트에 엔티티를 보관할때, 최초의 상태를 저장하고 있는다.  
이를 스냅샷이라고 하고, 트랜잭션이 끝나는 시점에 스냅샷과 달라진 부분을 비교하여 Update 쿼리를 날리게된다.

![image](https://user-images.githubusercontent.com/87989933/197335056-12530693-d980-4ce0-8c88-e3ca0d3129fa.png)

[출처 : 김영한님의 자바 ORM 표준 JPA 프로그래밍]

영속성 컨텍스트에서 관리하는 객체에 정보가 변경되면, 1차 캐시에 저장된 스냅샷과 비교하고, 달라진 부분에 맞게 SQL을 쓰기지연 SQL 저장소에 저장한다. 이후 커밋되는 시점에 flush 한다.

<br/>

## Dirty Checking 테스트

테스트 코드를 작성해서 유저 닉네임을 수정해보자.

```java
@Test
    public void 유저닉네임변경() {
        // given
        User savedUser = userRepository.save(userA);

        // when
        String nickname = "닉네임수정";
        savedUser.updateNickname(nickname);

        // then
        assertThat(savedUser.getNickname()).isEqualTo(nickname);
    }
```

save 메서드를 호출하지 않았지만, 아래와 같이 변경된 닉네임으로 테스트를 통과하며 정상적으로 updaet가 수행된다.

<img width="806" alt="image" src="https://user-images.githubusercontent.com/87989933/197336385-861794ff-b33c-4142-aaa5-684db9d156d5.png">

### Dirty Checking 대상

이때, 이런 상태변경 검사(Dirty Checking)의 대상은 영속성 컨텍스트가 관리하는 엔티티에만 적용된다.

- detach된 엔티티 (준영속)
- DB에 반영되기 전 처음 생성된 엔티티 (비영속)

과 같은 준영속/비영속 상태의 엔티티는 Dirty Checking의 대상에 포함되지 않는다.

<br/>

# @DynamicUpdate

이때, 위에서 업데이트 시 변경한 내용은 nickname 하나인데, update 쿼리에는 User 엔티티의 모든 필드가 update되는 것을 확인할 수 있다.

기본적으로 JPA는 전체 필드를 업데이트 하는 방식으로, Dirty Checking으로 생성되는 update 쿼리는 기본적으로 모든 필드를 업데이트한다.

이렇게 JPA에서 변경된 필드만 update하지 않고,
모든 필드를 변경하는 쿼리를 생성하여 얻을 수 있는 장점으로,

1. 수정 쿼리가 항상 동일하게 만들어지므로, 생성되는 쿼리가 같아 부트 실행시점에 미리 update 쿼리를 만들어서 재사용이 가능하다.
2. 데이터베이스 입장에서 동일한 쿼리를 받으면, 이전에 파싱된 쿼리의 재사용이 가능하다.

이러한 이점으로 JPA는 Update시 모든 필드를 쿼리로 만들어 실행한다.

하지만, 하나의 엔티티에 필드가 많아져 update가 부담스러워지고,
**변경된 필드만 upadte 쿼리로 적용**하고 싶다면 **@DynamicUpdate** 어노테이션을 사용한다.

<img width="638" alt="image" src="https://user-images.githubusercontent.com/87989933/197336765-3d3a38cb-b589-48dd-90a7-252b1b9e41a6.png">

User엔티티에 @DynamicUpdate 어노테이션을 추가하고 동일한 테스트를 실행한결과, 변경된 nickname만 update쿼리로 적용되었다.

## 참고

- https://jojoldu.tistory.com/415
- https://jojoldu.tistory.com/536
- [자바 ORM 표준 JPA 프로그래밍](https://www.inflearn.com/course/ORM-JPA-Basic)
', 'JPA', '변경감지 (Dirty Checking) & @DynamicUpdate', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (134, '# ToOne 관계 조회성능 최적화

## V1 : 엔티티 직접 조회

### Entity 무한 루프

먼저 Member 엔티티는 Board 엔티티를 일대다 관계(OneToMany)로 매핑,
Board엔티티는 Member엔티티를 다대일 관계(ManyToOne)로 매핑하여 양방향 매핑된 상태이다.

<img src="https://user-images.githubusercontent.com/87989933/187492402-7806d98d-ffd1-4753-96b0-aaae38c1668e.png" width=80% />

<img src="https://user-images.githubusercontent.com/87989933/187492414-6313dad3-a984-4123-9d2b-293eed9d227e.png" width=80% />

이때, **엔티티를 직접 조회하면** 모든 결과를 다 가져오면서 양방향관계에 걸려있는 필드때문에 무한루프에 빠진다!!

<img src="https://user-images.githubusercontent.com/87989933/187492429-c6dd5940-45b7-48c8-ac4a-cebc452399a3.png" width=80% />

findAll로 엔티티를 바로 조회하여 반환했고, 그 결과 무한루프에 빠지면서 StackOverFlow가 발생한다

매핑된 엔티티를 계속 조회하면서 들어가는것을 로그로 확인할 수 있음

<img src="https://user-images.githubusercontent.com/87989933/187492453-8922383c-1d05-4f1a-875e-7113667e258a.png" width=80% />

<img src="https://user-images.githubusercontent.com/87989933/187492487-ae7b4747-3b3f-4f7c-8b3f-8a8cc6d746c0.png" width=80% />

## 해결

**@JsonIgnore 로 양방향관계가 결려있는 필드를 끊어준다**
엔티티를 직접 노출할 때는 **양방향 연관관계**가 걸린 곳은 **한 곳을 꼭 @JsonIgnore 처리**해야 한다!

- But, Type definition 에러발생

<img src="https://user-images.githubusercontent.com/87989933/187492508-1cff7359-52ba-4479-8c9d-faadf98300ab.png" width=80% />

지연로딩이기 때문에, 해당 객체와 관련된 값을 사용하기 전까지는 SQL 쿼리를 보내지않고, 프록시 객체를 생성해서 가져와 들고만 있는다. **ByteBuddyInterceptor()**라는 프록시 객체가 들어가 있는데,
jackson 라이브러리는 기본적으로 이 프록시 객체를 json으로 생성하는 방법을 모르기때문에 이러한 에러가 발생

→ Hibernate5Module 을 스프링 빈으로 등록하면 해결

build.gradle 라이브러리 등록

```
// Hibernate5Module 등록
implementation ''com.fasterxml.jackson.datatype:jackson-datatype-hibernate5''
```

<img src="https://user-images.githubusercontent.com/87989933/187492529-2f9e4b6a-8943-4cd7-b7a0-07914125f5da.png" width=80% />

### 결론

- **엔티티를 직접 노출하는것은 안좋다!!!**

API응답으로 엔티티를 노출하면 **필요없는 데이터도 모두 가져오기 때문에 성능상 좋지않고,
추후 엔티티에 수정소요가 있으면 API 스펙이 모두 바뀌기때문에 유지보수가 매우 복잡해진다.**
→ 따라서 Hibernate5Module 를 사용하기 보다는 **DTO로 변환해서 반환**하는 것이 더 좋은 방법이다.

- 지연 로딩(LAZY)을 피하기 위해 즉시 로딩(EARGR)으로 설정하면 안된다!

즉시 로딩 때문에 연관관계가 필요 없는 경우에도 데이터를 항상 조회해서 성능 문제가 발생할 수 있다.
즉시 로딩으로 설정하면 성능 튜닝이 매우 어려워 지고, 쿼리가 얼마나 나가는지 예측하기 어렵다

**항상 지연 로딩을 기본으로 하고, 성능 최적화가 필요한 경우에는 페치 조인(fetch join)을 사용해라!**

<br/>

## V2 : 엔티티를 필요스펙에 맞게 DTO로 변환해서 사용

(Order 엔티티 안에 Member, Delivery 엔티티가 양방향 매핑되어있다.)
엔티티를 DTO로 변환하는 일반적인 방법이다.

<img src="https://user-images.githubusercontent.com/87989933/187493222-c3c97fff-2387-4b46-bc3d-8ea44c6968ad.png" width=80% />

<img src="https://user-images.githubusercontent.com/87989933/187493251-594518c1-252f-472d-a619-45a83faa4ec4.png" width=80% />

하지만! ORDER, MEMBER, DELIVERY 총 3개의 테이블을 조회하는데, LAZY로딩으로인한 DB 쿼리가 많이 출력된다.

ORDER 조회 → SQL 1번 실행 → 결과 주문수가 2개일때,

<img src="https://user-images.githubusercontent.com/87989933/187493273-c6a2928c-0aef-404c-8203-6652657def59.png" width=80% />

ORDER→ MEMBER 조회

<img src="https://user-images.githubusercontent.com/87989933/187493286-03c432f9-b233-4bee-be9c-13a60815f3e5.png" width=80% />

ORDER → DELIVERY 조회

<img src="https://user-images.githubusercontent.com/87989933/187493297-ba3c6700-c1ee-43dd-8e15-84d0dc9d8a6a.png" width=80% />

ORDER → MEMBER 조회 쿼리가 N번만큼 계속 실행된다 (여기서는 N이 2이므로 쿼리가 한번더 실행)

<img src="https://user-images.githubusercontent.com/87989933/187493314-2af2916c-c58c-47f9-8332-7353de558ce9.png" width=80% />

ORDER → DELIVERY 조회 쿼리가 N번만큼 계속 실행된다 (여기서는 N이 2이므로 쿼리가 한번더 실행)

<img src="https://user-images.githubusercontent.com/87989933/187493337-f914470b-2cb5-46ed-a2b8-fb089bd886fd.png" width=80% />

**결과 : 쿼리가 총 1 + N + N번 실행된다. (단순 엔티티조회와 쿼리수 결과는 같다.)**

order 조회 1번 (order 조회 결과 수가 N, 여기서는 주문조회결과가 2건이라 2가 된다)
order -> member 지연 로딩 조회 N 번
order -> delivery 지연 로딩 조회 N 번

order 조회 결과수만큼 member와 delivery를 각각 최대 N번씩 조회하는 쿼리가 나가고 성능이 저하된다.

**\\* 지연로딩은 먼저 영속성 컨텍스트에서 조회하고 없으면, DB에 쿼리로 조회하기때문에
이미 조회된 경우 쿼리를 생략한다. → member가 둘다 같은 member라면 다음 member조회 쿼리는 생략한다**

<br/>

## V3 : 페치조인(fetch join) 적용

**엔티티를 페치 조인(fetch join)을 사용해서 쿼리 1번에 조회**
페치 조인으로 order -> member , order -> delivery 는 이미 조회 된 상태 이므로 지연로딩 X

1번의 쿼리로 order,member,delivery를 join하여 select절에 넣어서 모두 가져온다.
LAZY를 무시하고 프록시가아닌 진짜 객체의 값을 채워서 가져온다.

```java
@Query("select o from Order o join fetch o.member m join fetch o.delivery d")
List<Order> findOrderFetchJoin();
```

### 결과

<img src="https://user-images.githubusercontent.com/87989933/187493582-0e9e31ee-fc2c-4c17-9d34-101f59492ddc.png" width=80% />

장점 : 다른 API에서도 사용할 수 있어 재사용성이 좋고, V4에 비해 코드가 간결하다
단점 : 필요없는 값들을 다 가져오게된다.

<br/>

## V4 : JPA에서 바로 DTO로 가져오기

<img src="https://user-images.githubusercontent.com/87989933/187493605-004f4c71-88d8-48ee-afca-7cb7fd97560d.png" width=80% />

JPA는 기본적으로 엔티티나 Value object만 반환할 수 있다. DTO를 반환하려면 new 명령어를 사용해서 반환해줘야한다.

```java
@Query("select new jpabook.jpashop.repository.order.simplequery.OrderSimpleQueryDto(o.id, m.name, o.orderDate, o.status, d.address) from Order o join o.member m join o.delivery d")
List<OrderSimpleQueryDto> findOrderDtos();
```

<img src="https://user-images.githubusercontent.com/87989933/187493625-33866467-8fa7-4cdc-b5e2-d6222c4f7858.png" width=80% />

이때, DTO의 생성자에 파라미터로 Entity를 넣으면 JPA는 이 엔티티를 식별자로 넣어버리기때문에, DTO의 파라미터를 각각 넣어줘야한다.

<img src="https://user-images.githubusercontent.com/87989933/187493646-601e5fb8-6382-43ce-9b5d-d967083cfb35.png" width=80% />

### 결과

select 절에서 원하는 데이터만 select하는 쿼리를 확인할 수 있다.

<img src="https://user-images.githubusercontent.com/87989933/187493665-0806b7ad-f9bc-4358-8d70-b405dadd8cc5.png" width=80% />

장점 : SELECT 절에서 원하는 데이터를 직접 선택하므로 DB 애플리케이션 네트웍 용량 최적화

단점 : 리포지토리 재사용성 떨어짐, API 스펙에 맞춰진 코드가 리포지토리에 들어가는 단점
물리적으로는 계층이 나눠져있지만, 논리적으로는 계층이 깨져있는 상태이다.
API 스펙이 바뀌면 리포지토리의 객체를 수정해줘야한다.

<br/>

## fetch join vs DTO 조회 사이의 트레이드 오프

- **fetch join**

엔티티를 가져오는데 fetch join으로 원하는 , 외부의 모습을 건드리지않고 내부의 원하는 것만 fetch join으로 성능 튜닝한다. 코드가 간결하고, 원하는 Dto로 변환해서 재사용할 수 있다.
하지만, 불필요한 데이터를 함께 가져와서 성능 저하 원인이 될 수 도있다.

- **DTO 조회**

SQL 쿼리를 짜듯이 JPA로 딱 맞는 데이터만 가져와서 성능이 최적화된다.
하지만, API 스펙에 맞게 가져와서 재사용성이 안된다. 코드가 지저분해진다.

### 결론

V3과 V4의 차이는 성능차이가 미미하다.. 보통 join을 하는 과정에서 성능차이가 나기때문에 select쪽에서 데이터 몇개를 더 가져오는데 성능차이가 많이 나는지는 의문이다. 데이터가 많거나 API 트래픽이 많으면 고민해볼 수 있다.

\\* DTO로 조회하는것은 API 스펙이 들어와 있는것과 같기때문에, 해당 API의 성능 쿼리용으로 별도로 만들어서 관리하는 것이 좋다. Repository는 가급적 순수한 엔티티를 조회하는데 사용해서 재사용이 용이하게 관리해주고,
복잡한 join 쿼리로 DTO를 반환하는 쿼리는 따로 관리해서 유지보수성을 높여주자!

<br/>

## 정리

엔티티를 DTO로 변환하거나, DTO로 바로 조회하는 두가지 방법은 각각 장단점이 있다.
둘중 상황에 따라서 더 나은 방법을 선택하면 된다.
엔티티로 조회하면 리포지토리 재사용성도 좋고, 개발도 단순해진다.

따라서 권장하는 방법은 다음과 같다.

**쿼리 방식 선택 권장 순서**

1. 우선 엔티티를 DTO로 변환하는 방법을 선택한다. (V2)
2. 필요하면 페치 조인으로 성능을 최적화 한다. 대부분의 성능 이슈가 해결된다. (V3)
3. 그래도 안되면 DTO로 직접 조회하는 방법을 사용한다. (V4)
4. 최후의 방법은 JPA가 제공하는 네이티브 SQL이나 스프링 JDBC Template을 사용해서 SQL을 직접 사용한다.

<br/>

## 참고

[자바 ORM 표준 JPA 프로그래밍](https://www.inflearn.com/course/ORM-JPA-Basic)
', 'JPA', 'ToOne관계 성능 최적화', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (135, '# 컬렉션 조회성능 최적화

일대다 조인에서는 DB가 뻥튀기 되서 최적화하기 어려워진다.

최적화에 대해 더 많이 고민해야한다.

## ? V2 : **엔티티를 DTO로 변환**

**엔티티를 외부로 노출하지말자!!**

<img src="https://user-images.githubusercontent.com/87989933/188326361-d4acee5c-3fa0-42f1-9f60-0408d161de5a.png" width=80% />

<img width="400" height="300" alt="Untitled" src="https://user-images.githubusercontent.com/87989933/188326386-a13e2c9c-991a-4914-a0ee-fc1739d82f03.png">

<img width="400" height="300" alt="Untitled (1)" src="https://user-images.githubusercontent.com/87989933/188326388-729132f7-a9c1-450c-8612-9dcacb4d0c39.png">

orderItems이 엔티티이기때문에, 프록시 초기화 이후 orderItems의 결과를 확인할 수 있다.

<img width="450" alt="Untitled (2)" src="https://user-images.githubusercontent.com/87989933/188326390-738ccbfd-f56e-471b-8964-665bc1a6701c.png">

<img width="400" height="300" alt="Untitled (3)" src="https://user-images.githubusercontent.com/87989933/188326391-801e6057-a499-4127-a41a-fb8ab18aca9c.png">

❗️**이때, 단순히 response를 DTO로 한번 감싸는게 아니라, 내부에 있는 엔티티도 아예 매핑하면안된다!! (OrderItems)**  
엔티티와 완전히 의존을 끊어야한다.
엔티티는 모두 DTO로 변환해서 사용해야 **엔티티가 변하더라도 API 스펙이 바뀌지 않는다!!** (Address같은 값타입은 상관없다)

<img width="450" alt="Untitled (4)" src="https://user-images.githubusercontent.com/87989933/188326392-6d7c0664-42e8-4d66-963f-63a5744c6dd6.png">

<img width="450" alt="Untitled (5)" src="https://user-images.githubusercontent.com/87989933/188326393-62d81c0a-07f2-496f-bf0f-10676d746955.png">

<img width="400" height="300" alt="Untitled (6)" src="https://user-images.githubusercontent.com/87989933/188326395-d0a653b0-f280-4aaf-975f-64cfe3c96f1c.png">

<br/>

But, 지연 로딩으로 너무 많은 SQL이 실행된다.  
order를 조회(1번)하는데, 주문이 2개이기때문에 결과로 2개의 order를 가져온다.  
이때 member, delivery가 N번, orderItem이 N번, Item이 orderItem결과 만큼 수행된다.

참고: 지연 로딩은 영속성 컨텍스트에 있으면 영속성 컨텍스트에 있는 엔티티를 사용하고 없으면 SQL을 실행한다. 따라서 같은 영속성 컨텍스트에서 이미 로딩한 회원 엔티티를 추가로 조회하면 SQL을 실행하지 않는다.

<br/>

## ? V3 : **페치 조인 최적화**

<img width="924" alt="Untitled (7)" src="https://user-images.githubusercontent.com/87989933/188326454-4f79b0be-d549-4740-a24c-468f0abd5919.png">

order가 1개이고, order item은 2개인데, join하면 관계형DB에서는 결과가 2개가 나온다.  
order가 2개가 되어서 JPA에서 데이터를 가져올때 order가 2개가 되어버린다.

```java
@Query("select o from Order o join fetch o.member m join fetch o.delivery d join fetch o.orderItems oi join fetch oi.item i")
List<Order> findOrderCollection();
```

페치조인으로 쿼리 한번에 결과를 가져올 수 있다.

<img width="400" height="500" alt="Untitled (8)" src="https://user-images.githubusercontent.com/87989933/188326455-4d6f32f9-dbea-437e-81e7-b3063e1efc61.png">

<img width="400" alt="Untitled (9)" src="https://user-images.githubusercontent.com/87989933/188326456-e36b3db3-db38-423d-aa0d-eb006905e42a.png">

하지만 위와 같이 join을 했기때문에 DB결과가 중복되서 나타나고, 로그를 찍어보면 아래와 같이 같은 order가 2번으로 참조값까지 같게 중복되어 나온것을 확인할 수 있다.

<img width="1262" alt="Untitled (10)" src="https://user-images.githubusercontent.com/87989933/188326458-21586490-f3c2-4975-8e5e-9a8738ba8ab4.png">

<br/>

이때, **distinct**를 사용한다.

```java
@Query("select distinct o from Order o join fetch o.member m join fetch o.delivery d join fetch o.orderItems oi join fetch oi.item i")
List<Order> findOrderCollection();
```

하지만 DB상으로는 문제가 있다.

\\* DB에서 쿼리 실행결과

<img width="1443" alt="Untitled (11)" src="https://user-images.githubusercontent.com/87989933/188326459-77abb357-d6b6-410d-a16b-28c9222066ee.png">

DB에서 distinct는 한 줄이 전부 똑같아야 중복제거가 된다. 하지만 order Item이 달라서 DB쿼리에서는 distinct가 안된다. distinct 명령을 날렸지만, 쿼리 결과를 뽑을때는 이전과 동일하다.

**하지만 JPA에서는 distinct를 사용하면 자체적으로 distinct가 있으면, order(루트 엔티티)를 가져올때 order가 같은 Id 값이면 중복을 제거해준다!**

<img width="1276" alt="Untitled (12)" src="https://user-images.githubusercontent.com/87989933/188326460-7d98d13f-2e28-4074-85b2-67c5e1b4990e.png">

<br/>

### ❗️distinct 대신 일대다 필드의 타입을 **Set으로 선언**하는 방법도 있다.

<img width="1068" alt="Untitled (13)" src="https://user-images.githubusercontent.com/87989933/188326461-dbeeebef-634a-4fad-8f27-8550e30a1b74.png">

Set은 중복을 허용하지 않는 자료구조이기 때문에 중복등록이 되지 않는다.  
Set이 순서가 보장되지 않기에 엔티티에서 컬렉션은 LinkedHashSet을 사용하여 순서를 보장한다.

```java
@OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
private Set<OrderItem> orderItems = new LinkedHashSet<>();
```

<br/>

### 일대다 관계의 페치조인 단점

❗️치명적인 단점 - 일대다 관계에서 페치조인을 하면 페이징처리를 하면 안된다.

페이징처리를 위해 firtResult와 maxResult를 추가했는데 아래의 warn로그가 발생한다.

<img width="1479" alt="Untitled (14)" src="https://user-images.githubusercontent.com/87989933/188326462-f0dc333e-80f4-4a1c-8e76-090b9cb8203a.png">

→ 페치조인을 썻는데 페이징쿼리가 들어가서 메모리에서 페이징처리하려한다. 데이터가 많아지면 모든 데이터를 메모리에 올려서 페이징처리할것이고 메모리 초과가 발생한다

일다대에서 일(1)을 기준으로 페이징을 하는 것이 목적이지만 데이터는 다(N)를 기준으로 row 가 생성된다.  
우리가 예상한 DB는 2개이지만, 실제 DB에서는 페치조인으로 인해 row수가 증가하여 4개가 되고 페이징의 기준이 달라진다. **일대다 페치조인에서는 페이징을 하면 안된다.**

그래서 Hibernate는 경고로그를 남기고 모든 데이터를 DB에서 읽어오고, 메모리에서 페이징 처리하는데 이것은 매우 위험하다.

• 참고: 컬렉션 페치 조인은 1개만 사용할 수 있다. 컬렉션 둘 이상에 페치 조인을 사용하면 안된다. 데이터가
부정합하게 조회될 수 있다. (좀 더 찾아보자)

<br/>

## ? V3-1 : 페이징과 한계돌파

페이징 + 컬렉션 엔티티를 함께 조회하려면 어떻게 해야할까?

1. 먼저 **ToOne**(OneToOne, ManyToOne) 관계를 모두 페치조인 한다.
   ToOne 관계는 row수를 증가시키지 않으므로 페이징 쿼리에 영향을 주지 않는다.
2. 컬렉션은 지연 로딩으로 조회한다.

<img width="904" alt="Untitled (15)" src="https://user-images.githubusercontent.com/87989933/188326463-26478acd-b6f0-4947-9f3f-c9d264b78453.png">

<img width="708" alt="Untitled (16)" src="https://user-images.githubusercontent.com/87989933/188326464-f04f86c6-b773-4de0-aad3-f267f687c7f6.png">

ToOne관계는 페치조인이라 쿼리 1번에 다 가져온다. 페치조인하지 않은 ToMany관계인 컬렉션 order item에서는 N+1 문제가 그대로 발생한다.

3. 지연 로딩 성능 최적화를 위해 **hibernate.default_batch_fetch_size , @BatchSize** 를 적용한다.
   **이 옵션을 사용하면 컬렉션이나, 프록시 객체를 한꺼번에 설정한 size 만큼 IN 쿼리로 조회한다.**

- **hibernate.default_batch_fetch_size** : 글로벌 설정
- 개별로 설정하려면 **@BatchSize** 를 적용하면 된다. (컬렉션은 컬렉션 필드에, 엔티티는 엔티티 클래스에 적용)

<img width="500" alt="Untitled (17)" src="https://user-images.githubusercontent.com/87989933/188326465-270705ba-0881-475e-b371-2c115a5029d1.png">

한번의 in 쿼리로 한번에 가져온다. 컬렉션과 관련된 데이터(order item)를 in 쿼리로 한번에 가져온다.  
이때 batch size는 in 쿼리의 개수를 의미한다.

<img width="400" height="250" alt="Untitled (18)" src="https://user-images.githubusercontent.com/87989933/188326466-36f98ffe-3f36-4f65-9b6e-ef9d24d84fbb.png">

item은 DB에서 결과적으로 4개가 호출됐는데 한번의 쿼리로 가져온다.

결과적으로 총 쿼리호출수는 1 + N + N → 1+1+1로 최적화된다.

전부 페치조인했을때는 쿼리 한번에 모든 데이터를 가져오는 장점이 있지만 데이터의 중복이 많은데, DB에서 어플리케이션으로 모두 전송한다. 그래서 데이터 전송량이 많아진다.

하지만, ToOne 관계는 페치조인하고 컬렉션은 batch size로 가져오면 페치조인에 비해 쿼리 호출수는 증가하지만, DB에서 데이터가 중복없이 최적화되어 가져올 수 있어서 (정규화된 상태로 조회) 조인보다 DB 데이터 전송량에서 최적화된다.

모두 페치조인하지않고 batch size로 가져와도 최적화 할 수 있다. 쿼리수는 엔티티 갯수만큼 많아지지만, 모두 in 쿼리로 가져와서 각 엔티티를 1번씩 조회한다.

### **결론**

ToOne 관계는 페치 조인해도 페이징에 영향을 주지 않는다. 따라서 ToOne 관계는 페치조인으로 쿼리 수를 줄이고, 나머지는 hibernate.default_batch_fetch_size 로 최적화 하자.

- hibernate.default_batch_fetch_size를 **글로벌 설정**으로 사용해 N+1 문제를 최대한 in 쿼리로 기본적인 성능을 보장하게 한다.
- @OneToOne, @ManyToOne과 같이 1 관계의 자식 엔티티에 대해서는 **모두 Fetch Join**을 적용하여 한방 쿼리를 수행한다.
- 컬렉션이 여러개일때, **가장 데이터가 많은 자식쪽에 Fetch Join**을 사용한다.
  - Fetch Join이 없는 자식 엔티티에 관해서는 위에서 선언한 hibernate.default_batch_fetch_size 적용으로 100~1000개의 in 쿼리로 성능을 보장한다.

<br/>

❗️**default_batch_fetch_size 의 크기**

**default_batch_fetch_size 의 크기**는 적당한 사이즈를 골라야 하는데, 100~1000 사이를 선택하는 것을 권장한다. 이 전략은 SQL IN절을 사용하는데, DB에 따라 IN절 파라미터를 1000으로 제한하기도 한다. 1000으로 잡으면 한번에 1000개를 DB에서 애플리케이션에 불러오므로 DB 에 순간 부하가 증가할 수 있다. 하지만 애플리케이션은 100이든 1000이든 결국 전체 데이터를 로딩해야 하므로 메모리 사용량이 같다.

1000으로 설정하는 것이 성능상 가장 좋지만, 결국 DB든 애플리케이션이든 순간 부하를 어디까지 견딜 수 있는지로 결정하면 된다.

<br/>

### ? **@EntityGraph**

페치 조인 쿼리를 작성하지 않고 **@EntityGraph** 어노테이션으로 SQL 한번에 조회할 수 있다.

@EntityGraph의 attributePaths에 쿼리 수행시 바로 가져올 필드명을 지정하면 Lazy가 아닌 Eager 조회로 가져온다.

<img width="742" alt="Untitled (19)" src="https://user-images.githubusercontent.com/87989933/188326467-e864f349-3714-4629-af88-3327988c0689.png">

<img width="400" height="300" alt="Untitled (19)" src="https://user-images.githubusercontent.com/87989933/188326468-cdf2b81f-2c48-4419-b41e-6fefae52b840.png">

**페치조인은 Inner Join, Entity Graph는 Outer Join**이라는 차이점이 있다.

jpql로 쿼리를 작성하고 페치조인대신 @EntityGraph를 사용해도 되고, 메서드명으로 쿼리 생성전략을 사용하면서 @EntityGraph를 사용해 페치 조인을 사용할 수도 있다.

## 참고

[자바 ORM 표준 JPA 프로그래밍](https://www.inflearn.com/course/ORM-JPA-Basic)
', 'JPA', 'ToMany관계 컬렉션 성능 최적화 (1)', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (136, '# 컬렉션 조회 성능 최적화

## ? V4 : DTO 직접 조회

SQL 쓰듯이 데이터를 한줄밖에 못넣기 때문에, 일대다 관계인 컬렉션은 생성자 파라미터로 데이터를 넣을 수 없어서, 컬렉션을 제외하고 이전과 동일하게 DTO로 조회한다.

이후 반복루프를 돌면서 컬렉션도 동일하게 DTO로 조회 후 데이터를 채워준다.

<img width="850" alt="Untitled" src="https://user-images.githubusercontent.com/87989933/189091381-afc8d359-59e6-4bb2-8c4c-016767f37098.png">

Query: 루트 1번, 컬렉션 N 번 실행 (N + 1 문제)  
ToOne(N:1, 1:1) 관계들을 먼저 조회하고, ToMany(1:N) 관계는 각각 별도로 처리한다.

이런 방식을 선택한 이유는 다음과 같다.  
ToOne 관계는 조인해도 데이터 row 수가 증가하지 않는다. ToMany(1:N) 관계는 조인하면 row 수가 증가한다.

row 수가 증가하지 않는 ToOne 관계는 조인으로 최적화 하기 쉬우므로 한번에 조회하고, ToMany 관계는 최적화 하기 어려우므로 findOrderItems() 같은 별도의 메서드로 조회한다.

<br/>

## ? V5: DTO 직접 조회 - 컬렉션 조회 최적화

Query: 루트 1번, 컬렉션 1번  
ToOne 관계들을 먼저 조회하고, 여기서 얻은 식별자 orderId로 ToMany 관계인 OrderItem 을 한꺼번에 조회

<img width="850" alt="Untitled (1)" src="https://user-images.githubusercontent.com/87989933/189091411-5bfc3af8-2a92-4d2e-90da-b51c4e8fdcc4.png">

orderId의 리스트를 생성하여 파라미터 인자로 넣고, 그 메서드에서는 orderId를 가져올때 위와 다르게 in절로 한번에 가져온다. → 루프를 돌면서 쿼리를 날리지않고, 쿼리 한번으로 컬렉션리스트를 메모리로 가져와서 매칭하여 값을 세팅해준다. 결과적으로 쿼리 2번으로 최적화 할 수 있다.

\\* **MAP을 사용해서 매칭 성능 향상(O(1))**  
in절로 조회한 컬렉션 리스트를 그냥 써도 되지만, 좀 더 최적화와 코드 작성을 편하게 하기위해 stream을 써서 map으로 변환해준다.

<br/>

## ? V6: DTO 직접 조회 - 플랫 데이터 최적화

order와 orderItem을 조인해서 한방 쿼리로 SQL 데이터를 한줄로 가져올 수 있게 한다.

<img width="850" alt="Untitled (2)" src="https://user-images.githubusercontent.com/87989933/189091414-58c964d0-38f6-4257-8f0c-574e20efa48c.png">

루트 엔티티의 필드와 컬렉션 필드를 모두 가지고 있는 DTO를 조회해준다.

<img width="250" height="200" alt="Untitled (3)" src="https://user-images.githubusercontent.com/87989933/189091418-66313fb7-dcae-4f49-9aea-546384d1255e.png">

쿼리는 한번이지만 조인을 했기때문에 DB에서 애플리케이션에 전달하는 데이터에 중복 데이터가 추가된다. → 페이징 처리가 불가능하다

<img width="827" alt="Untitled (4)" src="https://user-images.githubusercontent.com/87989933/189091421-af1fffc3-def8-400f-b09e-5f7be56ab81a.png">

또한, API 스펙을 이전과 같은 DTO로 반환해야한다면, 직접 코드로 루프를 돌려서 중복을 제외하고, 원하는 Dto 형식에 맞게 넣어주어야한다.

<img width="850" alt="Untitled (5)" src="https://user-images.githubusercontent.com/87989933/189091423-21efb896-415b-4b11-8181-64785e7635e8.png">

장점은 쿼리가 한번이지만, 조인으로 인해 DB에서 애플리케이션에 전달하는 데이터에 중복 데이터가 추가되므로 상황에 따라 V5 보다 더 느릴수도 있다. 또한, 애플리케이션에서 추가 작업이 크고, DB 중복데이터 추가로 order를 기준으로하는 페이징은 불가능하다.

\\* groupBy할때 다른객체를 묶을때 어떤걸 묶을지 알려주어야 하는데, 기준을 Dto에 **@EqualsAndHashCode(of = “orderId”)** 와 같이 기준을 정해야한다.

<img width="400" alt="Untitled (6)" src="https://user-images.githubusercontent.com/87989933/189091424-0ccd635f-2a48-4d52-9839-061c348079c8.png">

<img width="400" alt="Untitled (7)" src="https://user-images.githubusercontent.com/87989933/189091426-49a61d98-0b91-44f1-8683-cddf89c9d1de.png">

분리된 orderItem을 @EqualsAndHashCode의 기준으로 묶는다.

<img width="500" alt="Untitled (8)" src="https://user-images.githubusercontent.com/87989933/189091430-d06cb58e-5f0d-4660-8704-8d4a6af2106d.png">

<img width="400" alt="Untitled (9)" src="https://user-images.githubusercontent.com/87989933/189091433-d40eb452-8906-42b6-a89f-7d61860c64a5.png">

<br/>

## 정리

### 엔티티 조회

- **엔티티를 조회해서 그대로 반환: V1** → 엔티티는 바로 반환하여 노출시키면 안된다 (API 스펙이 변한다!!)
- **엔티티 조회 후 DTO로 변환: V2** → 조인시에 성능이 안나올 수 있음
- **페치 조인으로 쿼리 수 최적화: V3** → 쿼리수를 최적화 가능하다. But, 컬렉션은 페치 조인시 페이징이 불가능
- **컬렉션 페이징과 한계 돌파: V3.1**
  1. ToOne 관계는 페치 조인으로 쿼리 수를 최적화하고
  2. 컬렉션은 페치 조인 대신에 지연 로딩을 유지하고,
     hibernate.default_batch_fetch_size , @BatchSize 로 최적화한다.

### DTO 직접 조회

- **JPA에서 DTO를 직접 조회: V4**
- **컬렉션 조회 최적화 : V5** → 일대다 관계인 컬렉션은 IN 절을 활용해서 메모리에 미리 조회해서 최적화
- **플랫 데이터 최적화 : V6** → JOIN 결과를 그대로 조회 후 애플리케이션에서 원하는 모양으로 직접 변환

<br/>

### 권장 순서

1. 엔티티 조회방식으로 우선접근

   1-1. 페치조인으로 쿼리 수를 최적화

   1-2.컬렉션 최적화
   페이징 필요시 - hibernate.default_batch_fetch_size , @BatchSize 로 최적화
   페이징 필요없을시 - 페치 조인 사용

2. 엔티티 조회방식으로 해결이 안되면 DTO조회방식 사용
3. DTO 조회 방식으로 해결이 안되면 NativeSQL or 스프링 JdbcTemplate

<br/>

### 참고

\\* 엔티티 조회 방식은 페치 조인이나, hibernate.default_batch_fetch_size , @BatchSize 같이 코드를 거의 수정하지 않고, 옵션만 약간 변경해서, 다양한 성능 최적화를 시도할 수 있다. 반면에 DTO를 직접 조회하는 방식은 성능을 최적화 하거나 성능 최적화 방식을 변경할 때 많은 코드를 변경해야 한다

→ fetch join이나 BatchSize 정도로 충분히 최적화가 가능하다!!

이정도로 해결이 안된다면, 서비스가 트래픽이 많은 정도라 캐시를 사용해야 할 것

\\* 엔티티는 직접 캐싱을 하면안된다! 영속성 컨텍스트에 의해 상태가 관리되기 때문에, 캐시에 잘못 올라가면 상당히 복잡해지기 때문에, 캐시한다면 무조건 DTO로 변환해서 DTO를 캐시해야한다. 엔티티를 캐시하는 전략으로 Hibernate 2차 캐시가 있지만, 실무에 적용하기 까다롭다.

개발자는 성능 최적화와 코드 복잡도 사이에서 고민 해봐야 한다.  
항상 그런 것은 아니지만, 보통 성능 최적화는 단순한 코드를 복잡한 코드로 몰고간다.

엔티티 조회 방식은 JPA가 많은 부분을 최적화 해주기 때문에, 단순한 코드를 유지하면서, 성능을 최적화 할 수 있다. 반면에 DTO 조회 방식은 SQL을 직접 다루는 것과 유사하기 때문에, 둘 사이에 고민해봐야한다.

**DTO 조회 방식의 선택지**

DTO로 조회하는 방법도 각각 장단이 있다. V4, V5, V6에서 단순하게 쿼리가 1번 실행된다고 V6이 항상 좋은 방법인 것은 아니다.

V4는 코드가 단순하다. 특정 주문 한건만 조회한다면 이 방식을 사용해도 성능이 잘 나온다. 예를 들어서 조회한 Order 데이터가 1건이면 OrderItem을 찾기 위한 쿼리도 1번만 실행하면 된다.

V5는 코드가 복잡하다. 여러 주문을 한꺼번에 조회하는 경우에는 V4 대신에 이것을 최적화한 V5 방식을 사용해야 한다. 예를 들어서 조회한 Order 데이터가 1000건인데, V4 방식을 그대로 사용하면, 쿼리가 총 1 + 1000번 실행된다. 여기서 1은 Order 를 조회한 쿼리고, 1000은 조회된 Order의 row 수다.
V5 방식으로 최적화 하면 쿼리가 총 1 + 1번만 실행된다. 상황에 따라 다르겠지만 운영 환경에서 100배 이상의 성능 차이가 날 수 있다.

V6는 완전히 다른 접근방식이다. 쿼리 한번으로 최적화 되어서 상당히 좋아보이지만, Order를 기준으로 페이징이 불가능하다. 실무에서는 이정도 데이터면 수백이나, 수천건 단위로 페이징 처리가 꼭 필요하므로, 이 경우 선택하기 어려운 방법이다. 그리고 데이터가 많으면 중복 전송이 증가해서 V5와 비교해서 성능 차이도 미비하다.

## 참고

[자바 ORM 표준 JPA 프로그래밍](https://www.inflearn.com/course/ORM-JPA-Basic)
', 'JPA', 'ToMany관계 컬렉션 성능 최적화 (2)', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (137, '## find() vs getReference()

결론부터 둘의 차이를 알아보면,

- find : 데이터베이스를 통해 실제 엔티티를 조회
- getReference() : 데이터베이스 조회를 미루는 프록시 엔티티 조회

먼저 테스트에 사용할 Member엔티티이다.

<img width="80%" src="https://user-images.githubusercontent.com/87989933/200983515-f3c152b8-5f2e-4b08-97e8-5cc500c287a0.png">

Member의 기본 정보가 있고, Team 엔티티를 매핑하고 있지만 사용하지 않을 예정

### 테스트 코드

```java
	@Test
    @DisplayName("프록시 객체 테스트")
    public void proxyTest() {
        Member member = new Member("member1", 10);
        em.persist(member);

        em.flush();
        em.clear();

        Member refMember = em.getReference(Member.class, member.getId());
        System.out.println("refMember : " + refMember.getClass());
        System.out.println("refMember : " + refMember.getId());
        System.out.println("username : " + refMember.getUsername());
    }
```

<img width="80%" src="https://user-images.githubusercontent.com/87989933/200990419-760f7c20-0070-4f21-8d7a-53c705192a28.png">

테스트 결과 getReference로 조회하면 프록시 객체를 조회하고, 호출할때 이미 id를 가지고 있어서 쿼리가 나가지 않는다.
엔티티의 정보를 조회하면, 프록시 초기화를 하면서 데이터를 가져오기 때문에 select 쿼리가 나간다.

# 프록시 (Proxy)

이 프록시는 id값만 가지고 있고 target이 null로 된, 내부에는 비어있는 가짜 객체이다. 이때 target은 실제 객체를 가르키는 값이다.

실제 클래스를 상속받아 만들어져서, 실제 클래스와 겉모양이 같다.  
사용하는 입장에서는 진짜 객체인지 프록시 객체인지 구분하지않고 사용하면 된다.

## 프록시 객체의 초기화

<img width="80%" src="https://user-images.githubusercontent.com/87989933/200991482-22a85377-7b46-424e-8caa-799ece672910.png">

초기 프록시 객체의 target은 null 이기때문에 프록시 객체에 값을 요청하면 값을 알 수 없다.  
그래서 영속성 컨텍스트에 초기화를 요청하고, 영속성 컨텍스트는 DB를 조회해서 실제 엔티티 객체를 생성한이후 프록시객체의 target을 실제 객체에 연결시켜준다.  
target으로 실제 객체와 연결되면, 실제 객체의 메서드를 호출한다.

## 프록시 특징

- 프록시 객체는 처음 사용할때 한번만 초기화한다.
- **프록시 객체를 초기화할때, 프록시 객체가 실제 엔티티로 바뀌는것이 아니다!!**  
  초기화되면 프록시 객체를 통해서 실제 엔티티에 접근이 가능한 것이다.
- **프록시 객체는 원본 엔티티를 상속받기 때문에, 타입체크시 주의해야한다!! ( == 대신 instance of를 사용하는게 좋다)**  
  \\* 프록시객체를 언제쓸지 모르니 JPA로 엔티티 타입비교시 가급적 instanceof 사용하는것도 방법  
  -> 프록시 객체와 원본 객체는 == 비교시에 타입이 각각 프록시타입과 실제 타입으로 다르다!!
- JPA는 하나의 트랜잭션 내에서 ==이 알맞게 동작하도록 상황에 따라 다르게 작동한다.  
   ( JPA는 하나의 트랜잭션 내에서 같은 타입을 보장해준다. )

**1. 실제 Entity 조회 후 프록시 객체를 조회하는 경우**

```java
	@Test
    @DisplayName("엔티티 조회 후 프록시 조회 테스트")
    public void proxyTest() {
        // given
        Member member = new Member("member1", 10);
        em.persist(member);

        em.flush();
        em.clear();

        // when
        Member findMember = em.find(Member.class, member.getId());
        System.out.println("findMember : " + findMember.getClass());

        Member refMember = em.getReference(Member.class, member.getId());
        System.out.println("refMember : " + refMember.getClass());

        // then
        assertThat(findMember.equals(refMember));
    }
```

findMember .getClass() → domain.Member (실제 객체)  
reference.getClass() → domain.Member (실제객체)  
findMember == reference → true

<img width="80%" src="https://user-images.githubusercontent.com/87989933/201002006-bf3bfb9d-e994-4531-b3b7-433f82dea894.png">

→ 영속성 컨텍스트에 찾는 엔티티가 이미 있으면 em.getReference()를 호출해도 실제 엔티티가 반환된다.  
 이미 영속성 컨텍스트에 올라가있기때문에 굳이 프록시를 가져올 이유가없다.  
 성능최적화 입장에서도 영속성 컨텍스트에 올라간 실제 엔티티를 가져오면 된다.

**2. 프록시 객체를 조회 후 실제 Entity를 조회하거나, 프록시객체를 초기화 하는 경우**

```java
	@Test
    @DisplayName("프록시 조회 후 엔티티를 조회")
    public void proxyTest2() {
        // given
        Member member = new Member("member1", 10);
        em.persist(member);

        em.flush();
        em.clear();

        // when
        Member refMember = em.getReference(Member.class, member.getId());
        System.out.println("refMember : " + refMember.getClass());

        Member findMember = em.find(Member.class, member.getId());
        System.out.println("findMember : " + findMember.getClass());

        // then
        assertThat(refMember.equals(findMember));
    }
```

refMember .getClass() → domain.Member$HibernateProxy (프록시 객체)  
findMember .getClass() → domain.Member$HibernateProxy (프록시 객체)  
findMember .getClass() → domain.Member$HibernateProxy (프록시 객체)

<img width="80%" src="https://user-images.githubusercontent.com/87989933/201002648-f77fa36c-235d-4bd7-b127-2baf81dbe909.png">

→ **1번과 반대의 상황으로, 프록시가 먼저 초기화됐으면, em.find()를 호출해도 프록시 객체가 반환된다**

\\* 실제 Entity를 조회하면서 select 쿼리는 나가지만, 프록시 객체이다.

**결론**

이처럼 **JPA는 한 트랜잭션 내에서 실제 엔티티 객체와 프록시 객체의 비교연산 동작의 완전성을 보장**하기 위해 두 객체의 클래스 타입이 동일하다.

but, 동일한 트랜잭션이 아닌경우, ==을 사용한다면 상황에 따라 결과가 달라질 수 있기 때문에 instanceof 를 사용하는것이 좋다.

Proxy이든 실제 엔티티이든 상관없이 개발에 문제없게 개발하는것이 중요하다.

**❗ 영속성 컨텍스트의 도움을 받을 수 없는 준영속 상태일 때, 프록시를 초기화하면 문제 발생**

프록시 초기화시 영속성 컨텍스트를 통해 초기화하게 되는데, 초기화 하기전에 영속성컨텍스트와 연결할 수 없는 경우

```java
	@Test
    @DisplayName("프록시 초기화 전 영속성컨텍스트 에러")
    public void proxyTest3() {
        // given
        Member member = new Member("member1", 10);
        em.persist(member);

        em.flush();
        em.clear();

        // when
        Member refMember = em.getReference(Member.class, member.getId());
        System.out.println("refMember : " + refMember.getClass());

        em.detach(refMember); // 준영속상태로 변경
        // em.close(); // 영속성 컨텍스트 종료
        // em.clear(); // 영속성 컨텍스트 clear

        // then
        assertThatThrownBy(() -> refMember.getUsername())
        .isInstanceOf(LazyInitializationException.class);
    }
```

위 코드와 같이 em.detach()나 em.close(), em.clear()로 영속성 컨텍스트에서 detach시키거나 닫아서 준영속 상태에서 getUsername을 호출하면 **LazyInitializationException 예외(could not initialize proxy)가 발생한다.**

<img width="80%" src="https://user-images.githubusercontent.com/87989933/201004321-cc01c674-7877-4b2a-b0a5-2e549292815a.png">

### **프록시 확인 메서드**

- **EntityManagerFactory.getPersistenceUnitUtil.isLoaded(Object entity)** - 프록시 인스턴스의 초기화 여부 확인
- **entity.getClass() 출력** - 프록시 클래스 확인 방법
- **Hibernate.initialize(entity)** - 프록시 강제 초기화

참고로 JPA 표준은 강제 초기화가 없어서 강제로 호출해야한다. 강제 호출 ex) **member.getName()**

<br/>

## 참고

- [자바 ORM 표준 JPA 프로그래밍](https://www.inflearn.com/course/ORM-JPA-Basic)
', 'JPA', '프록시 (Proxy)', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (138, 'Spring Data JPA의 delete 와 deleteById 의 차이는 무엇인지,
성능상으로도 차이가 있는지 궁금해서 정리한 내용입니다.

# deleteById, delete

deleteById 와 delete는 Spring Data CrudRepository interface의 구현체인
SimpleJpaRepository에 정의되어있다.

## deleteById

<img width="80%" src="https://velog.velcdn.com/images/hyojhand/post/9bd7e95a-7f43-479a-919c-d777035ab64f/image.png">

delteById의 코드를 확인해보면 내부적으로 delete를 호출하고 있으며,
넘어온 id 값으로 findById를 사용하여 delete에 인자로 넘겨줄 엔티티를 조회하고 있다.

이때, findById로 조회한 데이터가 없을 경우, **EmptyResultDataAccessException**을 발생시킨다.

## delete

<img width="80%" src="https://velog.velcdn.com/images/hyojhand/post/daf7f8fb-5c7e-40cb-ba5b-cf59f6837d7d/image.png">

delete는 넘어온 엔티티에 대해 null체크를 한 이후, EntityManager를 통해 삭제하고있다.

## deleteById vs delete

deleteById를 사용하면, 서비스 로직에서 메서드 하나만 사용해도 조회와 삭제가 모두 가능하다. 또한, 내부적으로 id에 대한 null체크도 해주기 때문에 의도치않은 NullPointerException도 예방할 수 있다.

하지만, deleteById는 내부적인 findById 조회시에 데이터가 없을 경우, EmptyResultDataAccessException이 고정으로 발생한다.

반면에, findById + delete를 사용한다면, 직접 예외처리를 커스텀할 수 있다는 장점이 있다.

결론적으로는 id 조회시 null에 대한 Exception 차이를 제외한 전체 로직은 동일하여 성능상 차이가 없을것으로 보인다.
', 'JPA', 'deleteById vs delete', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (139, '# ? Cascade - 영속성 전이

특정 엔티티를 영속 상태로 만들때 연관된 엔티티도 함께 영속상태로 만들고 싶을때  
ex) 부모 엔티티를 저장할때 자식 엔티티도 함께 저장

아래 코드에서 Parent 엔티티만 save하면 parent만 저장되고 child는 저장되지 않는다.

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367929-af457b15-527d-4c92-9cec-5bfc77f805a9.png">

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367949-ff14a77a-0cf1-465c-b4a4-9b753e5d2576.png">

이때 Parent에서 cascade 타입을 지정해주면 child 엔티티도 함께 저장된다.  
cascade타입을 ALL로 지정했지만, 여기서는 Persist에 해당된다.

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367952-04c80762-ad69-4180-a061-b5b6a4b484ca.png">

<br/>

## **CASCADE 종류 (CascadeType.Cascade타입)**

- **ALL** : 모두 적용
- **PERSIST** : 영속
- **REMOVE** : 삭제
- MERGE : 병합
- REFRESH
- DETACH

부모를 persist 할때, cascade 지정된 매핑된 엔티티도 함께 persist 해준다

**엔티티를 영속화할 때 연관된 엔티티도 함께 영속화하는 편리함을 제공할 뿐 영속성 전이는 연관관계를 매핑하는 것과 아무 관련이 없음**

하나의 엔티티가 해당 엔티티를 관리할때(종속적일때) 의미가 있다. 라이프 사이클이 동일하고, 단일 소유자일때 (Parent만 Child를 관리할떄) 사용하면 된다. 다른 엔티티에서도 관리하고 있을때는 사용하면 안된다!!

<br/>

# ? 고아객체

부모 엔티티와 연관관계가 끊어진 자식 엔티티를 고아객체라고 한다.

## **orphanRemoval = true**

참조가 제거된 엔티티는 다른곳에서 참조하지 않는 고아 객체로 보고 삭제하는 기능이다.

ex) Parent parent1 = em.find(Parent.class, id);
parent1.getChildren().remove(0);

→ 자식엔티티를 컬렉션에서 제거하면 delete 쿼리가 나간다.

개념적으로 부모를 제거하면 자식은 고아가 된다. 따라서 고아 객체 제거 기능을 활성화 하면, 부모를 제거할 때 자식도 함께 제거된다. 이것은 CascadeType.REMOVE처럼 동작한다.

<br/>

# ? CascadeType.REMOVE vs orphanRemoval = true

### 부모 엔티티 삭제

먼저, 아래와 같이 부모 엔티티인 Parent를 삭제해보자!

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367956-f1bf3c80-ac07-4b27-a99f-b62cf82c7885.png">

CascadeType을 ALL로 지정하여 parent가 persist될때 child도 persist시켜주고, 삭제될때는 함꼐 지워지도록 한다.

다른 방법으로 cascadeType을 지정하지않고, child를 따로 저장해준 이후, orphanRemoval = true으로 지정하고 parent를 삭제한다.

이때 둘다 동일하게 delete 쿼리가 3번 나가면서, parent와 child가 모두 지워지는것을 확인할 수 있다.
parent가 삭제될때, child도 영속성 전이 옵션으로 인해 함께 삭제된다.

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367959-bfa618af-039b-4923-84f6-208fae2f8e12.png">

결론적으로 부모 엔티티를 삭제할 때는,
CascadeType.REMOVE와 orphanRemoval = true가 동일하게 동작한다.

<br/>

### 부모 엔티티에서 자식 엔티티 삭제

이제 자식 엔티티인 Child 엔티티를 삭제해보자!

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367964-b434c176-0728-4034-9645-09cbc2b252e0.png">

이전과 동일하게 CascadeType을 ALL로 지정해서 영속성 전이를 통해 child를 함께 저장하고, 첫번째 child를 삭제해본다. 하지만, 이때는 delete쿼리가 나가지 않는다. 영속성 전이 삭제 옵션은 부모와 자식의 관계가 끊어졌다 해서 자식을 삭제하지 않기 때문이다.

다음으로 orphanRemoval = true를 통해 부모 엔티티가 자식 엔티티의 관계를 제거하면 자식은 고아로 취급되어 그대로 사라진다. CascadeType.PERSIST를 함께 사용하면, 이때도 부모가 자식의 전체 생명 주기를 관리하게 된다.

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367968-06b87303-5cef-4f94-93d0-2a02c89ae383.png">

이전과는 다르게 delete 쿼리가 1번 나간다. 고아 객체 옵션은 부모와 자식의 관계가 끊어지면 자식을 고아로 취급하고 자식을 삭제하기 때문이다.

<img width="80%" src="https://user-images.githubusercontent.com/87989933/189367970-c14ebafa-08c6-4343-b949-62f8d83ff0ee.png">

DB상으로도 자식 엔티티가 삭제되었다.

<br/>

## 결과

- 부모 엔티티 삭제

CascadeType.REMOVE와 orphanRemoval = true는 부모 엔티티를 삭제하면 자식 엔티티도 삭제한다.

- 부모 엔티티에서 자식 엔티티 제거

CascadeType.REMOVE는 자식 엔티티가 그대로 남아있는 반면, orphanRemoval = true는 자식 엔티티를 제거한다.

<br/>

## ❗️ **주의**

- 특정 엔티티가 개인 소유할 때(참조하는 곳이 하나일때) 사용해야한다.

예를 들어 Child(자식)을 Parent(부모)도 알고 Grand(부모)도 알고 있다면, CascadeType.REMOVE 또는 orphanRemoval = true를 주의해야한다. 자식 엔티티를 삭제할 상황이 아닌데도 어느 한쪽의 부모 엔티티를 삭제했거나 부모 엔티티로부터 제거됐다고 자식이 삭제되는 불상사가 일어날 수 있기 때문이다.

- **@OneToOne, @OneToMany만 가능**

스스로 생명주기를 관리하는 엔티티는 em.persist()로 영속화, em.remove()로 생명주기를 제거한다.

**두 옵션을 모두 활성화 하면 부모 엔티티를 통해서 자식의 생명주기를 관리할 수 있다.
CascadeType.ALL + orphanRemovel=true (영속성 전이 + 고아객체)**

→ 도메인 주도 설계(DDD)의 Aggregate Root개념을 구현할 때 유용하다.
부모와 자식 관계에서 부모가 Aggregate Root가 되고 부모 레포지토리만 만들어서 개발하는 경우에서 사용된다고 볼 수 있다.
', 'JPA', 'Cascade vs orphanRemoval', 'BACKEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (141, '# React.JS란?

React.JS는 프레임워크가 아닌 라이브러리이다.

- 프레임워크 : 애플리케이션 구축 시 모든 애플리케이션의 공통적인 부분을 제공해줌. 필요한 기능이 이미 만들어져 있어 만들어진 ''틀'' 안에 ''내용물''을 채워넣음으로써 완성시킴. 뼈대에 해당. 미리 만들어진 틀 밖으로 벗어나기가 어려움.

- 라이브러리 : 필요한 부분만을 단독으로 가지고 와서 사용하는 것이 가능. 기능을 하게 하는 부품에 해당. 가벼움. React.JS는 유저 인터페이스를 만들기 위한 라이브러리이다.

## React의 장점

- 학습이 간단하다. 컴포넌트만을 사용하기 때문에 복잡하지 않음.
- 가상 DOM(Virtual DOM)을 사용한다.
- 뛰어난 Garbage Collection, 메모리관리, 성능.
- UI를 컴포넌트화 하여 매우 간편한 UI 수정 및 재사용.
- 페이스북 개발자들이 만들어 페이스북에서 꾸준히 업데이트를 함
- 다른 프레임워크나 라이브러리와 혼용 가능. 이미 개발이 완료된 서비스에도 적용이 가능.
- 서버 & 클라이언트 사이드 렌더링 모두 지원

### \\* 서버 사이드 렌더링의 장점

클라이언트 사이드 렌더링은 초기 구동 딜레이가 있기 때문에, 초기 렌더링을 서버 사이드 렌더링으로 할 경우, 유저에게 쾌적한 사용경험(User Experience)을 제공할 수 있다.

서버 측에서 HTML을 미리 생성해서 문자열 형태로 브라우저에 띄운다. SEO(Search Engine Optimization; 검색엔진최적화)지원 가능하지만, 서버측의 자원을 쓰게 되는 것은 불가피하기 때문에 컴퓨터 성능이 좋지않고 방문자가 많다면 추천하지 않는다.

## React의 단점

- 시각적으로 보여지는 부분만 컨트롤 할 수 있다.
- IE8 이하는 지원하지 않음.
', 'React', 'React란?', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (142, '## React

Virtual DOM : 브라우저에 실제로 보여지는 DOM이 아니라 메모리 상에만 존재하는 가상의 DOM으로,
그냥 자바스크립트 객체이기 때문에 작동 속도가 실제 DOM 보다 훨씬 빠르다.

리액트는 상태(state)가 업데이트 되면 Virtual DOM에 먼저 렌더링한 후,
실제 DOM과 비교해 차이가 있는 부분만 부분적으로 패치한다.

## Environment

Webpack, Babel:

- Webpack : 컴포넌트별로 분리해 작성한 여러 개의 파일을 하나로 합쳐주는 역할
- Babel : JSX 등 최신 자바스크립트 문법을 사용하기 위해 (최신 자바스크립트 문법을 기존 문법으로 변환해주는 트랜스파일러. 브라우저에서 아직 지원하지 않거나 일부 브라우저만 지원하는 문법을 사용할 수 있게 해준다. )
  Component
  컴포넌트 : 재사용 가능한 UI 조각.

리액트 컴포넌트를 작성할 땐 리액트를 import해야 한다.
import React from ''react'';

ReactDOM.render() : 브라우저에 있는 실제 DOM 내부에 리액트 컴포넌트를 렌더링해주는 메소드.

## JSX

리액트 Fragment : <></>, 브라우저 상에 실제 엘리먼트로 나타나지 않음. 리액트 컴포넌트는 반드시 하나의 태그로 감싸져 있어야 하는데, 단순히 감싸기 위한 목적으로 불필요한 div를 사용하는 대신 Fragment를 사용할 수 있다.

인라인 스타일은 객체 형태로 작성해야 하며, 스타일 속성 이름은 카멜케이스(background-color -> backgroundColor)로 작성해야 한다.

```javascript
const style = {
backgroundColor: ''black'',
fontSize: 24
}

 <div style={style}>{name}</div>
```

css class는 class 대신 className 으로 작성.

JSX 내부 주석은 {/_ 이 안에 _/} 작성. (중괄호로 감싸야 함)

태그 안에서는 // 주석 사용 가능. (<Hello //주석 />)

## props

defaultProps : 컴포넌트에 props를 지정하지 않았을 때 기본적으로 사용할 값 설정.

```javascript
import React from "react";

function Hello({ color, name }) {
  return <div style={{ color }}>안녕하세요 {name}</div>;
}

Hello.defaultProps = {
  name: "이름없음",
};
```

props.children : 하위 컴포넌트를 조회하고 싶을 땐 props.children 을 사용한다.

```javascript
return <div>{props.children}</div>;
```
', 'React', 'React에 대해..', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (143, '# useState

useState
사용자 인터랙션에 따라 바뀌는 동적인 부분을 구현할 때 state를 사용한다.

원래 클래스형 컴포넌트에서만 상태를 사용할 수 있었지만, 리액트 16.8에서 Hooks이 도입되면서, 함수형 컴포넌트에서도 상태를 관리할 수 있게 되었다.

useState Hook을 이용해 함수형 컴포넌트에서 state를 관리할 수 있다.

Setter 함수의 사용 :

- 새로운 state 값을 파라미터로 넣어주는 방식
  setValue(value + 1);

콜백 함수를 등록하는 방식 (함수형 업데이트)
setValue(prevValue => prevValue + 1);
함수형 업데이트 방식은 컴포넌트 최적화와도 관련되어 있다. (나중에)
이벤트 처리 : onClick={onIncrease()} X, onClick={onIncrease} OK
(전자는 렌더링되는 시점에서 함수가 호출되어 버림. )

여러 개의 input 태그 상태 관리 :

```javascript
import React, { useState } from "react";

function InputSample() {
  const [inputs, setInputs] = useState({
    name: "",
    nickname: "",
  });

  const { name, nickname } = inputs; // 비구조화 할당을 통해 값 추출

  const onChange = (e) => {
    const { value, name } = e.target; // 우선 e.target 에서 name 과 value 를 추출
    setInputs({
      ...inputs, // 기존의 input 객체를 복사한 뒤
      [name]: value, // name 키를 가진 값을 value 로 설정
    });
  };

  const onReset = () => {
    setInputs({
      name: "",
      nickname: "",
    });
  };

  return (
    <div>
      <input name="name" placeholder="이름" onChange={onChange} value={name} />
      <input
        name="nickname"
        placeholder="닉네임"
        onChange={onChange}
        value={nickname}
      />
      <button onClick={onReset}>초기화</button>
      <div>
        <b>값: </b>
        {name} ({nickname})
      </div>
    </div>
  );
}

export default InputSample;
```

useState에서 문자열이 아니라 객체로 상태를 관리한다.
input 태그에 name을 설정하고, 이벤트가 발생했을 때 이 값을 참조한다. (e.target.name: e.target.value)
객체 state를 수정할 때는 직접 수정하면 안 되고, 새로운 객체를 만들어 사용해야 한다.
spread 연산자 (...) 를 사용해 기존 객체를 복사해 사용한다.

```javascript
//XXX
inputs[name] = value;

//OOO
setInputs({
  ...inputs,
  [name]: value,
});
```

이렇게 불변성을 지켜주어야만
리액트 컴포넌트에서 상태 업데이트를 감지할 수 있고, 이에 따라 리렌더링이 진행될 수 있다.
(setState()를 거치지 않고 기존 상태를 직접 수정하게 되면 값이 바뀌어도 리렌더링이 일어나지 않는다. )
컴포넌트 업데이트 성능을 최적화할 수 있다.
', 'React', 'useState', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (144, '# 클래스형 컴포넌트

- 클래스형 컴포넌트에는 render() 메소드가 꼭 있어야 한다.

- props를 조회할 때는 this.props로 접근해야 한다.

```javascript
import React, { Component } from ''react'';

class Hello extends Component {
  render() {
    const { color, name, isSpecial } = this.props;
```

- defaultProps 설정은 함수형 컴포넌트와 동일한 방식으로 할 수도 있고,
  클래스 내부에 static 키워드와 함께 선언할 수도 있다.

```javascript
class Hello extends Component {
  static defaultProps = {
    name: ''이름없음''
  };
...
}

Hello.defaultProps = {
  name: ''이름없음''
};
```

- 커스텀 메서드 만들기

```javascript
  class Counter extends Component {
  handleIncrease() {
  console.log(''increase'');
  }

  handleDecrease() {
  console.log(''decrease'');
  }
  //...
```

이렇게 클래스 내부에 종속된 함수를 메서드라고 부른다. 클래스에서 커스텀 메서드를 만들 때는 보통 이름을 handle..로 짓는다.

- 상태를 업데이트할 때에는 this.setState 라는 함수를 사용한다.  
  this는 컴포넌트 인스턴스를 가리키는데, 커스텀 메서드 안에서 this를 조회해보면 undefined가 나온다.  
  이를 해결하려면 constructor에서 bind를 해주거나, 화살표 함수를 사용한다.

```javascript
constructor(props) {
super(props);
this.handleIncrease = this.handleIncrease.bind(this);
this.handleDecrease = this.handleDecrease.bind(this);
}

handleIncrease = () => {
console.log(''increase'');
console.log(this);
};

handleDecrease = () => {
console.log(''decrease'');
};
```

화살표 함수는 CRA로 만든 프로젝트에는 적용이 되어 있는 문법(class-properties 문법)이기 때문에 바로 사용할 수 있고,
그렇지 않은 경우에는 추가적인 설정이 필요하다.

- 상태 선언하기 : 클래스형 컴포넌트에서 상태를 선언할 때는 constructor 내부에서 this.state를 설정해주면 된다.

```javascript
constructor(props) {
super(props);
this.state = {
counter: 0
};
}
```

클래스형 컴포넌트의 state 는 무조건 객체형태여야 한다.

class-properties 문법이 적용되어 있다면(ex: CRA로 만든 프로젝트) constructor를 사용하지 않고 다음과 같이 state를 설정할 수 있다.

```javascript
class Counter extends Component {
state = {
counter: 0
};
```

- 상태 업데이트 :

  - 클래스형 컴포넌트의 state에서도 불변성을 유지하며 업데이트를 해야 한다.
  - setState에서도 useState와 마찬가지로 함수형 업데이트를 할 수 있다. 함수형 업데이트는 보통 한 함수에서 setState를 여러 번에 걸쳐 해야 하는 경우에 유용하다.  
    setState는 단순히 상태를 바꾸는 함수가 아니라, 상태를 바꿔달라고 요청하는 함수이다. 성능 상의 이유로 상태가 바로 업데이트되지 않고 비동기적으로 업데이트되기 때문이다.  
    만약 상태 업데이트 후에 어떤 작업을 하고 싶다면, setState의 두 번째 파라미터에 콜백함수를 넣어주거나, 함수형 업데이트를 사용해야 한다.
', 'React', '클래스형 컴포넌트', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (145, '# LifeCycle Method (생명주기 메서드)

- LifeCycle Method : 컴포넌트가 브라우저 상에 나타나고, 업데이트되고, 사라질 때 호출되는 메서드들. (+컴포넌트에서 에러가 났을 때 호출되는 메서드도 있음)

- 라이프싸이클 메서드는 클래스형 컴포넌트에서만 사용할 수 있다.

## 마운트

- constructor : 컴포넌트 생성 시 가장 먼저 실행되는 메서드. 생성자 메서드.
- getDerivedStateFromProps : props로 받아온 값을 state에 넣어주고 싶을 때 사용하는 메서드.
- render : 컴포넌트를 렌더링하는 메서드.
- componentDidMount : 컴포넌트의 첫 번째 렌더링 종료 후에 호출되는 메서드. 이 메서드가 호출되는 시점에는 컴포넌트가 화면에 나타난 상태이다.  
  주로 DOM을 사용해야 하는 외부 라이브러리 연동이나, 해당 컴포넌트에서 필요로 하는 데이터 요청을 위한 axios, fetch 등 ajax 요청, 또는 DOM의 속성을 읽거나 직접 변경하는 작업을 한다.

## 업데이트

- getDerivedStateFromProps : 컴포넌트가 마운트될 때 뿐만 아니라 컴포넌트의 props나 state가 바뀌었을 때도 호출된다.
- shouldComponentUpdate : 컴포넌트의 리렌더링 여부를 결정하는 메서드. 주로 최적화할 때 사용.
  render
- getSnapshotBeforeUpdate : 컴포넌트에 변화가 일어나기 직전 DOM 상태를 가져와 반환하는 메서드. 다음으로 발생하는 componentDidUpdate 에서 받아와서 사용할 수 있다. (DOM에 변화가 반영되기 직전에 DOM 속성을 확인하고 싶을 때 사용)
- componentDidUpdate : 리렌더링이 끝나고 화면에 변화가 모두 반영된 후 호출되는 메서드. getSnapshotBeforeUpdate 에서 반환한 값을 조회할 수 있다.

## 언마운트

- componentWillUnmount : 컴포넌트가 화면에서 사라지기 직전에 호출된다.  
  주로 DOM에 등록했던 이벤트를 제거하고, setTimeout 등을 clear하거나,
  외부 라이브러리 인스턴스를 제거한다. (=해당 라이브러리에 dispose 기능이 있는 경우 호출하는 것)
', 'React', 'Life Cycle', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (146, '# 리액트 훅

- 리액트 훅(Hook)이란 컴포넌트에 기능을 추가할 때 사용하는 함수
  예를 들면, 컴포넌트에 상태값을 추가하거나 자식 요소에 접근하는 등의 기능을 추가하고 싶을 때 훅을 사용할 수 있다.
- 리액트 16.8 (2019년 2월)에 새로 추가된 기능이다.
- 그전에는 컴포넌트에 기능을 추가하고 싶을 때 클래스형 컴포넌트를 사용했었다. 그런데 이제 훅이 나오면서 클래스형 컴포넌트는 더 이상 사용을 안해도 된다.
- 클래스형 컴포넌트보다 리액트 훅이 장점이 많고 리액트 팀에서도 훅에 집중을 하고 있다. 그래서 새로 리액트 프로그램을 작성한다면 리액트 훅으로 작성하는 것을 추천한다.

## useState : 상태값 관리 Hook

```javascript
import React, { useState, useEffect } from "react";

export default function App() {
  const [count, setCount] = useState(0);

  function onClick() {
    setCount(count + 1);
    setCount(count + 1);
  }

  console.log("render called");

  return (
    <div>
      <h2>{count}</h2>
      <button onClick={onClick}>증가</button>
    </div>
  );
}
```

- useState함수는 초기값을 넣어서 호출한다
- useState함수는 배열을 반환하는데 첫번째 아이템은 상태값, 두번째 아이템은 상태값 변경 함수가 반환된다.
- 상태값 변경 함수는 비동기 이면서 배치(batch)로 처리된다.
- 리액트는 효율적으로 렌더링 하기 위해서 여러 개의 상태값 변경 요청을 배치로 처리한다.
- 따라서 onClick 함수가 호출되어도 setCount 는 두 번 작성하였지만 count 값은 1씩만 증가하고 console.log(''render called''); 로그는 한 번만 출력된다.
- 상태값 변경 요청을 왜 비동기 이면서 배치로 처리할까? 만약에 동기로 처리한다면 상태값 변경 함수가 호출될 때마다 화면을 다시 그리기 때문에 성능 이슈가 생길 수 있다.

### 해결 방법 - 상태값 변경 함수에 함수를 입력한다.

```javascript
import React, { useState, useEffect } from "react";

export default function App() {
  const [count, setCount] = useState(0);

  function onClick() {
    setCount((v) => v + 1);
    setCount((v) => v + 1);
  }

  console.log("render called");

  return (
    <div>
      <h2>{count}</h2>
      <button onClick={onClick}>증가</button>
    </div>
  );
}
```

- 함수로 입력하면 처리되기 직전의 상태값을 매개변수로 받기 때문에 원하는대로 동작한다.
- 여기서 onClick 이벤트 핸들러는 리액트 내부에서 관리되는 리액트 요소에 입력이 되어 있기 때문에 배치로 처리가 된다.
- 리액트 내부에서 관리하지 않는 외부에서 호출을 하는 경우에는 배치로 동작하지 않는다. 즉 그러한 경우에는 상태값 변경 함수를 호출할 때마다 렌더링이 발생한다.

## useEffect : 부수 효과 처리 Hook

부수 효과란 외부의 상태를 변경하는 것을 말한다.

- 서버 API호출, 이벤트 핸들러 등록/해제 등의 부수 효과를 처리할 때 사용한다.
- 컴포넌트 렌더링 중에 부수 효과를 발생 시키는 것은 프로그램의 복잡도를 크게 증가 시키고 유닛 테스트를 작성하기 힘들어지는 등 순수 함수가 가지는 여러 장점을 포기하는 것이다.

### useEffect Example

```javascript
...
export default function App() {
const [count, setCount] = useState(0);

    useEffect(() => {
        document.title = `업데이트 횟수: ${count}`;
    });

    return <button onClick={() => setCount(count + 1)}>increase</button>;
}
```

- useEffect 함수의 첫 번째 매개변수로 함수를 입력한다.
- 이 함수는 컴포넌트가 렌더링된 후에 호출이 된다.
- 렌더링 결과가 실제 돔에 반영되고나서 비동기로 호출이 되는 것이다.
- 이 첫 번째 매개변수 함수를 부수 효과 함수 라고 부른다
', 'React', 'Hook', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (147, '# 리덕스 (Redux)

리덕스는, 가장 사용률이 높은 상태관리 라이브러리이다.

리덕스를 사용하면, 여러분이 만들게 될 컴포넌트들의 상태 관련 로직들을 다른 파일들로 분리시켜서 더욱 효율적으로 관리 할 수 있다. 또한, 컴포넌트끼리 상태를 공유하게 될 때 여러 컴포넌트를 거치지 않고도 손쉽게 상태 값을 전달 할 수 있다.

추가적으로, 리덕스의 미들웨어라는 기능을 통하여 비동기 작업, 로깅 등의 확장적인 작업들을 더욱 쉽게 할 수도 있게 해준다.


## 액션 (Action)
상태에 어떠한 변화가 필요하게 될 땐, 우리는 액션이란 것을 발생시킵니다. 이는, 하나의 객체로 표현되는데, 액션 객체는 다음과 같은 형식으로 이뤄져있다.
```javascript
{
  type: "TOGGLE_VALUE"
}
```
액션 객체는 type 필드를 필수적으로 가지고 있어야하고 그 외의 값들은 개발자 마음대로 넣어줄 수 있다.

예시
```javascript
{
  type: "ADD_TODO",
  data: {
    id: 0,
    text: "리덕스 배우기"
  }
}
{
  type: "CHANGE_INPUT",
  text: "안ㄴ"
}
```

## 액션 생성함수 (Action Creator)
액션 생성함수는, 액션을 만드는 함수이다. 단순히 파라미터를 받아와서 액션 객체 형태로 만들어준다.

```javascript
function addTodo(data) {
  return {
    type: "ADD_TODO",
    data
  };
}

// 화살표 함수로도 만들 수 있습니다.
const changeInput = text => ({ 
  type: "CHANGE_INPUT",
  text
});
```

## 리듀서 (Reducer)

리듀서는 변화를 일으키는 함수로, 리듀서는 두가지의 파라미터를 받아온다.
```javascript
function reducer(state, action) {
  // 상태 업데이트 로직
  return alteredState;
}
```

리듀서는, 현재의 상태와, 전달 받은 액션을 참고하여 새로운 상태를 만들어서 반환한다.

## 스토어 (Store)
리덕스에서는 한 애플리케이션 당 하나의 스토어를 만들게 된다. 스토어 안에는, 현재의 앱 상태와, 리듀서가 들어가있고, 추가적으로 몇가지 내장 함수들이 있다.

## 디스패치 (dispatch)
디스패치는 스토어의 내장함수 중 하나로, 액션을 발생 시키는 것 이라고 이해하면된다. dispatch 라는 함수에는 액션을 파라미터로 전달한다.

그렇게 호출을 하면, 스토어는 리듀서 함수를 실행시켜서 해당 액션을 처리하는 로직이 있다면 액션을 참고하여 새로운 상태를 만들어준다.

## 구독 (subscribe)
구독 또한 스토어의 내장함수 중 하나이다. subscribe 함수는, 함수 형태의 값을 파라미터로 받아온다. subscribe 함수에 특정 함수를 전달해주면, 액션이 디스패치 되었을 때 마다 전달해준 함수가 호출된다.', 'React', 'Redux', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (151, '## Vue.js
- Evan You에 의해 만들어 짐.
- 사용자 인터페이스를 만들기 위해 사용하는 오픈 소스 Progressive Framework.

## Vue.js 특징
- 접근성
- 유연성
- 고성능

## MVVM Pattern
- Model + View + ViewModel.
- Model : 순수 자바스크립트 객체.
- View : 웹페이지의 DOM.
- ViewModel : Vue의 역할
기존에는 자바스크립트로 View에 해당하는 DOM에 접근하거나 수정하기 위해 jQuery와 같은 library 이용.
Vue는 view와 Model을 연결하고 자동으로 바인딩하므로 양방향 통신을 가능하게 함.
![](https://velog.velcdn.com/images/mraz0210/post/f56f1f56-60ab-4f87-bc23-7ca90468c4af/image.png)


## Vue 속성
- el : Vue가 적용될 요소 지정.
- data : Vue에서 사용되는 정보 저장. 객체 또는 함수 형태
- template : 화면에 표시할 HTML, CSS 등의 마크업 요소를 정의하는 속성. 뷰의 데이터 및 기타 속성들도 함께 화면에 그릴 수 있다.
- methods : 화면 로직 제어와 관계된 method를 정의하는 속성. 마우스 클릭 이벤트 처리와 같이 화면의 전반적인 이벤트와 화면 동작과 관련된 로직을 추가.
- created : 뷰 인스턴스가 생성되자마자 실행할 로직 정의.

## Vue Instance의 유효 범위.
- Vue Instance를 생성하면 HTML의 특정 범위 안에서만 옵션 속성들이 적용.
- el 속성과 밀접한 관계가 있다.
![](https://velog.velcdn.com/images/mraz0210/post/44c9d14f-c2be-4727-a1c9-9cb6547d0e67/image.png)

-------
## template - 보간법 (interpolation)
### 문자열
- 데이터 바인딩의 가장 기본 형태는 "Mustache" 구문(이중 중괄호)을 사용한 텍스트 보간.
`{{속성명}}`
- v-once 디렉티브를 사용하여 데이터 변경 시 업데이트 되지 않는 일회성 보간을 수행.
`v-once`

```html
<div id = "app">
  <div>{{message}}</div>
  <div v-once>{{message}}</div>
</div>
<script>
  new Vue({
  	el: ''#app'',
  	data: {
  		message: ''Hello Vue!''
  	}
  });
</script>
```
### 원시 HTML
- 이중 중괄호는 HTML이 아닌 일반 텍스트로 데이터를 해석
- 실제 HTML을 출력하려면 v-html 디렉티브를 사용
![](https://velog.velcdn.com/images/mraz0210/post/f3afa54a-9ab6-4d7a-b64b-2ec4aee46287/image.png)
![](https://velog.velcdn.com/images/mraz0210/post/e9b250bb-3b38-4606-84db-2a6502a97864/image.png)

### JavaScript 표현식 사용.
- Vue.js는 모든 데이터 바인딩 내에서 JavaScript 표현식의 모든 기능을 지원.
```html
{{ number + 1 }}
{{ ok ? ''YES'' : ''NO'' }}
{{ message.split('''').reverse().join('''') }}
<div v-bind:id="''list-'' + id"></div>
```

```html
<div id="app">
  <div>{{message + '' Vue~''}}</div>
  <div>{{num > 10 ? num * num : num + 100}}</div>
  <div>{{message.split("").reverse().join('''')}}</div>
  <div v-text = "message + '' Vue~''"></div>
  <div v-text = "num > 10 ? num * num : num + 100"></div>
  <div v-text = "message.split("").reverse().join('''')"></div>
</div>
<script>
  new Vue(){
  	el: ''#app'',
  	data:{
  		num: 5,
  		message: ''Hello''
  	}
  });
</script>

```
![](https://velog.velcdn.com/images/mraz0210/post/977d12f4-d632-47fc-b7b6-729bff14102d/image.png)

## template - Directive
### 디렉티브
- 디렉티브는 v-접두사가 있는 특수 속성.
- 디렉티브 속성 값은 단일 JavaScript 표현식이 된다.(v-for 제외)
- 디렉티브의 역할은 표현식의 값이 변경될 때, 사이드 이펙트를 반응적으로 DOM에 적용.
![](https://velog.velcdn.com/images/mraz0210/post/6b2b3577-dd96-4e21-a468-1fdc30229a4b/image.png)

- v-model : 양방향 바인딩 처리를 위해서 사용(form의 input, textarea)
`test07`
- v-bind : 엘리먼트의 속성과 바인딩 처리를 위해서 사용.
약어로 "`:`"로 사용 가능.
`test08`

- v-show : 조건에 따라 엘리먼트를 화면에 렌더링, Style의 display를 변경.
`test09`
- v-if, v-else-if, v-else : 조건에 따라 엘리먼트를 화면에 렌더링.
`test10`
![](https://velog.velcdn.com/images/mraz0210/post/f23305ed-32f5-4495-b506-ec7e3c256252/image.png)

- v-for : 배열이나 객체의 반복에 사용.
`<tag v-for="name in regions">`
`test12~14`

- template : 
여러 개의 태그들을 묶어서 처리해야 할 경우 template을 사용.
v-if, v-for, component 등과 많이 사용.
`test15`

- v-cloak :
Vue Instance가 준비될 때까지 mustache 바인딩을 숨기는데 사용.
[v-clock]{display:none}과 같은 CSS규칙과 함께 사용.
Vue Instance가 준비되면 v-cloak는 제거됨.
`test16`

-Vue method :
Vue Instance는 생성과 관련된 data 및 method의 정의 가능.
method 안에 data를 `this.데이터이름`으로 접근 가능.
![](https://velog.velcdn.com/images/mraz0210/post/d997d4a2-0cdd-4be6-a96d-68ee999f8d72/image.png)
![](https://velog.velcdn.com/images/mraz0210/post/94239d43-a2df-4012-8408-6d9c5cddf48e/image.png)
', 'Vue', 'VueJS', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (152, '## Vue Instance 속성

### Vue method
- Vue Instance는 생성과 관련된 data 및 method의 정의 가능.
- method 안에서 data를 "this.데이터명"으로 접근 가능.

`test17`
```html
<div id="app">
      <div>data : {{message}}</div>
      <div>method kor : {{helloKor()}}</div>
      <div>method eng : {{helloEng()}}</div>
    </div>
    <script>
      new Vue({
        el: ''#app'',
        data: {
          message: ''Hello 싸피'',
          name: ''안효인'',
        },
        methods: {
          helloEng() {
            return ''Hello '' + this.name;
          },
          helloKor() {
            return ''안녕 '' + this.name;
          },
        },
      });
    </script>
```
`test18`
```html
<script>
        let vm = new Vue({
            data: {
                count: 1
            },
            methods: {
                incCount() {
                    console.log("incCount 호출됨");
                    this.count++
                }
            }
        })
        vm.incCount();
        console.log(vm.count); // 2
    </script>
```

### Vue filter
- 뷰의 필터는 화면에 표시되는 텍스트의 형식을 쉽게 변환해주는 기능
- filter를 이용하여 표현식에 새로운 결과 형식을 적용
- 중괄호 보간법 `{{}}` 또는 `v-bind` 속성에서 사용 가능

`test19`
```html
<script>
    Vue.filter(''count1'', (val) => {
      if (val.length == 0) {
        return;
      }
      return `${val} : ${val.length}자`;
    });
    new Vue({
      el: ''#app'',
      data: {
        msg: '''',
      },
      filters: {
        count2(val, alternative) {
          if (val.length == 0) {
            return alternative;
          }
          return `${val} : ${val.length}자`;
        },
      },
    });
  </script>
```
`test20` 천 단위마다 `,` 찍기, 전화번호에 `-` 넣기.
```html
<script>
      Vue.filter(''price'', (value) => {
        if (!value) return value;
        return value.toString().replace(/\\B(?=(\\d{3})+(?!\\d))/g, '','');
      });
      Vue.filter(''mobile'', (value) => {
        if (!value || !(value.length === 10 || value.length === 11)) return value;
        return value.replace(/^(\\d{3})(\\d{3,4})(\\d{4})/g, ''$1-$2-$3'');
      });
      new Vue({
        el: ''#app'',
        data: {
          msg1: '''',
          msg2: '''',
        },
      });
    </script>
```

### Vue computed 속성
- 특정 데이터의 변경사항을 실시간으로 처리
- 캐싱을 이용하여 데이터의 변경이 없을 경우 캐싱된 데이터를 반환
- Setter와 Getter를 직적 지정할 수 있음 `test22`
- 작성은 method 형태롤 작성하지만, Vue에서 proxy 처리하여 property처럼 사용
`test21`
```html
<div id="app">
    <input type="text" v-model="message" />
    <p>원본 메시지: "{{ message }}"</p>
    <p>역순으로 표시한 메시지1: "{{ reversedMsg() }}"</p>
    <p>역순으로 표시한 메시지2: "{{ reversedMsg() }}"</p>
    <p>역순으로 표시한 메시지3: "{{ reversedMsg() }}"</p>
  </div>
  <script>
    var vm = new Vue({
      el: ''#app'',
      data: {
        message: ''안녕하세요 싸피여러분'',
      },
      methods: {
        reversedMsg: function () {
          console.log(''거꾸로 찍기'');
          return this.message.split('''').reverse().join('''');
        },
      },
    });
  </script>
```

### Vue watch 속성
- Vue Instance의 특정 property가 변경될 때, 실행할 콜백 함수 설정

`test23`
```html
<div id="app">
    <div>
      <input type="text" v-model="a" />
    </div>
  </div>
  <script>
    var vm = new Vue({
      el: ''#app'',
      data: {
        a: 1,
      },
      watch: {
        a: function (val, oldVal) {
          console.log(''new: %s, old: %s'', val, oldVal);
        },
      },
    });
    console.log(vm.a);
    vm.a = 2; // => new: 2, old: 1
    console.log(vm.a);
  </script>
```
- Computed는 종속된 data가 변경되었을 경우, 그 data를 다시 계산하여 캐싱한다.
- Watch의 경우 data가 변경되었을 경우, 다른 data를 변경하는 작업을 한다.
`test24`
```html
<div id="app">
      <p>원본 메시지: "{{ message }}"</p>
      <p>역순으로 표시한 메시지: "{{ reversedMsg }}"</p>
      <input type="text" v-model="message" />
    </div>
    <script>
      const app = new Vue({
        el: ''#app'',
        data: {
          message: ''Hello'',
          reversedMsg: '''',
        },
        watch: {
          message: function (newVal, oldVal) {
            console.log(newVal, oldVal);
            this.reversedMsg = newVal.split('''').reverse().join('''');
          },
        },
      });
    </script>
```', 'Vue', 'CSS', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (153, 'test### Vue event
- Dom Event를 청취하기 위해 `v-on` directive 사용
- inline event handling
- method를 이용한 event handling

### Vue event 청취 : `v-on`
- v-on directive를 사용하여 DOM 이벤트를 듣고 트리거 될 때, JavaScript를 실행할 수 있다.

`test25`
```html
<div id="app">
      <button v-on:click="counter += 1">클릭</button>
      <p>위 버튼을 클릭한 횟수는 {{counter}} 번 입니다.</p>
    </div>
    <script>
      new Vue({
        el: ''#app'',
        data: {
          counter: 0,
        },
      });
    </script>
```

### method event handler
- 이벤트 발생 시 처리 로직을 v-on에 넣기 힘들다. 이 때문에 v-on에서는 이벤트 발생시 처리해야 하는 method의 이름을 받아 처리한다.

`test26`
```html
<div id="app">
    <button v-on:click="greet">Greet</button>
  </div>
  <script>
    var vm = new Vue({
      el: ''#app'',
      data: {
        name: ''SSAFY'',
      },
      methods: {
        greet: function (event) {
          alert(''Hello '' + this.name + ''!'');
          console.dir(event.target);
        },
      },
    });

      // 또한 JavaScript를 이용해서 메소드를 호출할 수 있습니다.
      //vm.greet(); // => ''Hello Vue.js!''
  </script>
```

### Inline method handler
- 메소드 이름을 직접 바인딩하는 대신 인라인 JavaScript 구문에 메소드를 사용할 수도 있다.
- 원본 DOM 이벤트에 액세스해야 하는 경우, 특별한 $event 변수를 사용해 메소드에 전달할 수도 있다.

`test27`
```html
<div id="app">
      <form action="http://www.naver.com">
        <button v-on:click="greet1(''SSAFY'')">Greet</button>
        <button v-on:click="greet2($event, ''Ssafy'')">Greet</button>
      </form>
    </div>
    <script>
      new Vue({
        el: ''#app'',
        methods: {
          greet1: function (msg) {
            alert(''Hello '' + msg + ''!'');
            console.dir(event.target);
          },
          greet2: function (e, msg) {
            if (e) e.preventDefault();
            alert(''Hello '' + msg + ''!'');
            console.dir(e.target);
          },
        },
      });
    </script>
```

### 이벤트 수식어 (Event Modifier)
- `test27`에서의 event.preventDefault()와 같이 method 내에서 작업을 할 수도 있지만, method는 DOM의 이벤트를 처리하는 것보다 data 처리를 위한 로직만 작업하는 것이 좋다.
- 이 문제를 해결하기 위해, Vue는 v-on 이벤트에 이벤트 수식어를 제공한다.
- 수식어는 `.`으로 표시된 접미사이다.

`test28`
```html
<div id="app">
      <h2>페이지 이동</h2>

      <a href="test29.html" @click="sendMsg1">페이지 이동 막기1</a><br />
      <a href="test29.html" @click="sendMsg2">페이지 이동 막기2</a><br />
      <a href="test29.html" @click.prevent="sendMsg1">페이지 이동 막기3</a><br />
    </div>
    <script>
      new Vue({
        el: ''#app'',
        methods: {
          sendMsg1() {
            alert(''이동할까요?'');
          },
          sendMsg2(e) {
            e.preventDefault();
            alert(''이동막기'');
          },
        },
      });
    </script>
```

### 키 수식어 (Key Modifier)
- Vue는 키 이벤트를 수신할 때, v-on에 대한 키 수식어를 추가할 수 있다.
![](https://velog.velcdn.com/images/mraz0210/post/1afd740c-e25b-4dc6-b838-be5a4d4074f5/image.png)

`test29`
```html
<div id="app">
    아이디 :<br>
    <input placeholder="검색할 아이디를 입력하세요" v-model="id" @keyup="sendId" /><br>
    <input placeholder="검색할 아이디를 입력하세요" v-model="id" @keyup.enter="sendId" /><br>
    <input placeholder="검색할 아이디를 입력하세요" v-model="id" @keyup.13="sendId" /><br>
    <button @click.once="sendId">검색</button>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        id: '''',
      },
      methods: {
        sendId() {
          alert(this.id);
        },
      },
    });
  </script>
```

### ref, $refs
- 뷰에서는 $refs 속성을 이용해 DOM에 접근할 수 있다.
- 단, 뷰의 가장 중요한 목적 중 하나는 개발자가 DOM을 다루지 않게 하는 것이므로, 되도록 ref를 사용하는 것을 피하는 것이 좋다.

`test30`
```html
 <div id="app">
    <h2>엘리먼트 참조하기</h2>
    <!-- 아이디 : <input type="text" v-model="id"> -->
    아이디 : <input type="text" v-model="id" ref="id" @keyup="idCheck" />
    <button @click="idCheck">아이디 중복 체크</button>
    <div v-bind:class="{success : isSuccess, fail : isFail}" v-bind:style="myStyle" v-html="msg"></div>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        id: '''',
        msg: '''',
        isSuccess: false,
        isFail: false,
        myStyle: {
          fontSize: ''25px'',
        },
      },
      methods: {
        idCheck() {
          if (this.id.length < 5 || this.id.length > 12) {
            this.msg = `아이디는 5자이상 12자리 이하입니다.`;
            this.$refs.id.focus();
            console.dir(this.$refs.id);
            this.isSuccess = false;
            this.isFail = false;
            return;
          } else {
            if (this.id === ''ssafy'') {
              this.msg = `<b>${this.id}</b>는 사용할 수 없습니다.`;
              this.isSuccess = false;
              this.isFail = true;
            } else {
              this.msg = `<b>${this.id}</b>는 사용할 수 있습니다.`;
              this.isSuccess = true;
              this.isFail = false;
            }
          }
          console.log(this.$refs.id.value);
        },
      },
    });
  </script>
```

## CSS class binding

### Class binding
- element의 class와 style을 변경.
- v-bind : class는 조건에 따라 class를 적용할 수 있다.

`test31`
```html
<div id="app">
    <div v-bind:class="{ active: isActive }">VueCSS적용</div>
    <button v-on:click="toggle">VueCSS</button>
  </div>
  <script type="text/javascript">
    new Vue({
      el: ''#app'',
      data: {
        isActive: false,
      },
      methods: {
        toggle: function () {
          this.isActive = !this.isActive;
        },
      },
    });
  </script>
```
`test32`
```html
<div id="app">
      <ul>
        <li :class="{completed: todo.done}" :style="myStyle" v-for="todo in todos">
          {{todo.msg}}
          <button @click="complete(todo)" class="btn">완료</button>
        </li>
      </ul>
    </div>
    <script>
      new Vue({
        el: ''#app'',
        data: {
          todos: [
            {
              msg: ''5시간 잠자기'',
              done: false,
            },
            {
              msg: ''알고리즘 1시간 공부하기'',
              done: false,
            },
            {
              msg: ''Vue 1시간 공부하기'',
              done: false,
            },
          ],
          myStyle: {
            fontSize: ''20px'',
          },
        },
        methods: {
          complete: function (todo) {
            todo.msg = todo.msg + ''완료'';
            todo.done = !todo.done;
          },
        },
      });
    </script>
```

## Form Input Binding

- `v-model` directive를 사용하여 폼 input과 textarea element에 양방향 데이터 바인딩을 생성할 수 있다. 
    - text와 textarea 태그는 value속성과 input 이벤트를 사용한다.
    - 체크박스들과 라디오 버튼들은 checked 속성과 change 이벤트를 사용한다.
    - Select 태그는 value를 prop으로, change를 이벤트로 사용한다.
    
### form - text, textarea
![](https://velog.velcdn.com/images/mraz0210/post/ba402b36-42c5-442b-abd2-53d68f3aff09/image.png)
`test33`
```html
<div id="app">
    <div>
      아이디 :
      <input v-model.trim="id" placeholder="아이디를 입력하세요" />
      <!-- v-model은 기본적으로 모든 key stroke가 발생할 때마다 값을 업데이트 시킨다.
           .lazy 수식어를 추가하여 change 이벤트 이후에 동기화 할 수 있습니다. -->
      <input v-model.lazy="id" placeholder="아이디를 입력하세요" />
    </div>
    <div>
      메세지 :
      <textarea v-model="message" placeholder="내용을 입력하세요"></textarea>
    </div>
    <p>{{ id }} 님에게 보내는 메세지 : {{ message }}</p>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        id: '''',
        message: '''',
      },
    });
  </script>
```

### form - checkbox
- 하나의 체크박스는 단일 boolean 값을 갖는다.
```html
<input type="checkbox" id="checkbox" v-model="checked">
<label for="checkbox">{{checked}} </label>
```

`test34`
```html
<div id="app">
    <div>
      <p>
        이메일 수신
        <input type="checkbox" id="emailYN" v-model="email" />
        <label for="emailYN">{{ email }}</label>
      </p>
    </div>
    <div>
      <p>
        SMS 수신
        <input type="checkbox" id="smsYN" v-model="sms" true-value="Y" false-value="N" />
        <label for="smsYN">{{ sms }}</label>
      </p>
    </div>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        email: false,
        sms: ''Y'',
      },
    });
  </script>
```

- 여러 개의 체크박스는 같은 배열을 바인딩 할 수 있다.
- 배열의 값과 checkbox의 value 속성이 같을 경우, 체크 처리됨.

`test35`
```html
<div id="app">
    <div>당신이 가고 싶은 지역을 선택하시오</div>
    <input type="checkbox" id="buk" value="부울경" v-model="checkedAreas" />
    <label for="buk">부울경</label>
    <input type="checkbox" id="gwangju" value="광주" v-model="checkedAreas" />
    <label for="gwangju">광주</label>
    <input type="checkbox" id="gumi" value="구미" v-model="checkedAreas" />
    <label for="gumi">구미</label>
    <input type="checkbox" id="daejeon" value="대전" v-model="checkedAreas" />
    <label for="daejeon">대전</label>
    <input type="checkbox" id="seoul" value="서울" v-model="checkedAreas" />
    <label for="seoul">서울</label>
    <br />
    <span>체크한 이름: {{ checkedAreas }}</span>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        checkedAreas: [],
      },
    });
  </script>
```

### form - radio
- radio의 경우, 선택된 항목의 value 속성의 값을 관리.
```html
<input type="radio" id="one" value="One" v-model="picked">
<label for="one">One</label>
<br>
<input type="radio" id="two" value="Two" v-model="picked">
<label for="two">Two</label>
<br>
<span>t선택 : {{ picked }} </span>
```

`test36`
```html
<div id="app">
    <div>수업을 듣는 지역을 선택하시오</div>
    <div>
      <input type="radio" id="buk" value="부울경" v-model="ckArea" />
      <label for="buk">부울경</label>
      <input type="radio" id="gwangju" value="광주" v-model="ckArea" />
      <label for="gwangju">광주</label>
      <input type="radio" id="gumi" value="구미" v-model="ckArea" />
      <label for="gumi">구미</label>
      <input type="radio" id="daejeon" value="대전" v-model="ckArea" />
      <label for="daejeon">대전</label>
      <input type="radio" id="seoul" value="서울" v-model="ckArea" />
      <label for="seoul">서울</label>
    </div>
    <span>선택한 지역 : {{ ckArea }}</span>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        ckArea: ''광주'',
      },
    });
  </script>
```

### form - select
- select box일 경우, 선택된 항목의 value 속성의 값을 관리.
- `v-model` 표현식의 초기 값이 어떤 옵션에도 없으면, `<select>` element는 "선택 없음" 상태로 랜더링된다.

`test37`
```html
<div id="app">
    <div>
      <p>수업을 듣는 지역을 선택하시오</p>
      <select v-model="selectedArea">
        <option disabled value="">선택하세요</option>
        <option value="buk">부울경</option>
        <option value="gwangju">광주</option>
        <option value="gumi">구미</option>
        <option value="daejeon">대전</option>
        <option value="seoul">서울</option>
      </select>
    </div>
    <span>선택한 지역 : {{ selectedArea }}</span><br />
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        selectedArea: '''',
      },
    });
  </script>
```

`test38`
```html
<div id="app">
    <div>
      <p>수업을 듣고자하는 지역을 선택하시오(다중가능)</p>
      <select v-model="selectedArea" multiple>
        <option disabled value="">선택하세요</option>
        <option value="buk">부울경</option>
        <option value="gwangju">광주</option>
        <option value="gumi">구미</option>
        <option value="daejeon">대전</option>
        <option value="seoul">서울</option>
      </select>
    </div>
    <span>선택한 지역 : {{ selectedArea }}</span>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        selectedArea: [],
      },
    });
  </script>
```

v-for를 이용한 동적 option 렌더링.

`test39`
```html
<div id="app">
    <div>
      <select>
        <option value="1">1</option>
        <option value="2" selected>2</option>
        <option value="3">3</option>
      </select>
      <p>수업을 듣는 지역을 선택하시오</p>
      <select v-model="selectedArea">
        <option v-for="option in options" v-bind:value="option.value">{{ option.text }}</option>
      </select>
    </div>
    <span>선택한 지역 : {{ selectedArea }}</span>
  </div>
  <script>
    new Vue({
      el: ''#app'',
      data: {
        selectedArea: '''',
        options: [
          { text: ''서울'', value: ''seoul'' },
          { text: ''광주'', value: ''gwangju'' },
          { text: ''대전'', value: ''daejeon'' },
          { text: ''구미'', value: ''gumi'' },
          { text: ''부울경'', value: ''buk'' },
        ],
      },
      created() {
        param = ''gwangju'';
        this.selectedArea = param;
      },
    });
  </script>
```

### form - 수식어 (Modifiers)
- .lazy : .lazy 수식어를 추가하여 change 이벤트 이후에 동기화 할 수 있습니다.
```html
<input v-model.lazy="msg">
```

- .number : 사용자 입력이 자동으로 숫자로 형 변환되기를 원하면, v-model이 관리하는 input에 number 수식어를 추가하면 된다.
```html
<input v-model.number="age" type="number">
```

- .trim : v-model이 관리하는 input을 자동으로 trim하기 원하면, trim 수정자를 추가하면 된다.
```html
<input v-model.trim="msg">
```', 'Vue', 'Event', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (154, '## Component
### Component
- Vue의 가장 강력한 기능 중 하나.
- HTML Element를 확장하여 재사용 가능한 코드를 캡슐화.
- Vue Component는 Vue Instance이기도 하기 때문에 모든 옵션 객체를 사용.
- Life Cycle Hook 사용 가능.
- 전역 컴포넌트와 지역 컴포넌트.
![](https://velog.velcdn.com/images/mraz0210/post/50232537-b891-45d9-ab5d-4e841253d84f/image.png)

### 전역 컴포넌트 등록
- 전역 컴포넌트를 등록하려면, Vue.component(tagName, options)를 사용.
- 권장하는 컴포넌트 이름 : 케밥 표기법 (전부 소문자, -) 이름 표기법 참조, Style Guide(명명 규칙)

`test01`
```html
<div id="app1">

  </div>
  <div id="app2">

  </div>
  <script>
    // 전역 컴포넌트 설정
    new Vue({
      el: ''#app1'',
    });
    new Vue({
      el: ''#app2'',
    });
  </script>
```

### 지역 컴포넌트 등록
- 컴포넌트를 `components` 인스턴스 옵션으로 등록함으로써 다른 인스턴스/컴포넌트의 범위에서만 사용할 수 있는 컴포넌트를 만들 수 있다.

`test02`
```html
<div id="app1">
    <my-local></my-local>
    <my-local></my-local>
  </div>
  <div id="app2">
    <my-local></my-local>
    <my-local></my-local>
  </div>
  <script>
    new Vue({
      el: ''#app1'',
      // 지역 컴포넌트 설정
    });
    new Vue({
      el: ''#app2'',
    });
  </script>
```
### 컴포넌트 템플릿
`test03`
```html
<div id="app">
    <my-comp></my-comp>
  </div>
  <!-- template 설정 -->
  <script>
    Vue.component(''MyComp'', {
      template: ''#MyComp'',
      data() {
        return {
          msg: ''hello component'',
        };
      },
    });

    new Vue({
      el: ''#app'',
    });
  </script>
```

### 컴포넌트 data 공유
`test04` 문제점.
```html
<div id="app">
    <count-view></count-view>
    <count-view></count-view>
    <count-view></count-view>
  </div>
  <template id="CountView">
    <div>
      <span>{{ count }}</span>
      <button @click="count++">클릭</button>
    </div>
  </template>
  <script>
    let num = {
      count: 0,
    };
    Vue.component(''countView'', {
      data() {
        return num;
      },
      template: ''#CountView'',
    });
    new Vue({
      el: ''#app'',
    });
  </script>
```

`test05` 해결법.
```html
<h2>컴포넌트 데이터 공유 문제 해결</h2>
    <div id="app">
      <count-view></count-view>
      <count-view></count-view>
      <count-view></count-view>
    </div>
    <template id="CountView">
      <div>
        <span>{{ count }}</span>
        <button @click="count++">클릭</button>
      </div>
    </template>
    <script>
      Vue.component(''CountView'', {
        template: ''#CountView'',
        data() {
          return {
            count: 0,
          };
        },
      });
      new Vue({
        el: ''#app'',
      });
    </script>
```

## Component 간 통신
### 컴포넌트 간 통신
- 상위(부모) - 하위(자식) 컴포넌트 간의 data 전달 방법.
- 부모에서 자식 : props라는 특별한 속성을 전달. (Pass Props)
- 자식에서 부모 : event로만 전달 가능. (Emit Event)

### 상위에서 하위 컴포넌트로 data 전달.
- 하위 컴포넌트는 상위 컴포넌트의 값을 직접 참조 불가.
- data와 마찬가지로 props 속성의 값을 template에서 사용 가능.

### literal props

`test06`
```html
<div id="app">
    <h2>props test</h2>

  </div>
  <script>
    //하위 컴포넌트

    new Vue({
      el: ''#app'',
    });
  </script>
```

### 렌더링 과정
1. `new Vue()`로 상위 컴포넌트인 인스턴스를 하나 생성.
2. `Vue.component()`를 이용하여 하위 컴포넌트인 child-component를 생성.
3. `<div id="app">` 내부에 `<chile-component>`가 있기 때문에 하위 컴포넌트가 된다. 처음 생성한 인스턴스 객체가 #app의 요소를 가지기 때문에 부모와 자식 관계가 성립된다.
4. 하위 컴포넌트에 props 속성을 정의한다. [''propsdata'']
5. html에 컴포넌트 태그(child-component)를 추가한다.
6. 하위 컴포넌트에 `v-bind` 속성을 사용하면 상위 컴포넌트의 data의 key에 접근이 가능하다. (message)
7. 상위 컴포넌트의 message 속성 값인 String 값이 하위 컴포넌트의 propsdata로 전달된다.
8. 하위 컴포넌트의 template 속성에 정의된 `''<span>{{propsdata}}</span>''`에게 전달된다.

### 동적 props
- `v-bind`를 사용하여 부모의 데이터에 props를 동적으로 바인딩 할 수 있다.
- 데이터가 상위에서 업데이트 될 때마다 하위 데이터로도 전달된다.

![](https://velog.velcdn.com/images/mraz0210/post/deda2d64-96d5-4e2a-ab95-c99a03ac88fb/image.png)

`test07-1`
```html
<div id="app">
    <child-comp area="부울경" v-bind:msg="msg[parseInt(Math.random() * 5)]"></child-comp>
    <child-comp area="광주" v-bind:msg="msg[parseInt(Math.random() * 5)]"></child-comp>
    <child-comp area="구미" v-bind:msg="msg[parseInt(Math.random() * 5)]"></child-comp>
    <child-comp area="대전" v-bind:msg="msg[parseInt(Math.random() * 5)]"></child-comp>
    <child-comp area="서울" v-bind:msg="msg[parseInt(Math.random() * 5)]"></child-comp>
  </div>
  <template id="ChildComp">
    <div>
      <h2>SSAFY {{area}}지역 7기 {{msg}}</h2>
    </div>
  </template>
  <script>
    Vue.component(''childComp'', {
      props: [''area'', ''msg''],
      template: ''#ChildComp'',
    });
    new Vue({
      el: ''#app'',
      data: {
        msg: [''굿^^'', ''최고!!'', ''실화냐?'', ''좋아요*'', ''짱!!''],
      },
    });
  </script>
```

`test07-2`
```html
<div id="app">
    <child-comp v-for="(area, i) in areas" :key="i" :area="area" v-bind:msg="msg[parseInt(Math.random() * 5)]">
    </child-comp>
  </div>
  <template id="ChildComp">
    <div>
      <h2>SSAFY {{area}}지역 7기 {{msg}}</h2>
    </div>
  </template>
  <script>
    Vue.component(''childComp'', {
      props: {
        ''area'': String,
        ''msg'': {
          type: String, require: true
        }
      },
      template: ''#ChildComp'',
    });
    new Vue({
      el: ''#app'',
      data: {
        areas: [''부울경'', ''광주'', ''구미'', ''대전'', ''서울''],
        msg: [''굿^^'', ''최고!!'', ''실화냐?'', ''좋아요*'', ''짱!!''],
      },
    });
  </script>
```

### 객체의 속성 전달 props
- 오브젝트의 모든 속성을 전달할 경우, `v-bind:prop-name` 대신 `v-bind` 만 작성함으로써 모든 속성을 prop으로 전달할 수 있다.

`test08`
```html
<h2>컴포넌트 객체 데이터 전달</h2>
  <div id="app">

  </div>

  <script>

    new Vue({
      el: ''#app'',
      data() {
        return {
          user: {
            name: ''홍길동'',
            age: 22,
            email: ''hong@ssafy.com'',
          },
        };
      },
    });
  </script>
```

### 사용자 정의 이벤트
- 이벤트 이름
  - 컴포넌트 및 props와는 달리, 이벤트는 자동 대소문자 변환을 제공하지 않는다.
  - 대소문자를 혼용하는 대신에 emit할 정확한 이벤트 이름을 작성하는 것을 권장.
  - `v-on` 이벤트 리스너는 항상 자동으로 소문자 변환되기 때문에 이벤트 이름은 kebab-case를 사용하는 것이 권장됨.
  
![](https://velog.velcdn.com/images/mraz0210/post/484b8073-6403-4572-88a4-de4e7ba26eb9/image.png)

`test09`
```html
<h2>사용자 정의 이벤트</h2>
    <div id="app">
      <button v-on:click="doAction">메세지전송</button>
      <h2>{{message}}</h2>
    </div>
    <script>
      new Vue({
        el: ''#app'',
        data: {
          message: '''',
        },
        methods: {
          doAction() {
            this.$emit(''sendMsg'', ''안녕하세요 여러분'');
          },
        },
        created() {
          this.$on(''sendMsg'', (msg) => {
            alert(msg);
            this.message = msg;
          });
        },
      });
    </script>
```

### 하위에서 상위 컴포넌트로 event 전달.
- 하위 컴포넌트에서 상위 컴포넌트가 지정한 이벤트를 발생 ($emit)
- 상위 컴포넌트는 하위 컴포넌트가 발생한 이벤트를 수신하여 data 처리

`test10`
```html
<div id="app">
    <h4>당신이 좋아하는 파트를 선택하세요</h4>
    <h2>총 투표수 : {{ total }}</h2>
    <subject v-on:add-total-count="addTotalCount" title="코딩"></subject>
    <subject v-on:add-total-count="addTotalCount" title="알고리즘"></subject>
  </div>
  <script>
    Vue.component(''Subject'', {
      template: ''<button v-on:click="addCount">{{title}} - {{ count }}</button>'',
      //props 설정
      data: function () {
        return {
          count: 0,
        };
      },
      methods: {
        addCount: function () {
          this.count += 1;
          // 부모 v-on:이름 에 해당하는 이름의 이벤트를 호출

        },
      },
    });

    new Vue({
      el: ''#app'',
      data: {
        total: 0,
      },
      methods: {
        addTotalCount: function () {
          this.total += 1;
        },
      },
    });
  </script>
```

### 비 상하위간 통신
- 비어있는 Vue Instance 객체를 Event Bus로 사용.
- 복잡해질 경우, 상태관리 라이브러리인 Vuex 사용 권장.

`test11`

```html
<div id="app">
    <my-count></my-count>
    <log></log>
  </div>
  <template id="myCount">
    <div>
      <input type="text" v-model.number="count" @keyup.enter="send" />
      <button @click="send">보내기</button>
    </div>
  </template>
  <template id="log">
    <div>
      <h2>{{count}}</h2>
      <ul>
        <li v-for="msg in list">{{msg}}</li>
      </ul>
    </div>
  </template>
  <script>
    const bus = new Vue();
    Vue.component(''myCount'', {
      template: ''#myCount'',
      data() {
        return {
          count: 0,
        };
      },
      methods: {
        send() {
          bus.$emit(''updateLog'', this.count);
          this.count = '''';
        },
      },
    });

    Vue.component(''Log'', {
      template: ''#log'',
      data() {
        return {
          count: 0,
          list: [],
        };
      },
      methods: {
        updateLog(data) {
          this.count += data;
          this.list.push(`${data}을 받았습니다.`);
        },
      },
      created: function () {
        bus.$on(''updateLog'', this.updateLog);
      },
    });

    new Vue({
      el: ''#app'',
    });
  </script>
```', 'Vue', 'Component', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (155, '## Axios
### HTTP 통신 : axios
- Vue에서 권고하는 HTTP 통신 라이브러리는 Axios이다.
- Promise 기반의 HTTP 통신 라이브러리이며 상대적으로 다른 HTTP 통신 라이브러리들에 비해 문서화가 잘 되어있고, API가 다양하다.
- axios.get(URL) << Promise 객체를 return >> then, catch 사용가능
- https://github.com/axios/axios

`
Promise란 서버에 데이터를 요청하여 받아오는 동작과 같은 비동기 로직 처리에 유용한 자바스크립트 라이브러리이다. 자바스크립트는 단일 스레드로 코드를 처리하기 때문에 특정 로직의 처리가 끝날 때까지 기다려 주지 않는다. 따라서 데이터를 요청하고 받아올 때까지 기다렸다가 화면에 나타나는 로직을 실행해야 할 때 주로 Promise를 활용한다. 그리고 데이터를 받아왔을 때, Promise로 데이터를 화면에 표시하거나 연산을 수행하는 등 특정 로직을 수행한다.
`

### Axios 설치
- CDN 방식
  - ```html
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    ```
- NPM 방식
  - npm install axios
  
![](https://velog.velcdn.com/images/mraz0210/post/315557ee-966b-4140-8116-e261b6932b99/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/a123e612-9460-4219-bc6b-722391232712/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/f8ac0d60-65c0-4473-afb6-50a254a67ff6/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/987eace1-8c4f-4aa8-b87c-d5d62faac8e3/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/3752709b-906e-40d1-8013-f44e5241ccf4/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/be9530ac-eabe-41b7-adf8-455be80d950d/image.png)


## Vue-router
### Vue-router
- 라우팅 : 웹 페이지 간의 이동 방법.
- Vue.js의 공식 라우터.
- 라우터는 컴포넌트와 매핑.
- Vue를 이용한 SPA를 제작할 때 유용.
- URL에 따라 컴포넌트를 연결하고 설정된 컴포넌트를 보여준다.
`https://router.vuejs.org/kr`

### Vue-router 설치
- CDN 방식
  - `<script src= "https://cdn.jsdelivr.net/npm/vue/dist/vue.js></script>"`
  - <script src="https://unpkg.com/vue-router/dist/vue-router.js"></script>
  
- NPM 방식
  - npm install vue-router
  
### Vue-router 연결
- ''routes'' 옵션과 함께 router instance 생성.
`router01`
```html
<script>
      // 라우트 컴포넌트
      const Main = {
        template: "<div>메인 페이지</div>",
      };
      const Board = {
        template: "<div>자유 게시판</div>",
      };
      const QnA = {
        template: "<div>질문 게시판</div>",
      };
      const Gallery = {
        template: "<div>갤러리 게시판</div>",
      };

      // 라우터 객체 생성
      const router = new VueRouter({
        routes: [
          {
            path: "/",
            component: Main,
          },
          {
            path: "/board",
            component: Board,
          },
          {
            path: "/qna",
            component: QnA,
          },
          {
            path: "/gallery",
            component: Gallery,
          },
        ],
      });

      // Vue 인스턴트 라우터 주입
      const app = new Vue({
        el: "#app",
        router,
      });
    </script>
```
  
### vue-router 이동 및 렌더링.
- 네비게이션을 위해 router-link 컴포넌트를 사용.
- 속성은 ''to'' prop를 사용.
- 기본적으로 `<router-link>`는 `<a>` 태그로 렌더링.

`router02`, `router03` 참조.

### 이름을 가지는 라우트.
- 라우트는 연결하거나 탐색을 수행할 때, 이름이 있는 라우트를 사용.
- Router Instance를 생성하는 동안 routes 옵션에 지정.
`router04` 참조.

### 프로그래밍 방식 라우터. 
- `<router-link>`를 사용하여 선언적 네비게이션용 anchor 태그를 만드는 것 외에도 라우터의 instance method를 사용하여 프로그래밍으로 수행.
```java
$router.push(''home'')
$router.push({ path: ''home''})
$router.push({ name: ''boardview'', params: { no: 3}})
$router.push({ path: ''/board'', query: {pg: 1}})
```

`router05` 참조

### 중첩된 라우트.
- 앱 UI는 일반적으로 여러 단계로 중첩된 컴포넌트  구조임.
- URL의 세그먼트가 중첩된 컴포넌트의 특정 구조와 일치하는 것을 활용.

![](https://velog.velcdn.com/images/mraz0210/post/74358aa8-4b66-4e41-b198-1b0684a17c36/image.png)

`router06` 참조

### 라우트 리다이렉트.

```java
const router = new VueRouter({
  mode: ''history'',
  routes: [
    ...,
    {
      path: ''/board'',
      name: ''board'',
      component: Board,
      redirect: ''/board/list'',  // or redirect: {name: ''list''}
      children: [
        ...,
      ],
    },
  ],
});
```', 'Vue', 'Axios,Vue- router', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (156, '## Nodejs 설치 및 NPM
### @vue/cli 실행환경 구축
- NodeJS 설치 - LTS 버전(NPM 같이 설치됨)
- NPM을 이용한 @vue/cli 설치.

### NodeJS 설치
- https://nodejs.org/ko/ : 각 운영체제에 맞는 LTS 버전 다운로드
![](https://velog.velcdn.com/images/mraz0210/post/cbb824b9-acca-4c08-a820-4e057f0163fe/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/14eef1d7-66c5-4fb2-9d60-d180b03a664d/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/bd2d2092-5510-4ed2-ae17-b7fd1ffce39a/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/f2a31870-24f1-4816-832c-66d3ae6fbcc8/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/e2a8dd0b-5f90-4b63-9e0f-2cd185bdd5c1/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/f1a90d99-df23-4b61-a8ff-0ffc5ab4e36a/image.png)

### NPM
- Node Package Manager
- Command에서 써드파티 모듈을설치하고 관리하는 툴
- 모듈(패키지) 검색 : https://www.npmjs.com/

### NPM 명령어
- `npm init` : 새로운 프로젝트나 패키지를 만들 때 사용 (package.json이 생성됨)
- `npm install package` : 생성되는 위치에서만 사용가능한 패키지로 설치
- `npm install -g package` : 글로벌 패키지에 추가. 모든 프로젝트에서 사용가능한 패키지로 설치.

### NPM 패키지 생성

![](https://velog.velcdn.com/images/mraz0210/post/802f2de5-55e6-4005-9e55-4e5f8cd44222/image.png)

- vue-work\\package.json 파일 생성 확인

![](https://velog.velcdn.com/images/mraz0210/post/4bcb132f-db87-4110-98ba-8de8ec707a01/image.png)

### 생성된 패키지에 모듈 설치

- 모듈 설치하기 (prompt-sync)
- https://www.npmjs.com/ 에서 검색

![](https://velog.velcdn.com/images/mraz0210/post/b38eb4be-cd1e-4289-b536-3bd8426025b8/image.png)

- 모듈 설치 : `npm i prompt-sync`
- 모듈 설치 후 node_modules 폴더 생성 확인 >> package.json에 모듈 추가 반영 확인

### 다운 받은 모듈 동작 확인

- VSCode에서 vue-work 폴더 열기
- module-test.js 파일 생성 후 코드 작성
![](https://velog.velcdn.com/images/mraz0210/post/855bf48f-f9aa-4901-af4a-6509c63be79b/image.png)
- VSCode에서 터미널 창 열기
![](https://velog.velcdn.com/images/mraz0210/post/3c2de800-7d7b-456c-a65f-aa0222e55b86/image.png)

---

## @vue/cli 설치

### @vue/cli
- CLI : Command Line Interface
- Vue.js 개발을 위한 시스템으로 Vue.js에서 공식으로 제공하는 CLI
- 개발의 필수는 아니지만 개발의 편리성을 위해 필수처럼 사용
- Vue 프로젝트를 빠르게 구성할 수 있는 스캐폴딩을 제공
- Vue와 관련된 오픈 소스들의 대부분이 CLI를 통해 구성이 가능하도록 구현되어 있음
- https://cli.vuejs.org/


### @vue/cli 설치
- @vue/cli 검색 (https://www.npmjs.com/)
![](https://velog.velcdn.com/images/mraz0210/post/e3b96976-9be3-41c4-b281-b1e8455f2fd6/image.png)

### @vue/cli 설치
- `npm install -g @vue/cli`
- `vue -V` or `vue --version`
(Mac의 경우, permission error 발생시 sudo 추가)

## @vue/cli 프로젝트 생성

### @vue/cli 프로젝트 생성
- `vue create <project-name>`
- 생성 : `vue create vue-board`
- 생성 중 중지 : `ctrl + c`
- 실행 : `npm run serve`
- 기본 설치(babel, eslint만 포함)를 진행할지 플러그인을 선택할지 (Manually select features)

![](https://velog.velcdn.com/images/mraz0210/post/08a3dd48-a0ad-48ef-9c75-587afe135ee5/image.png)

- 라우터 선택모드(history) - n일 경우 hashbang 모드(#).

![](https://velog.velcdn.com/images/mraz0210/post/c26a2b5f-1b39-41fc-a0aa-aedd3d640775/image.png)

- 저장시 lint 검사만 할지 자동으로 고치는 것이 가능한 것은 수정까지 할 지 선택
![](https://velog.velcdn.com/images/mraz0210/post/dbaa4b4e-b674-40a2-a3d4-41b94dbb8f9b/image.png)

### @vue/cli 프로젝트 생성 후 별도 플러그인 설치
- `vue add <plugin-name>` 예) vue add router

### axios 추가
- `npm install axios`
- package.json 파일의 dependencies 확인.

### 생성된 vue-board 프로젝트 실행
- 생성된 프로젝트로 이동
- 실행 : `npm run serve`
![](https://velog.velcdn.com/images/mraz0210/post/24901402-6df5-495c-aeb0-10bb9555d97b/image.png)

### 생성된 vue-board 프로젝트 실행
- 실행 : `npm run serve`
- 브라우저 : localhost:8080

---

## @vue/cli 프로젝트 구조

### @vue/cli 프로젝트 구조
- 각종 node module이 다운로드 되어 있다.
![](https://velog.velcdn.com/images/mraz0210/post/32360ada-1d6f-4d83-aadb-63831a5ec565/image.png)

### UI를 통한 프로젝트 관리
- vue-board > vue ui
![](https://velog.velcdn.com/images/mraz0210/post/f8f35821-da2d-4d58-8e18-52559586b2ec/image.png)

---

## SFC (Single File Component)
### SFC
- 확장자가 ".vue"인 파일.
- .vue = template + script + style
- 구문 강조가 가능
- 컴포넌트에만 CSS의 범위를 제한할 수 있음
- 전처리기를 사용해 기능의 확장이 가능

### template Tag
- 기본 언어 : html
- 각 `*.vue` 파일은 한번에 최대 하나의 `<template>` 블록을 포함할 수 있다.
- 내용은 문자열로 추출되어 컴파일된 Vue Component의 template 옵션으로 사용.

### script Tag
- 기본 언어 : js
- 각 `*.vue` 파일은 한번에 최대 하나의 `<script>` 블록을 포함할 수 있다.
- ES2015(ES6)를 지원하여 import와 export를 사용할 수 있음

### style Tag
- 각 `*.vue` 파일은 여러 개의 `<style>` 태그를 지원
- scoped 속성을 이용하여 현재 컴포넌트에서만 사용 가능한 CSS를 지정 가능', 'Vue', 'NodeJS, NPM, CLI', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (157, '## Vuex

- Vue.js application에 대한 상태관리패턴 + 라이브러리 (공식 페이지 참조 : https://vuex.vuejs.org/kr)
- application 모든 component들의 중앙 저장소 역할 (데이터 관리)
- 상위(부모) 하위(자식)의 단계가 많이 복잡해진다면 데이터의 전달하는 부분이 매우 복잡해 짐.
- application이 여러 구성 요소로 구성되고 더 커지는 경우, 데이터를 공유하는 문제가 발생.

![](https://velog.velcdn.com/images/mraz0210/post/6dc0c29f-6cd2-4e33-833f-78099cd48249/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/fd3f5124-d12b-4dce-b2a2-b1b6a122dbaf/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/a93d547e-11a2-42ea-a46f-0273bea32771/image.png)

vuex를 이용하면, $emit과 props를 반복하지 않고도 데이터의 변화를 바로 처리할 수 있다.

### 상태관리패턴
- 상태는 앱을 작동하는 원본 소스 (=data)
- 뷰는 상태의 선언적 매핑 (=template)
- 액션은 뷰에서 사용자 입력에 대해 반응적으로 상태를 바꾸는 방법 (=method)

```java
new Vue(
  // 상태
  data() {
	return {
      count: 0
    }
  },
  // 뷰
  template:`
    <div>{{count}}</div>
  `,
  // 액션
  method: {
    increment(){
      this.count++
    }
  }
});
```
![](https://velog.velcdn.com/images/mraz0210/post/6b1b1191-09b1-410d-834d-1296002f5399/image.png)


![](https://velog.velcdn.com/images/mraz0210/post/a9b0f883-96b9-41ad-a1cc-39ec44c9a62d/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/6a381f36-ae41-4bb7-b12d-b4e8a52c46ef/image.png)

### vuex 설치
- CDN
  - `<script src="https://unpkg.com/vuex"></script>`
- npm
  - `npm install vuex --save`
  
### vuex 저장소 개념

- State : 단일 상태 트리를 사용. application마다 하나의 저장소를 관리 (data)
- Getters : Vue Instance의 Computed와 같은 역할. State를 기반으로 계산 (computed)
- Mutations : State의 상태를 변경하는 유일한 방법 (동기 methods)
- Actions : 상태를 변이시키는 대신 액션으로 변이에 대한 커밋 처리 (비동기 methods)

### vuex 설정
- module 시스템과 함께 사용시 Vue.use()를 통해 Vuex 설정.
```java
import Vue from ''vue'';
import Vuex from ''vuex'';

Vue.use(Vuex); // 뷰 인스턴스에 Vuex 설정.
```

### vuex 단계별 이해하기
- step01 : vuex 사용.
![](https://velog.velcdn.com/images/mraz0210/post/652a9b13-5464-449d-8356-05bf3455f1c0/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/cf8f5385-6ccf-4385-b5b4-6ad71497bb71/image.png)

----

## 저장소 (Store)
### 저장소 - state
- 저장소에서 data 속성의 역할
- application에서 공유해야 할 data를 관리
- State에 접근하는 방식 : `this.$store.state.data_name`

![](https://velog.velcdn.com/images/mraz0210/post/5c106bfd-4fd0-4367-846e-1d1ae630518e/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/48cd89b3-7a17-4993-ba74-d9e534cbb8e5/image.png)

### 저장소 - Getters
- component가 vuex의 state를 직접 접근하는 코드가 중복된다면?
- 해결 : Store의 state를 참조하는 Getters를 활용.
- 정의
```java
getters: {
  countMsg(state) {
    state.count += 1;
  }
}
```
- 사용
```java
this.$store.getters.countMsg;
```

![](https://velog.velcdn.com/images/mraz0210/post/92cd5c5b-b3fc-4ca6-8805-6cbcc670a00f/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/977f87e4-1e82-443a-aecb-4da4ce82c61f/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/1ee891aa-51ed-4ddc-aa55-ad4976d75eff/image.png)

### 저장소 - mapGetters
- getter를 조금 더 간단하게 호출.
- 주의 : Babel 관련 에러 발생시 해결
...mapGetters 관련
ES6 spread operation 관련 에러 발생.
```
npm install --save core-js
```
```
Updated file babel.config.js:
  presets:[
    [
      ''@vue/app'',
      {
        useBuiltIns: ''entry'',
      },
    ],
  ],
```

![](https://velog.velcdn.com/images/mraz0210/post/9bce563b-9f8f-439f-9a68-883fc8d879bb/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/6fb9d7bf-17ce-4b1e-8dab-ad6054f88f12/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/97eba3f3-4f9a-427c-b221-bff88b812a8c/image.png)

### 저장소 - Mutations
- State의 값을 변경하기 위해서 사용.
- 각 컴포넌트에서 State의 값을 직접 변경하는 것은 권장하지 않는 방식.
- State의 값의 추적을 위해 동기적 기능에 사용.
- Mutations는 직접 호출이 불가능하고, `store.commit(''정의된 이름'')`으로 호출.

![](https://velog.velcdn.com/images/mraz0210/post/2f302ee3-cb44-4f19-9047-c9d89887dddb/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/fbac5cd3-dbcc-4155-9678-6b285788da5d/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/e8fbceaa-a569-4113-b542-c8aabcf6c636/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/aa1ad3b5-54e2-481e-8dee-5784e48b7cd2/image.png)

### 저장소 - Actions
- 비동기 작업의 결과를 적용하려고 할 때 사용.
- Mutations는 상태 관리를 위해 동기적으로 처리하고, 비동기적인 처리는 Actions가 담당.
- Actions는 비동기 로직의 처리가 종료되면 Mutations를 호출.

![](https://velog.velcdn.com/images/mraz0210/post/fe00335b-1fcf-478d-9023-db4862a5b41c/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/45715235-8c1a-4e32-9ea8-d0f9a2e64227/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/f4daff44-38ea-4732-a8d1-8096eedd47ba/image.png)

![](https://velog.velcdn.com/images/mraz0210/post/5ad6e8fd-c9dd-43d4-8341-5878be45277d/image.png)

', 'Vue', 'VueX', 'FRONTEND');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (161, '## 자바란
Java는 1995년에 만들어진 인기있는 프로그래밍 언어입니다.
Oracle사의 소유로 전세계 30억 개 이상의 장치에서 자바를 지원합니다.

---

## Java를 사용하는 이유는 무엇입니까?
- 자바는 다른 플랫폼 (윈도우, 맥, 리눅스, 라즈베리 파이 등)에서 작동합니다.
- 세계에서 가장 인기있는 프로그래밍 언어 중 하나입니다.
- 현재 취업 시장에서 수요가 많습니다.
- 배우기 쉽고 사용하기 쉽습니다.
- 오픈 소스이며 무료입니다.
- 안전하고 빠르며 강력합니다.
- 거대한 커뮤니티 지원 (수천만 명의 개발자)이 있습니다.
- Java는 프로그램에 명확한 구조를 제공하고 코드를 재사용 할 수있어 개발 비용을 낮추는 객체 지향 언어입니다.
- Java는C++ 및C#에 가깝기 때문에 프로그래머가 Java로 또는 그 반대로 쉽게 전환할 수 있습니다.', 'Java', '소개', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (162, '# 가비지 컬렉션 (Garbage Collection) 이란??

자바의 메모리 관리 방법 중의 하나로 **JVM의 Heap 영역에서 동적으로 할당했던 메모리 영역 중 필요없게 된 메모리 영역을 주기적으로 삭제하는 프로세스**

C나 C++에는 프로그래머가 수동으로 메모리 할당과 해제를 일일이 해줘야 하는 반면,  
Java는 JVM에 탑재되어 있는 가비지 컬렉터가 메모리 관리를 대행해 주기 때문에,  
**개발자 입장에서 메모리 관리, 메모리 누수 (Memory Leak) 문제에 대해 완벽하게 관리하지 않아도 되어 개발에만 집중할 수 있게 된다.**

## Garbage 란??

```java
Person person = new Person("Son");
person.hi();

person = new Person("Hyo");
person.hi();
```

"Son" 객체가 생성된 이후 person 변수에 의해 참조되는데, 이후 "Hyo" 객체가 생성되고 person 변수가 새로 생성된 "Hyo" 객체를 참조한다. 이때 "Son" 객체는 어떠한 경로로도 참조되지 않기 때문에 "Unreachable" 상태라고 하며, 이 객체는 가비지로 판단한다.

**-> 객체의 주소값을 가지고 있는 변수가 없으면, 가비지 컬렉션은 접근할 수 없는 객체 (Garbage)라고 판단한다.**

<br/>

## 가비지 컬렉션의 대상이 되는 객체들

객체들은 Heap영역에서 생성되고, Method Area이나 Stack Area 등 Root Area에서는 Heap Area에 생성된 객체의 주소만 참조하는 형식으로 구성된다.  
하지만, 이렇게 생성된 Heap Area의 객체들이 메서드가 끝나는 등의 특정 이벤트로인해 Heap Area 객체의 메모리 주소를 가지고 있는 참조변수가 삭제되어, **Heap 영역에서 어디도 참조하고 있지 않은 객체들 (Unreachable) 이 발생하게 된다.** 이러한 객체들을 주기적으로 가비지 컬렉터가 제거해준다.

## 가비지 컬렉션 동작 방식

### 1. Stop The World

가비지 컬렉션을 수행하기 위해 JVM이 애플리케이션의 실행을 일시 정지하는 것을 말한다. 가비지 컬렉션이 실행되면 GC 작업을 맡은 스레드를 제외한 나머지 스레드는 모두 멈추게 되고 GC 작업이 종료되면 재개된다.

### 2. Mark and Sweep

<img src="https://user-images.githubusercontent.com/87989933/179281175-82659244-5e43-4040-86ec-3c65e3926546.png" width=80%>

- **Mark** : 먼저 Root로부터 그래프 순회를 통해 연결된 객체를 찾아내어 각각 어떤 객체를 참조하는지 찾아서 마킹한다.

- **Sweep** : 참조하고 있지 않은 객체 즉, Uncreachable 객체들을 Heap에서 제거한다.

- **Compact** : Sweep 후에 분산된 객체들을 Heap의 시작 주소로 모아 메모리가 할당된 부분과 그렇지 않은 부분을 압축한다.

<br/>

## Heap Area 구조 & Minor GC, Major GC

<img src="https://user-images.githubusercontent.com/87989933/179336567-7da27476-e7a3-49d0-91b1-41c86405feb8.png" width=80%>

Heap Area는 효율적인 GC를 위해 크게 3가지의 영역으로 구분된다.

### **Young Generation 영역**

**Young Generation 영역**은 Heap 영역에 객체가 생성되면 최초로 Eden 영역에 age-bit 0으로 할당된다.
이 Young Generation에서 객체가 사라질 때 **Minor GC**라고 한다. 이 age-bit은 Minor GC에서 살아남을 때마다 1씩 증가하게 된다.  
 그리고 이 영역에 데이터가 어느정도 쌓이게 되면 참조정도에 따라 Survivor의 빈 공간으로 이동되거나 회수된다.

### **Old Generation 영역**

이 과정을 반복하다보면 age-bit이 JVM에서 설정해놓은 age-bit에 도달하게 되면, 오랫동안 쓰일 객체라고 판단하고 Old Generation 영역으로 이동시킨다.  
 이 과정을 **프로모션 (Promotion)** 이라고 한다.

Old generation 영역에서 객체가 사라지며, 메모리를 회수하는 GC를 **Major GC** 라고 한다.  
Major GC는 시간이 오래 걸리는 작업이고 이때 GC를 실행하는 스레드를 제외한 모든 스레드는 작업을 멈추게 된다. 이를 ''Stop-the-World'' 라 한다.

<br/>

## 가비지 컬렉션의 장,단점

### 장점

1. 개발자가 동적으로 할당된 메모리 전체를 관리할 필요가 없다.

### 단점

1. 개발자는 메모리가 언제 해제되는지(GC가 언제 수행되는지) 정확하게 알 수 없다.

2. 가비지 컬렉션이 동작하는 동안에는 다른 동작을 멈추기 때문에 오버헤드가 발생한다. (Stop-the-world)

   이로인해 GC가 너무 자주 실행되면 소프트웨어 성능 하락의 문제가 되기도 한다.  
   잠깐의 소프트웨어 일시정지로도 목표한 결과가 달라지는 경우나 실시간 시스템에는 GC의 사용이 적합하지 않을 수 있다.
', 'Java', '가비지 컬렉션 (Garbage Collection)', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (163, '# 객체지향 프로그래밍 (Object Oriented Programming, OOP)

필요한 데이터를 추상화시켜 상태와 행위를 가진 객체를 만들고 여러 개의 독립된 단위, ‘객체’들의 상호작용(메시지 주고받기, 데이터 처리 등)으로 프로그램 로직을 구성하는 프로그래밍 패러다임이다.

## OOP의 장,단점

### 장점

- 코드의 재사용성이 높다  
  상속을 통해 코드의 재사용성을 높일 수 있다.
- 유지보수가 쉽다  
  캡슐화를 통해 유지보수가 쉽다.
- 코드가 간결해진다
- 대형 프로젝트에 적합  
  클래스 단위로 모듈화 개발 업무 분담

### 단점

- 처리시간이 비교적 오래걸린다.
- 설계에 많은 고민과 시간을 투자해야한다.

# OOP 특징

## 1. 캡슐화 (Encapsulation)

- 한 객체가 특정한 하나의 목적을 위해 필요한 데이터나 메소드를 하나로 묶어서 낮은 결합도를 유지할 수 있도록 설계하고, 한 곳에서 변화가 일어나도 다른 곳에 미치는 영향을 최소화 시키는 것을 말한다.
- 데이터는 외부에서 직접 접근을 하면 안되고 함수를 통해서만 접근해야 한다.
- 캡슐화를 통해 내부 구조는 private하게 감춰두고 외부에서 조작할 수 있는 정보만 public으로 공개한다.

\\* 결합도(coupling)란, 어떤 기능을 실행할 때 다른 클래스나 모듈에 얼마나 의존적인가를 말한다.

```java
public class Person{
    private int age;
    private String name;

    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age= age;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}
```

Person이라는 클래스에 이름, 나이와 같은 속성을 묶어 캡슐화를 하였다.

이 클래스의 이름, 나이는 접근제한자가 private이기 때문에 직접 바꿀 수 없으며 get, set 함수로만 접근할 수 있다.

## 2. 추상화 (Abstraction)

클래스들의 공통적인 특성(변수, 메소드)들을 묶어 표현하는 것을 말한다.  
→ 보통 객체 지향 프로그래밍에서 클래스를 정의하는 걸 추상화라고 생각하면 된다

```java
interface DiscountPolicy{
		//할인되는 가격 반환
		public int discount(Member member, int price);
}

class RateDiscountPolicy implements DiscountPolicy{

		//상품 가격의 10%를 할인하여 할인되는 가격을 반환
    @Override
		 public int discount(Member member, int price){...}
}
```

RateDiscountPolicy 클래스가 DiscountPolicy인터페이스를 상속 받는다.

실행되는 discount 메서드는 자식 클래스인 RateDiscountPolicy 의 메서드이지만, 실행클래스에서는 RateDiscountPolicy의 구현부를 알지 못한다. 따라서 구현객체에 의존하지 않고 추상객체인 인터페이스에 의존함으로써 구현 코드를 숨긴다.

## 3. 상속 (Inheritance)

- 자식클래스가 부모 클래스에 정의된 변수 및 메서드를 상속받고, 필요한 기능을 추가하거나 자식클래스에 맞게 재정의해서 사용한다.

- 상속은 캡슐화를 유지하고 클래스의 재사용이 용이하도록 해준다.

- 클래스를 상속 받아 수정하여 사용하기 때문에 중복 코드를 줄일 수 있다.

```java
class Car {
		private String name;

		public void setName(String name) {
        this.name = name;
    }
		public abstract void move(){
				System.out.println("car move");
		}
}

class CarName extends Car {

    public void move() {
        System.out.println("move!");
    }
}
```

CarName 클래스는 Car 인터페이스를 상속받아서 중복을 줄이고, 수정하고 싶은 메서드를 재정의해서 사용한다.

## 4. 다형성 (Polymorphism)

서로 다른 클래스의 객체가 같은 메시지를 받았을 때, 각 객체가 가지고 있는 방법으로 응답할 수 있는 능력

### 다형화 지원 방법

### 오버로딩 (Overloading)

- 하나의 클래스 안에서 메소드 이름은 같지만 파라미터 개수나 자료형을 다르게 하여 서로 다르게 동작하는 것

```java
void move(int num) { System.out.println(num)};
void move(int num, int num2) {System.out.println(num+num2)};

move(10); // 10
move(10,20); // 30
```

### 오버라이딩 (Overriding)

- 부모 클래스로부터 상속받은 메서드 내용을 변경하여 사용하는 것
- 매개변수와 리턴 타입이 같아야 함

```java
class Parent {
    void move() {
				System.out.println("부모 클래스의 move() 메소드입니다.");
		}
}

class Child extends Parent {
    void move() {
				System.out.println("자식 클래스의 move() 메소드입니다.");
		}
}
```
', 'Java', 'OOP (객체지향 프로그래밍)', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (164, '# 객체지향 설계 원칙 (SOLID)

- SRP: Single Responsibility Principle 단일 책임 원칙
- OCP: Open-Closed Principle 개방-폐쇄 원칙
- LSP: Liskov Substitution Principle 리스코프 치환 원칙
- ISP: Interface Segregation Principle 인터페이스 분리 원칙
- DIP: Dependency Inversion Principle 의존성 역전 원칙

## 객체지향 설계과정

요구사항 (제공해야 할 기능) 을 찾고 세분화 한다. 그리고 그 기능을 알맞은 객체로 할당한다.
기능을 구현하는 데에 필요한 데이터를 객체에 추가한다.
해당 데이터를 이용하는 기능을 구현한다. (기능은 최대한 캡슐화)
객체 간에 어떻게 메소드 호출을 주고받을 지 결정한다.

## SRP (Single Responsibility) 단일 책임 원칙

- 클래스는 단 한개의 책임을 가져야 함
- 클래스를 변경하는 이유는 단 하나여야 함
- 이를 지키지 않으면, 한 책임의 변경에 의해 다른 책임과 관련된 코드에 영향을 미칠 수 있음 → 이렇게 되면 유지보수가 매우 비효율적

SRP 에서 이야기하는 책임이란, ''기능'' 정도로 생각하면 된다. 만약 한 클래스가 수행할 수 있는 기능 (책임) 이 여러 개라면, 클래스 내부의 함수끼리 강한 결합을 발생할 가능성이 높아진다. 응집도는 높고 결합도는 낮은 프로그램을 설계하는 것이 비로소 객체지향 설계의 핵심인데, 이것이 위반되는 것이다. 새로운 요구사항이나 프로그램 변경에 의해 클래스 내부의 동작들이 연쇄적으로 변경되어야 할 수도 있다. 이는 유지보수가 비효율적이므로, 책임을 잘게 쪼개어 분리시킬 필요가 있다.

## OCP (Open-Closed) 개방-폐쇄 원칙

- 확장에는 열려있어야 하고, 변경에는 닫혀 있어야 함
- 즉, 기존의 코드를 변경하지 않고 기능을 수정하거나 추가할 수 있도록 설계해야 함
- 이를 지키지 않으면 instanceof 와 같은 연산자를 사용하거나, 다운 캐스팅 발생

어떤 모듈의 기능을 하나 수정할 때, 그 모듈을 이용하는 다른 모듈들 역시 줄줄이 고쳐야 한다면 유지보수가 복잡할 것이다. 따라서 개방 폐쇄 원칙을 잘 적용하여 기존 코드를 변경하지 않아도 기능을 새롭게 만들거나 변경할 수 있도록 해야 한다.

그렇지 않으면 객체지향 프로그래밍의 가장 큰 장점인 유연성, 재사용성, 유지보수성 등을 모두 잃어버리는 셈이고, OOP를 사용하는 의미가 사라지게 된다.

OCP 는 추상화 (인터페이스) 와 상속 (다형성) 등을 통해 구현해낼 수 있다. 자주 변화하는 부분을 추상화함으로써 기존 코드를 수정하지 않고도 기능을 확장할 수 있도록 함으로써 유연함을 높이는 것이 핵심이다.

## LSP (Liskov Substitution) 리스코프 치환 원칙

- 하위 타입 객체는 상위 타입 객체에서 가능한 행위를 수행할 수 있어야 함 → 즉, 상위 타입 객체를 하위 타입 객체로 치환해도 정상적으로 동작해야 함
- 상속관계에서는 꼭 일반화 관계 (IS-A) 가 성립해야 한다는 의미 (일관성 있는 관계인지)
- 상속관계가 아닌 클래스들을 상속관계로 설정하면, 이 원칙이 위배됨 (재사용 목적으로 사용하는 경우)

결국은, 리스코프 치환 원칙을 지키지 않으면 개방 폐쇄 원칙을 위반하게 되는 것이다.

## ISP (Interface Segregation) 인터페이스 분리 원칙

- 클라이언트는 자신이 사용하는 메소드에만 의존해야 한다는 원칙
- 한 클래스는 자신이 사용하지 않는 인터페이스는 구현하지 않아야 함
  → 하나의 통상적인 인터페이스보다는 차라리 여러 개의 세부적인 (구체적인) 인터페이스가 나음
- 인터페이스는 해당 인터페이스를 사용하는 클라이언트를 기준으로 잘게 분리되어야 함

각 클라이언트가 필요로 하는 인터페이스들을 분리함으로써, 클라이언트가 사용하지 않는 인터페이스에 변경이 발생하더라도 영향을 받지 않도록 만들어야 하는 것이 핵심이다.

## DIP (Dependency Inversion) 의존 역전 원칙

의존 관계를 맺을 때, 변하기 쉬운 것 (구체적인 것) 보다는 변하기 어려운 것 (추상적인 것)에 의존해야 한다. → 구체화된 클래스에 의존하기 보다는 추상 클래스나 인터페이스에 의존해야 한다는 뜻

- 즉, 고수준 모듈은 저수준 모듈의 구현에 의존해서는 안 됨
- 저수준 모듈이 고수준 모듈에서 정의한 추상 타입에 의존해야 함
- 저수준 모듈이 변경되어도 고수준 모듈은 변경이 필요없는 형태가 이상적

## 정리

SRP 와 ISP 는 객체가 커지는 것을 막아준다. 객체가 단일 책임을 갖도록 하고 클라이언트마다 특화된 인터페이스를 구현하게 함으로써 한 기능의 변경이 다른 곳까지 미치는 영향을 최소화하고, 이는 기능 추가 및 변경에 용이하도록 만들어 준다.

LSP 와 DIP 는 OCP 를 서포트한다. OCP 는 자주 변화되는 부분을 추상화하고 다형성을 이용함으로써 기능 확장에는 용이하되 기존 코드의 변화에는 보수적이도록 만들어 준다. 여기서 ''변화되는 부분을 추상화''할 수 있도록 도와주는 원칙이 DIP 이고, 다형성 구현을 도와주는 원칙이 LSP 인 것이다.
', 'Java', 'SOLID 5원칙', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (165, '# 자바 컴파일 순서

1. 개발자가 자바 소스코드(.java)를 작성합니다.

2. 자바 컴파일러(Java Compiler)가 자바 소스파일을 컴파일합니다. 이때 나오는 파일은 자바 바이트 코드(.class)파일로 아직 컴퓨터가 읽을 수 없는 자바 가상 머신이 이해할 수 있는 코드입니다. 바이트 코드의 각 명령어는 1바이트 크기의 Opcode와 추가 피연산자로 이루어져 있습니다.

3. 컴파일된 바이크 코드를 JVM의 클래스로더(Class Loader)에게 전달합니다.

4. 클래스 로더는 동적로딩(Dynamic Loading)을 통해 필요한 클래스들을 로딩 및 링크하여 런타임 데이터 영역(Runtime Data area), 즉 JVM의 메모리에 올립니다.

## \\* 클래스 로더 세부 동작

    1. 로드 : 클래스 파일을 가져와서 JVM의 메모리에 로드합니다.

    2. 검증 : 자바 언어 명세(Java Language Specification) 및 JVM 명세에 명시된 대로 구성되어 있는지 검사합니다.

    3. 준비 : 클래스가 필요로 하는 메모리를 할당합니다. (필드, 메서드, 인터페이스 등등)

    4. 분석 : 클래스의 상수 풀 내 모든 심볼릭 레퍼런스를 다이렉트 레퍼런스로 변경합니다.

    5. 초기화 : 클래스 변수들을 적절한 값으로 초기화합니다. (static 필드)

5. 실행엔진(Execution Engine)은 JVM 메모리에 올라온 바이트 코드들을 명령어 단위로 하나씩 가져와서 실행합니다. 이때, 실행 엔진은 두가지 방식으로 변경합니다.

   5-1. 인터프리터 : 바이트 코드 명령어를 하나씩 읽어서 해석하고 실행합니다. 하나하나의 실행은 빠르나, 전체적인 실행 속도가 느리다는 단점을 가집니다.

   5-2. JIT 컴파일러(Just-In-Time Compiler) : 인터프리터의 단점을 보완하기 위해 도입된 방식으로 바이트 코드 전체를 컴파일하여 바이너리 코드로 변경하고 이후에는 해당 메서드를 더이상 인터프리팅 하지 않고, 바이너리 코드로 직접 실행하는 방식입니다. 하나씩 인터프리팅하여 실행하는 것이 아니라 바이트 코드 전체가 컴파일된 바이너리 코드를 실행하는 것이기 때문에 전체적인 실행속도는 인터프리팅 방식보다 빠릅니다.
', 'Java', '컴파일 과정', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (166, '# 래퍼 클래스 (Wrapper Class)

제네릭 타입에는 원하는 자료형을 지정할 수 있는데, 기본 자료형은 넣지 못한다.
제네릭 타입에 넣기 위해서는 기본형(원시형)을 담아낼 수 있는 클래스를 넣어야 한다.
즉, 기본형(원시형)을 객체화한 것을 넣어야 하는데 이를 **래퍼클래스** 라고한다.
**기본타입에 해당하는 데이터를 객체로 포장해주는 클래스이다.**

<img src="https://images.velog.io/images/hyojhand/post/748a4802-ed19-400a-a602-8d34edbf1972/IMG_0135.jpg" width="80%" />

**박싱**은 int나 float같은 기본형을 객체 안에 넣어주는 일이고, **언박싱**은 넣었던 기본형 값을 다시 빼내는 일을 말한다.
그리고 이 박싱을 지원해주는 Integer같은 클래스들을 무엇인가를 감싸준다는 의미에서 **래퍼(wrapper)클래스**라고 한다.

## 박싱 (boxing)

기본 자료형의 데이터를 대응되는 래퍼 클래스로 만드는 동작을 의미한다.

```java
Integer a = new Integer(7);
```

## 오토 박싱 (auto boxing)

JDK 1.5 부터는 java 컴파일러가 자동으로 정수 7을 new Integer(7)로 처리해 준다. \\*　내부적으로 생성하기 때문에 메모리를 더 많이 차지한다.

```java
Integer a = 7;
```

## 언박싱 (Unboxing)

래퍼클래스를 기본형으로 바꾸는 것을 말한다.
래퍼클래스를 intValue()메서드를 사용하여 기본형으로 변환하고 y라는 기본형 변수에 대입했다.

```java
Integer a = new Integer (7);
int b = a.intValue();
```

## 오토 언박싱 (auto unboxing)

JDK 1.5 부터는 내부적으로 java 컴파일러가 자동으로 처리해 준다.

```java
Integer a = new Integer(7);
int b = a;
```

---

자바에서 모든 객체는 **힙(Heap)영역**에 저장 된다.
int나 char같은 변수들(기본 자료형)은 클래스 변수로 선언되어 인스턴스 안에 포함되거나 static으로 선언되지 않았다면 모두 **스택(STACK)영역**에 저장된다.

그럼에도 기본형을 사용하는 이유는?
힙은 스택에서 불러올 때보다 상대적으로 속도가 떨어지기 때문에, 단순값만을 가진 객체인 래퍼클래스를 사용할 이유가 없다.
', 'Java', 'Boxing & UnBoxing', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (167, '# Primitive type (기본형 타입)

JAVA에서는 총 8가지의 Primitive type을 미리 정의하고 제공합니다.

자바에서 기본 자료형은 반드시 사용하기 전에 선언(Declared)되어야 합니다.

OS에 따라 자료형의 길이가 변하지 않습니다.

비객체 타입입니다. 따라서 null 값을 가질 수 없습니다. 만약 Primitive type에 Null을 넣고 싶다면 Wrapper Class를 활용합니다.

스택(Stack) 메모리에 저장됩니다.

## boolean

논리형인 boolean의 기본값은 false이며 참과 거짓을 저장하는 타입입니다. 주로 yes/no, on/off 등의 논리 구현에 주로 사용되며 두가지 값만 표현하므로 가장 크기가 작습니다.

boolean은 실제로 1bit면 충분하지만, 데이터를 다루는 최소 단위가 1byte이므로 메모리 크기가 1byte입니다.

## byte

byte는 주로 이진데이터를 다루는데 사용되는 타입입니다.

## short

short는 C언어와의 호환을 위해 사용되는 타입으로 잘 사용되지는 않는 타입입니다.

## int

int 형은 자바에서 정수 연산을 하기 위한 기본 타입입니다. 즉, byte 혹은 short 의 변수가 연산을 하면 연산의 결과는 int형이 됩니다.

## long

수치가 큰 데이터를 다루는 프로그램(은행 및 우주와 관련된 프로그램)에서 주로 사용합니다.

long 타입의 변수를 초기화 할 떄에는 정수값 뒤에 알파벳 L을 붙여서 long 타입(즉, 8byte)의 정수 데이터임을 알려주어야 합니다. 만일 정수값이 int의 값의 저장 범위를 넘는 정수에서 L을 붙이지 않는다면 컴파일 에러가 발생합니다.

long l = 2147483648; // 컴파일 에러 발생
long l = 2147483648L;

## float, double

실수를 가수와 지수 형식으로 저장하는 부동소수점 방식으로 저장됩니다.

가수를 표현하는데 있어 double형이 float형보다 표현 가능 범위가 더 크므로 double형이 보다 정밀하게 표현할 수 있습니다.

자바에서 실수의 기본 타입은 double형이므로 float형에는 알파벳 F를 붙여서 float 형임을 명시해주어야 합니다.

float f = 1234.567; // 무조건 double 타입으로 이해하려고 하므로 컴파일 에러가 발생합니다.
float f = 1234.567F; // float type이라는 것을 표시해야 합니다.

# Reference type (참조형 타입)

JAVA에서 Primitive type을 제외한 타입들이 모두 Reference type 입니다.

Reference type은 JAVA에서 최상인 java.lang.Object클래스를 상속하는 모든 클래스들을 말합니다. 물론 new로 인하여 생성하는 것들은 메모리 영역인 Heap 영역에 생성을 하게되고, Garbage Collector가 돌면서 메모리를 해제합니다.

클래스 타입(class type) , 인터페이스 타입(interface type) , 배열 타입(array type) , 열거 타입(enum type) 이 있습니다.

빈 객체를 의미하는 Null이 존재합니다.

문법상으로는 에러가 없지만 실행시켰을 때 에러가 나는 런타임 에러가 발생합니다. 예를 들어 객체나 배열을 Null 값으로 받으면 NullPointException이 발생하므로 변수 값을 넣어야 합니다.

Heap 메모리에 생성된 인스턴스는 메소드나 각종 인터페이스에서 접근하기 위해 JVM의 Stack 영역에 존재하는 Frame에 일종의 포인터(C의 포인터와는 다릅니다.)인 참조값을 가지고 있어 이를 통해 인스턴스를 핸들링합니다.

## String Class

클래스형에서도 String 클래스는 조금 특별합니다. 이 클래스는 참조형에 속하지만 기본적인 사용은 기본형 처럼 사용합니다. 그리고 불변(immutable)하는 객체입니다. String 클래스에는 값을 변경해주는 메소드들이 존재하지만 해당 메소드를 통해 데이터를 바꾼다 해도 새로운 String 클래스 객체를 만들어내는 것입니다. 일반적으로 기본형 비교는 == 연산자를 사용하지만 String 객체간의 비교는 .equals() 메소드를 사용해야 합니다.
', 'Java', '기본형 & 참조형 타입', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (168, '# 스트림 Streams

자바 8에서 추가한 스트림(Streams)은 람다를 활용할 수 있는 기술 중 하나입니다. 자바 8 이전에는 배열 또는 컬렉션 인스턴스를 다루는 방법은 for 또는 foreach 문을 돌면서 요소 하나씩을 꺼내서 다루는 방법이었습니다. 간단한 경우라면 상관없지만 로직이 복잡해질수록 코드의 양이 많아져 여러 로직이 섞이게 되고, 메소드를 나눌 경우 루프를 여러 번 도는 경우가 발생합니다.

스트림은 ''데이터의 흐름’입니다. 배열 또는 컬렉션 인스턴스에 함수 여러 개를 조합해서 원하는 결과를 필터링하고 가공된 결과를 얻을 수 있습니다. 또한 람다를 이용해서 코드의 양을 줄이고 간결하게 표현할 수 있습니다. 즉, 배열과 컬렉션을 함수형으로 처리할 수 있습니다.

또 하나의 장점은 간단하게 병렬처리(multi-threading)가 가능하다는 점입니다. 하나의 작업을 둘 이상의 작업으로 잘게 나눠서 동시에 진행하는 것을 병렬 처리(parallel processing)라고 합니다. 즉 쓰레드를 이용해 많은 요소들을 빠르게 처리할 수 있습니다.

## 스트림 연산

filter, map, limit 등 파이프라이닝이 가능한 연산을 중간 연산, count, collect 등 스트림을 닫는 연산을 최종 연산이라고 한다.

둘로 나누는 이유는, 중간 연산들은 스트림을 반환해야 하는데, 모두 한꺼번에 병합하여 연산을 처리한 다음 최종 연산에서 한꺼번에 처리하게 된다.

1. Stream 생성 : 스트림 인스턴스 생성

2. 중간연산(가공하기) : 필터링(filtering) 및 맵핑(mapping) 등 원하는 결과를 만들어가는 중간 작업(intermediate operations)

3. 최종연산(결과) : 최종적으로 결과를 만들어내는 작업(terminal operations)

### Stream 중간 연산

- filter(Predicate) : Predicate를 인자로 받아 true인 요소를 포함한 스트림 반환
- distinct() : 중복 필터링
- limit(n) : 주어진 사이즈 이하 크기를 갖는 스트림 반환
- skip(n) : 처음 요소 n개 제외한 스트림 반환
- map(Function) : 매핑 함수의 result로 구성된 스트림 반환
- flatMap() : 스트림의 콘텐츠로 매핑함. map과 달리 평면화된 스트림 반환

중간 연산은 모두 스트림을 반환한다.

### Stream 최종 연산

- (boolean) allMatch(Predicate) : 모든 스트림 요소가 Predicate와 일치하는지 검사
- (boolean) anyMatch(Predicate) : 하나라도 일치하는 요소가 있는지 검사
- (boolean) noneMatch(Predicate) : 매치되는 요소가 없는지 검사
- (Optional) findAny() : 현재 스트림에서 임의의 요소 반환
- (Optional) findFirst() : 스트림의 첫번째 요소
- reduce() : 모든 스트림 요소를 처리해 값을 도출. 두 개의 인자를 가짐
- collect() : 스트림을 reduce하여 list, map, 정수 형식 컬렉션을 만듬
- (void) forEach() : 스트림 각 요소를 소비하며 람다 적용
- (Long) count : 스트림 요소 개수 반환
', 'Java', 'Stream', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (169, '1', 'Java', '문자열', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (181, '# namespace와 std::

## namespace

- 여러 프로젝트나 여러 사람들이 작성한 프로그램에서 변수, 함수, 클래스 등의 이름이 충돌하는 것을 막기위해 개발자가 자신만의 고유한 이름 공간을 생성할 수 있도록 namespace 키워드를 사용함

 

- 생성/사용 방법 
```c++
//생성 방법
namespace BeNI { //BeNI라는 이름공간 생성
	.................
}

//사용 방법
이름공간(namespace) :: 이름(identifier)
```

## std::

- std는 c++표준에서 정한 표준 이름 공간으로서, c++ 표준 라이브러리는 std이름공간에 만들어짐

- 따라서 c++ 표준 라이브러리에서 선언된 이름을 사용할때 std::를 접두어로 붙여야함

 

### std::의 생략

- using 지시어를 사용하여 std::를 생략할 수있다.
```c++
using std::cout; //cout에 대해서만 std:: 생략
.............................
cout << "Hello" << std::endl;
```

- std 이름 공간에 선언된 모든 이름에 대해 생략

```c++
using namespace std;
.....................
cout << "hello" << endl;
```
 

### #include <iostream>과 std

- c++표준에서 지원되는 모든 라이브러리는 std 이름 공간안에 구현 되어있음

- 따라서 std::를 생략하기 위해선 아래와 같이 작성

```c++
#include <iostream>
using namespace std;
```', 'C++', 'namespace & std::', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (182, '# C-스트링

- c-스트링은 ''\\0''(널문자)로 끝나는 char배열을 말하며, c언어에서 사용하는 문자열 방식이다.

- <cstring>이나 <string.h> 헤더파일 필요

### 선언 방법

```c++
char name[6] = {''g'', ''r'', ''a'', ''c'', ''e'', ''\\0''} //널문자가 없으면 문자열이아님.
char name1[6] = "grace";
char name2[] = "grace"; //자동으로 배열의 크기는 6이됨
char name3[10] = "grace"; //문자열 뒤에 남은 4개의 배열원소는 ''\\0''로 초기화됨
```

### cin을 이용한 문자열 입력

```c++
char name[6];
cin >> name; //name에 입력받은 문자가 6개이상이면 실행오류남
```

- 주의사항 : 중간에 공백 있으면 공백 전까지만 입력이 됨

- strcmp : 문자열 비교 (같으면 0, 아니면 1반환)

### cin.getline()을 이용한 공백 포함 문자열 입력

- 함수 원형 : cin.getline( 저장할 배열, 저장할 배열의 크기, 문자열입력끝 지정하는 구분문자)

- 3번째 매개변수는 생략 가능(기본값 ''\\n'')

```c++
char address[100];
cin.getline(address, 100, ''\\n''); //엔터전까지 입력받음
```

## string 클래스

- c++ 표준 라이브러리에서 제공하는 클래스이다.

- 선언 방식

```c++
string s("Hello World!");
string s = "Hello World!";
```

- 문자열 복사, 비교, 수정이 쉽고 간단함. (string 멤버함수 확인 >> string - C++ Reference (cplusplus.com))

- [] 연산자를 이용하여 인덱스에 접근 가능하다. ex) s[0] = ''H''

```c++
getline(cin, s); //이렇게 입력받을 수도있다.
```

- 헤더파일에는 함수의 선언(원형)만이 들어있고, 함수의 호출이 명확한지 판단하는데 사용된다.
', 'C++', 'C 스트링', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (183, '# 클래스와 객체

## 객체에 대한 이해
- C++은 클래스를 설계하고, 객체를 생성하고, 객체를 활용하고, 클래스를 상속받는 등의 내용이 계속된다.

- 우리 주변에 있는 모든 것이 "객체" 이다.

- 캡슐화 : 객체의 구성 요소들을 캡슐로 싸서 보호하고 볼 수 없게 하는 것


## 객체의 구성 요소

- 멤버 변수 : 객체의 상태를 나타내는 속성
- 멤버 함수 : 행동을 구현한 코드들

 

### C++클래스와 객체

- 클래스 : 객체를 정의하는 틀 혹은 설계도로서, 클래스에 멤버 변수와 멤버 함수를 선언한다.

- 객체 : 클래스에서 멤버 변수와 함수코드를 가지고 프로그램이 실행되는 동안 실존하는 인스턴스




## C++ 클래스 만들기

- C++에서는 class 키워드를 이용하여 클래스를 선언한다.

- 클래스 선언부와 클래스 구현부로 나눠짐(why? 클래스의 재사용을 위해)


1) 클래스 선언부

- 클래스는 class 키워드와 클래스 이름으로 선언한다.
```c++
class Circle { //Circle 이름의 클래스 선언
	...
}; //반드시 세미클론으로 종료
```

- 클래스 멤버 : 클래스 멤버는 변수와 함수로 구성된다.

```c++
class Circle {
public:
	int radius = 5;  //클래스 선언부에서 멤버변수의 초기화 가능
	double getArea(); //원형 형태로 선언되어야 함
};
```

- public 접근 지정자 : 클래스의 일부 멤버들을 다른 클래스와의 통신을 위해 외부에 공개하려면 사용

* 접근 지정자 : public, private, protected의 3종류가 있음. 디폴트는 private(외부 접근 불가능)


### 클래스 구현부

- 클래스 구현부에서는 클래스 선언부에 선언된 멤버 함수의 코드를 구현함
```c++
double Circle :: getArea() {
    return 3.14*radius*radius;
}
```
- 범위 지정 연산자 :: 를 사용하여 클래스 이름과 멤버 함수를 기술함.

## 객체 생성과 객체 활용
### 객체 생성

```c++
클래스 이름 객체 이름;
Circle donut;
```

### 객체의 멤버 접근

```c++
객체이름.멤버
donut.radius = 1;
```
 

ex) Circle 클래스의 객체 생성 및 접근
```c++
#include <iostream>
using namespace std;

class Circle {
public:
    int radius;
    double getArea();
};

double Circle::getArea() {
    return 3.14*radius*radius;
}

int main() {
    Circle donut;  //도넛 객체 생성
    donut.radius = 1;  
    double area = donut.getArea();
    cout << "donut 면적은 " << area << endl;
    
    Circle pizza;  //피자 객체 생성
    pizza.radius = 30;
    area = pizza.getArea();
    cout << "pizza 면적은 " << area << endl;
}
```', 'C++', '클래스와 객체', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (184, '# 생성자

## 생성자란?

- 클래스는 객체가 생성될 때 자동으로 실행되는 생성자를 통해 객체를 초기화 한다.

## 생성자의 특징

- 생성자의 목적은 객체가 생성될 때 필요한 초기 작업을 위함
- 생성자 함수는 오직 한 번만 실행됨
- 생성자 함수의 이름은 클래스 이름과 동일하게 작성되어야 함
- 생성자 함수의 원형에 리턴타입을 선언하지 않음
- 생성자는 중복 가능함

```c++
class Circle {
    ...
    Circle(); //생성자 생성
}

Circle::Circle() {
    ...
    return; //생성자 함수를 종료하는 정상적인 리턴문
}
```

## 객체 생성과 생성자 실행

```c++
#include <iostream>
using namespace std;

class Circle {
public:
    int radius;
    Circle(); //기본 생성자
    Circle(int r); //매개변수 있는 생성자
    double getArea();
};

Circle::Circle() {
    radius = 1;
    cout << "반지름 " << radius << " 원 생성" << endl;
}

Circle::Circle(int r) {
    radius = r;
    cout << "반지름 " << radius << " 원 생성" << endl;
}

double Circle::getArea() {
    return 3.14*radius*radius;
}

int main() {
    Circle donut;  //매개 변수 없는 생성자 호출
    double area = donut.getArea();
    cout << "donut 면적은 " << area << endl;

    Circle pizza(30);  //매개 변수 있는 생성자 호출
    area = pizza.getArea();
    cout << "pizza 면적은 " << area << endl;
}
```

## 위임 생성자, 생성자가 다른 생성자 호출

- 한 클래스의 생성자들에는 대개 객체를 초기화하는 비슷한 코드가 중복된다.

- 따라서 중복된 초기화 코드를 하나의 생성자로 몰고, 다른 생성자에서 이 생성자를 호출 할 수 있게 한다.

### 타겟 생성자

객체의 초기화 작업이 코딩된 생성자

### 위임 생성자

객체의 초기화를 다른 생성자에 위임하는 생성자

- 앞서 작성한 코드를 위임 생성자를 활용하여 명료하게 바꿀 수 있다.

```c++
Circle::Circle() {
    radius = 1;
    cout << "반지름 " << radius << " 원 생성" << endl;
}

Circle::Circle(int r) {
    radius = r;
    cout << "반지름 " << radius << " 원 생성" << endl;
}

// 위 코드의 위임 생성자 활용
Circle::Circle() : Cricle(1) { } //위임 생성자

Circle::Circle(int r) { //타겟 생성자
    radius = r;
    cout << "반지름 " << radius << "원 생성" << endl;
}
```

## 생성자와 멤버 변수의 초기화

- 클래스의 멤버 변수들은 자동으로 초기화 되지 않기 때문에 생성자에서 초기화 한다.

- 생성자 코드에서 멤버 변수 초기화

```c++
class Point {
    int x, y;
public:
    Point();
    Point(int a, int b);
};
Point::Point() { x=0; y=0;}
Point::Point(int a, int b) { x=a; y=b; }
```

- 생성자 서두에 초기값으로 초기화

```c++
Point::Point : x(0), y(0) {
}
Point::Point(int a, int b)
    : x(a), y(b) {
}
```

- 클래스 선언부에서 직접 초기화

```c++
class Point {
    int x=0, y=0;
    ...
}
```

## 기본 생성자

- 생성자는 무조건 있어야 한다. 하지만 선언하지 않았을 경우 컴파일러가 기본 생성자를 만들어 삽입한다.

- 디폴트 생성자라고도 부르며, 매개변수가 없다.

- 생성자가 하나라도 선언된 클래스는 컴파일러가 기본 생성자를 자동 삽입하지 않는다.
', 'C++', '생성자', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (201, '# 파이썬(Python)
파이썬은 1991년, 네덜란드 수학자 귀도 반 로섬에 의해 개발되었습니다. 원래 파이썬이라는 이름은 그리스 신화에 나오는 뱀을 뜻합니다.

귀도가 파이썬이라는 이름을 붙인 것은 신화에 나오는 뱀 때문이 아니고, 자신이 좋아하는 코미디 프로그램 “Monty Python''s Flying Circus(몬티 파이썬의 날아다니는 서커스)”에서 따온 것이라고 합니다. 

프로그래밍 언어 중에서도 무척 오래된 포트란(Fortran)이 1954년에, 지금도 폭넓게 사용하는 C언어가 1972년에 공개됐다는 것을 생각하면 1991년에 나온 파이썬은 비교적 최신 언어라고 할 수 있습니다.


## 파이썬의 특징

1. 많은 라이브러리

풍부한 라이브러리는 파이썬의 장점이라고 할 수 있습니다. 프로그래밍 언어 상당수는 자주 쓰는 처리를 어떤 단위의 프로그램으로 미리 준비해 두고, 자신이 만들 프로그램에서 자유롭게 쓸 수 있게 합니다. 이런 범용 프로그램을 라이브러리(Library)라고 합니다.


파이썬에도 풍부한 라이브러리가 있고, 이 라이브러리들은 서로 다른 플랫폼에서도 똑같이 동작합니다. (운영 체제가 달라도 동작) 플랫폼이 달라도 동작한다는 점은 매우 좋은 점이라고 생각합니다. 호환성이 뛰어나기 때문에 어디서도 그 프로그램을 돌릴 수 있다는 뜻이 되기 때문입니다.

2. 사용하기 쉬운 프로그래밍 언어

파이썬은 객체 지향 언어이지만 절차형으로도 사용가능 합니다. 객체 지향이란 프로그램을 만드는 방법 중 하나입니다.

어떤 기능을 하는 프로그램과 데이터를 객체(Object) 단위로 묶고, 여러 객체가 메시지를 통해 서로 연계해 전체 기능을 만들어 낸다는 사고방식에 따른 것입니다.


객체 지향 언어는 이런 방법으로 프로그래밍할 수 있게 만들어진 프로그래밍 언어로, 보통은 그 언어의 라이브러리도 객체 지향에 따라 작성되어 있습니다.

3. 들여쓰기 및 문법

들여쓰기로 블록구조를 표현합니다. 파이썬은 함수나 정의, IF문 과 같은 구문을 들여쓰기로 구분합니다. 다른 프로그래밍 언어들은  { } 중괄호를 사용학 있으나 파이썬은 들여쓰기를 합니다.', 'Python', '파이썬에 대해..', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (202, '# 변수 및 자료형

- 변수는 =을 통해 할당(assignment) 된다.
- type()을 통해 자료형을 확인해야한다.
- 해당 변수의 메모리 주소를 확인하기 위해서는 id()를 활용한다.
- 같은 값을 동시에 할당 할 수 있다.
- 다른 값을 동시에 할당 가능하다.
- 변수의 갯수가 값의 갯수보다 더 적거나 많으면 오류가 발생한다.

# 수치형(Numbers)

## int : 정수
- 모든 정수는 int로 표현된다.
- 8진수: 0o, 2진수: 0b, 16진수: 0x
- Overflow (일반적) vs Arbitrary-precision arithmetic (Python)

- 일반적으로, 데이터 타입 별로 사용할 수 있는 메모리 크기가 제한되어 있다. 표현할 수 있는 수의 범위가 넘어가면 메모리의 넘친(overflow) 현상으로 이상한 값이 출력된다.
- 파이썬은 아주 큰 정수를 표현할 때, 메모리의 변화한다. 가용 메모리를 모두 수 표현에 끌어다 쓸 수 있어 유동적인 운용이 가능하다.


## float: 부동소수점, 실수
- 실수는 부동소수점으로 표현되며, 항상 같은 값으로 일치되지 않는다.

- 숫자를 표현하는 과정에서 생기는 오류는 대부분 중요하지 않으나, 값 비교 과정에서는 문제가 발생할 수 있다.

- 실수의 경우, 덧셈은 괜찮으나 뺄셈 처리 시에는 오류가 있을 수 있다.

- round() 를 통해 반올림하여 실수를 정리 할 수 있다.

## complex : 복소수
- 복소수는 허수부를 j로 표현한다.
```python
a = 3 + 4j
a.imag => 허수부 출력
a.real => 실수부 출력
a.conjugate() =>
```

## Bool
- True와 False로 이뤄진 bool 타입
- bool(value) 하면 True와 False 가 출력된다.
- False의 경우: [], 0, {}, 0.0, ’’, (), None
- True의 경우: False 경우 제외 전부. 어떤 값이나 type 이든 비어있지 않고 무언가가 존재 하면 True이다. 예로, [False], [0], '' '' 등 도 전부 True이다.

## None
값이 없음을 표현하는 None 타입이 존재한다.

## String: 문자형
- 문자열은 '''' 나 ""을 활용하여 표현 가능하다.
- 하나의 문자열을 묶을 때 동일한 문장부호를 활용해야 한다.
- PEP-8에서는 하나의 문장부호를 선택하여 유지하는 것이 원칙이다.
- 사용자에게 받은 입력은 기본적으로 str 이다.
- 여러 줄에 걸쳐있는 문장은 """ """ 을 사용 하여 표현 합니다.

### 이스케이프 문자열

- 특수문자 또는 조작을 하기 위하여 \\ 을 활용하는 문자열
- 예약문자내용(의미)줄바꿈 탭 캐리지리턴\\0널(Null)\\\\\\’단일인용부호(’)"이중인용부호(")
- 문자열 뒤에 end=''escape string''을 쓰면 출력 결과를 조정할 수 있다.', 'Python', '변수 및 자료형', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (203, '# 제어문

## 조건문 (if문)

- if <조건식> : 반드시 일정한 참/거짓을 판단할 수 있는 조건식과 사용
    - 조건식이 참인 경우: : 이후의 문장을 수행
    - 조건식이 거짓인 경우: else: 이후의 문장을 수행

- 복수 조건문: 2개 이상의 조건문을 활용할 경우 elif <조건문>: 을 활용
- 중첩 조건문: if 안에 if 실행
- 조건 표현식(conditional expression): true_value if <조건식> else false_value


## 반복문

### while 문: while True:
while 문은 조건식이 True 인 경우 반복적으로 코드를 실행하며, 종료조건을 반드시 설정해줘야 한다.

### for문: for value in sequence:
정해진 범위 내 (시퀀스) 에서 순차적으로 코드를 실행하며
범위가 이미 정해져 있기 때문에, 종료조건을 설정해주지 않아도 된다.

** iterable 이라는 것은 시퀀스, 이터레이터 또는 이터레이션을 지원하는 객체, 즉 열거 객체

### index와 for문
- enumerate(iterable): index와 value를 반환하는 함수
- for index, value in enumerate(iterable)

### dictionary 반복문
- for key in dict: key 반환 및 반복
- for key in dict.keys(): key 반환 및 반복
- for value in dict.values(): value 반환 및 반복
- for key, value in dict.items() : key와 value 반환 및 반복

### break, continue, else
- break : 반복문을 종료하는 표현
- continue : continue 이후의 코드를 수행하지 않고 다음 요소를 선택해 반복을 계속 수행
- else : 끝까지 반복문을 시행한 이후에 실행. break를 통해 중간에 종료되지 않은 경우에만 실행. for~else를 의미한다.', 'Python', '제어문', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (204, '# 함수

## 함수 정의

def func(parameter1, parameter2):code line1code line2return value

- parameter == 매개변수
- return을 통해 결과값을 전달
- return 값이 없으면, None을 반환
- 호출은 func(val1, val2)로 한다
- return은 모든 종류의 객체를 반환할 수 있다. 단, 오직 한 개의 객체만 반환된다.
- 단 하나의 객체만 반환되지만, 값은 여러개 반환될 수 있고 이럴 때에는 하나의 tuple로 묶여서 반환된다.

## 인수(parameter)

1. 위치 인수
   함수는 기본적으로 인수를 위치로 판단

- 기본값(Default Value)
  - 함수가 호출될 때, 인자를 지정하지 않아도 기본 값을 설정할 수 있다.
  - 기본 값이 있는 ‘’매개변수’’ 뒤에 기본 값이 없는 ‘’매개변수’’를 사용 할 수는 없다.

def greeting(age, name= ''john''):print(name, age)


2. 키워드 인자
- 직접적으로 변수의 이름으로 특정 인자를 전달할 수 있다.
- 키워드 인자 뒤에 위치 인자를 사용 할 수는 없다.
- 위치 ‘’인자’’ => 키워드 ‘’인자’’ 순서 이어야 한다.

greeting(''neo'', age=10)

3. 가변 인자
- 정해지지 않은 임의의 개수의 인자를 받기 위한 가변인자
- tuple 형태로 처리  
def func(\\*args)

- 정의되지 않은 키워드 인자  
dict 형태로 처리  
def func(**kwargs)


- 딕셔너리를 인자로 넘기기
**dict 를 통해 함수에 딕셔너리를 인자로 넘길 수 있다  
func(\\*\\*dict)

## 이름공간 및 스코프(Scope)
- 파이썬에서 사용되는 이름들은 이름공간(namespace)에 저장되어 있다.
- 인식 우선순위 (LEGB Rule)
1. Local scope: 정의된 함수
2. Enclosed scope: 상위 함수
3. Global scope: 함수 밖의 변수 혹은 import된 모듈
4. Built-in scope: 파이썬안에 내장되어 있는 함수 또는 속성

- 수명주기 순위
1. Built-in scope: 파이썬이 실행된 이후부터 끝까지
2. Global scope: 모듈이 호출된 시점 이후 혹은 이름 선언된 이후부터 끝까지
3. Local/Enclosed scope: 함수가 실행된 시점 이후부터 리턴할때까지


## 재귀함수(recursive function)
함수 내부에서 자기 자신을 호출하는 함수

- 재귀함수는 기본적으로 같은 문제이지만, 점점 범위가 줄어드는 문제를 풀게 된다

- 재귀 함수 작성시에는 반드시, base case가 있어야 한다.

- base case는 점점 범위가 줄어들어 반복되지 않는 최종적으로 도달하는 곳이다.

### 재귀 함수의 장/단점

- 알고리즘 구현에 적절 (더 자연스럽다)

- ’변수 사용’을 줄여준다

- 코드가 더 직관적이고 이해하기 쉬운 경우가 있다

- 만들기는 어렵다

- 함수가 호출될 때 마다 메모리 공간에 쌓인다. 그래서 메모리 스택이 넘치거나 (stack overflow) 프로그램 실행속도가 느려진다.

- 파이썬에서는 이를 방지하기 위해 1,000번이 넘어가게 되면 더이상 함수를 호출하지 않고, 종료된다.
', 'Python', '함수', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (205, '# 자료구조

## String method (문자열 메소드)

1. .capitalize() : 앞글자를 대문자로 만들어 반환합니다. + 나머지는 모두 소문자. ex) string.capitalize()
2. .title() : 어포스트로피나 공백 뒤에 있는 문자를 대문자로 만들어 반환. ex) string.title()
3. .upper() : 모두 대문자로 만들어 반환. ex)string.upper()
4. .lower() : 모두 소문자로 만들어 반환. ex) string.lower()
5. .swapcase(): 대 <-> 소문자로 변경하여 반환
6. ''arg''.join(iterable) : iterable type의 객체를 특정한 문자열로 만들어 반환
7. <class str>. replace(old, new[, count]) : 바꿀 대상의 글자를 새로운 글자로 바꿔서 반환. count를 지정하면 해당 갯수만큼만 시행.
8. .strip([chars]): 특정한 문자들을 지정하면, 양쪽을 제거한다. 지정하지 않으면 default value는 공백.
9. .lstrip([chars]) & .rstrip([chars]) : 왼쪽제거, 오른쪽 제거
10. .find(x) : string 내 첫 x의 index를 반환. 없으면, -1를 반환.
11. .index(x) : string 내 첫 x의 index를 반환. 없으면, 오류를 반환.
12. .split(chars=''arg'') : 문자열을 chars를 기준으로 나누어 리스트로 반환. chars의 default value는 ’ ’ (띄어쓰기) 이다.

그 외 참/거짓 반환 메소드: .isbulabula()  
ex) .isdecimal(), .isspace() , .istitle()

## LIST Method (리스트 메소드)

1. .append(x) : 리스트에 x값을 추가한다. x가 iterable type일 때, iterable value만 뽑아서 추가하는 것이 아니라 하나의 객체로 인식해서 추가한다. 이를 고려해서 사용해야 한다.  
ex) list.append([1, 2]) -> list = [[1, 2]]

2. .extend(iterable) : 리스트에 iterable 값을 붙일 수 있다. iterable 내 value들을 하나씩 리스트에 추가한다. 그래서 string을 넣으면 문자 하나하나씩이 list value로 추가됨으로 주의해야한다.  
ex) list.extend([1, 2]) -> list = [1, 2]

3. .insert(i, x) : 정해진 위치 i에 x 값을 추가. i가 list의 길이를 넘어서면 무조건 마지막에 하나만 추가된다.
4. .remove(x) : 리스트에서 값이 x인 것을 삭제. remove는 값이 없으면 오류 발생.
5. .pop(i) : 정해진 위치 i에 있는 값을 삭제하며, 그 항목을 반환한다. i가 지정되지 않으면 default로 마지막 항목을 삭제하고 반환한다.
6. .index(x) : 원하는 x값을 찾아 index 값을 반환. index 도 찾는 value x가 없으면 오류 발생.
7. .count(x) : list 내 원하는 x 값의 갯수를 반환.
8. .sort() : list를 정렬해줌. .sorted()와 다르게 원본 list를 변형시키고, None을 리턴.
9. sorted(list): iterable을 정렬해서 list로 반환. 원본 list를 변형시키지 않고, 정렬된 list을 리턴.
10. .reverse() : list 내 value의 순서를 반대로 뒤집는다. (정렬 아님)
11. .clear() : 리스트의 모든 항목을 삭제한다.

## Dictionary Method (딕셔너리 메소드)
1. .pop(key[, default]) : key가 dictionary에 있으면 해당 value를 제거하고 그 값을 돌려줍니다. 그렇지 않으면 default를 제거하고 반환하다. default가 없는 상태에서 key가 dictionary에 없으면 KeyError가 발생한다.  
ex) dict.pop(''melon'', ''없음'') : melon의 값을 반환해주는데, 만약 없다면 default value인 없음을 반환해줘.

2. .update(key=value) : 값을 제공하는 key, value로 덮어쓴다.
3. .get(key[, default]) : key를 통해 value를 가져온다. key가 dictionary에 없어도 KeyError가 발생하지 않는다.

## Set Method (세트 메소드)
1. .add(elem) : element를 세트에 추가
2. .update(*others) : 여러 개의 element를 set에 추가. 반드시 iterable한 값을 넣어야한다.
3. .remove(elem) : element를 세트에서 삭제하고, 없으면 KeyError가 발생.
4. .discard(elem) : element를 세트에서 삭제하고, 리턴값이 None이라서 없어도 에러가 발생하지 않는다.
5. pop() : 임의의 원소를 제거해 반환.

## map, zip, filter
1. map(function, iterable)
- iterable의 모든 원소에 function을 적용한 후 그 결과를 반환
- iterable type: list, dict, set, str, bytes, tuple, range
- return은 map_object 형태로 된다. 그래서 출력가능한 형태로 바꿔야 한다. list 같은 형태.

2. zip(*iterables)
- 복수 iterable한 것들을 모아준다
- return은 튜플의 모음으로 구성된 zip object 형태로 된다. 출력가능한 형태로 바꿔야 한다.  
ex) zip(list1, list2) => output: (val1.1, val2.1), (val1.2, val2.2), …

- 반드시 iterable object 끼리 길이가 같을 때 사용해야한다. 가장 짧은 것을 기준으로 구성하기 때문이다.
- 가장 긴 것을 기준으로 구성할 수 있다. 홀로 남은 값들은 fillvalue와 짝지어진다. from itertools import zip_longest// zip_longest(iterable1, iterable2, fillvalue=''args'')

3. filter(function, iterable)
- iterable이 인자로 입력된 function의 반환된 결과가 참인 것들만 구성하여 반환
- true/false를 판단하는 function을 넣어야 한다
- return은 filter object 형태로 된다. 그래서 출력가능한 형태로 바꿔야 한다.
', 'Python', '자료구조', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (206, '# 클래스와 인스턴스

## 클래스(Class)
- OOP의 기본적인 사용자 정의 데이터형 (User define data type)
- 같은 종류 또는 문제 해결을 위한 집단에 속하는 속성(attribute)와 행위(behavior)를 정의한 것
- 클래스는 다른 클래스 또는 외부 요소와 독립적으로 디자인 해야한다.

### 클래스 정의하기 (클래스 객체 생성하기)
- class ClassName:
- 선언과 동시에 클래스 객체가 생성됨
- 선언된 공간은 지역 스코프로 사용된다
- 정의된 속성 중 변수는 멤버 변수(data attribute)로 불리운다
- 정의된 함수는 메서드로 불리운다
- ClassName은 uppercamel convention을 사용한다

## 인스턴스(Instance)
- 클래스의 인스턴스/객체(실제로 메모리상에 할당된 것)
- 객체는 자신의 고유의 속성(attribute)을 가지며 클래스에서 정의한 행위(behavior)을 수행할 수 있다
- 객체의 행위는 클래스에 정의된 행위에 대한 정의(메서드)를 공유함으로써 메모리를 경제적으로 사용한다

### 인스턴스 생성하기
- 인스턴스 객체는 ClassName()을 호출함으로써 선언
- 인스턴스 객체와 클래스 객체는 서로 다른 이름공간을 가지고 있음
- 인스턴스 => 클래스 => 전역 순으로 탐색한다
- 특별한 상황을 제외하고는, 클래스에서 인스턴스 메서드를 선언할 때에 반드시 (self) 가 첫번째 인자로 설정되어야 한다. 그래야 인스턴스 객체가 함수의 첫번째 인자로 전달되어 행위가 실행된다.
- self 는 인스턴스 객체 자기자신을 의미

### 이름공간
- 클래스를 정의하면, 클래스 객체가 생성되고 해당되는 이름 공간이 생성된다
- 인스턴스를 생성하면, 인스턴스 객체가 생성되고 해당되는 이름 공간이 생성된다
- 인스턴스의 속성이 변경되면, 변경된 데이터를 인스턴스 객체 이름 공간에 저장한다
- 인스턴스에서 특정한 속성에 접근하게 되면 인스턴스 => 클래스 순으로 탐색한다

### 생성자/ 소멸자
- 생성자는 인스턴스 객체가 생성될 때 호출되는 함수  
def __init__(self):return bulabula
- 소멸자는 인스턴스 객체가 소멸되는 과정에서 호출되는 함수  
def __del__(self):return bulabula
- 양쪽에 언더스코어가 있는 메서드를 스페셜 메서드 혹은 매직 메서드라고 부른다', 'Python', '클래스와 인스턴스', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (207, '# 속성과 메서드

## 속성(Attribute)
- 클래스/인스턴스가 가지고 있는 속성(값)

### 클래스 변수
- 클래스의 속성
- 클래스 선언 블록 최상단에 위치
- 모든 인스턴스가 공유
- Class.class_variable 로 접근/할당한다


### 인스턴스 변수
- 인스턴스의 속성
- 각 인스턴스들의 고유한 변수
- 메서드 정의에서 self.instance_variable로 접근/할당한다
- 인스턴스가 생성된 이후 instance.instance_variable로 접근/할당한다

## 메서드(Method)
클래스/인스턴스가 할 수 있는 행위(함수)

### 인스턴스 메서드
- 인스턴스가 사용할 메서드
- 정의 위에 어떠한 데코레이터가 없으면, 자동으로 인스턴스 메서드가 됩니다
- 첫 번째 인자로 self를 받도록 정의한다. 이 때, 자동으로 인스턴스 객체가 self가 된다

### 클래스 메서드
- 클래스가 사용할 메서드
- 정의 위에 @classmethod 데코레이터를 사용
- 첫 번째 인자로 클래스(cls) 를 받도록 정의한다. 이 때, 자동으로 클래스 객체가 cls가 된다.

### 스태틱(정적) 메서드
- 클래스가 사용할 메서드
- 정의 위에 @staticmethod 데코레이터를 사용
- 묵시적인 첫 번째 인자를 받지 않는다. 즉, 인자 정의는 자유롭게 한다.
- 어떠한 인자도 자동으로 넘어가지 않는다.
- 클래스 메서드와의 차이점은 권한 범위이다. 클래스메서드는 클래스 변수의 값을 변경할 수 없다. 프로그램을 만들 때, 사용자에게서 방어적으로 코드를 짜기 위해서 생긴 개념이다.', 'Python', '속성과 메서드', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (208, '# 모듈

## 모듈 생성
모듈은 파이썬의 정의와 문장들을 담고 있는 파일을 말한다.
- 모듈 파일에는 확장자 .py를 붙인다
- 모듈 파일 안에 함수를 선언한다

## 모듈 사용
- 반드시 import 문을 통해 내장 모듈을 이름 공간에 가져와야 한다
- 패키지는 ’점으로 구분된 모듈 이름’을 써서 파이썬의 모듈 이름 공간을 구조화 하는 방법
- 파이썬이 디렉터리를 패키지로 취급하게 만들기 위해서는 __init__.py 파일이 필요하다.

### import 방법
- from 모듈명 import 어트리뷰트 : 특정 어트리뷰트만 꺼낸다
- from 모듈명 import *: 모듈에 있는 변수, 함수, 클래스 전부 꺼낸다
- from 모듈명 import 어트리뷰트 as 이름 : 내가 지정하는 이름을 붙여 가져올 수 있다

### 파이썬 기본 모듈
- math (함수 관련 함수): sum, max, min, abs, pow, round, divmod
- 삼각함수도 가능하다: sin, cos, tan, asin, ascos, aten, sinh, cosh, tanh, ashinh, acosh, atanh

- random: 난수 발생관련 함수
- random은 seed를 어떻게 설정하냐에 따라 생성되는 난수가 다르다.
- datetime: 날짜 관련 모듈
- 형식 지시자(directive)의미%y연도표기(00~99)%Y연도표기(전체)%b월 이름(축약)%B월 이름(전체)%m월 숫자(01~12)%d일(01~31)%H24시간 기준(00~23)%I12시간 기준(01~12)%M분(00~59)%S초(00~61)%p오전/오후%a요일(축약)%A요일(전체)%w요일(숫자 : 일요일(0))%j1월 1일부터 누적 날짜
- 속성/메소드내용.year년.month월.day일.hour시.minute분.second초.weekday()월요일을 0부터 6까지
- timedelta: 시간 연산을 가능케 한다', 'Python', '모듈', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (221, '# 자바스크립트

## 자바스크립트의 역사

1995년 당시 약 90%의 시장 점유율로 웹 브라우저 시장을 지배하고 있던 넷스케이프 커뮤니케이션즈(Netscape comunications)는 정적인 HTML을 동적으로 표현하기 위해 경량의 프로그래밍 언어를 도입하기로 결정했다. 그래서 탄생한 것이 브렌던 아이크(Brendan Eich)가 개발한 자바스크립트이다.

자바스크립트는 1996년 3월 넷스케이프 커뮤니케이션즈의 웹 브라우저인 Netscape Navigator 2에 탑재되었고 “Mocha”로 명명되었다. 그해 9월 “LiveScript”로 이름이 변경되었고, 12월 “JavaScript”로 최종 명명되었다.

## Javascript란?

동적인 웹페이지를 만들기 위한 프로그래밍 언어. (HTML/CSS와 완전히 통합 가능)
웹페이지를 조작하고, 클라이언트-서버 간 상호작용에 관한 모든 일을 관여한다.


## JavaScript의 특징
1. 인터프리터 언어
: 인터프리터 언어이지만, 웹 브라우저 대부분에는 JIT 컴파일러(실행 시간에 js코드를 컴파일함)가 내장되어 있어, 실행 속도가 매우 빠르다.

2. 객체 기반의 script 언어

3. 동적 프로토타입 기반 객체 지향 언어
: 클래스가 아닌, 프로토타입을 상속.

4. 일급 객체 함수
: 고차 함수를 구현할 수 있어 함수형 프로그래밍이 가능  
=> 객체 지향형 프로그래밍과 함수형 프로그래밍을 모두 표현할 수 있다.

5. 동적 타입 언어
: 변수 타입이 없기 때문에, 프로그램 실행 도중 변수에 저장되는 데이터 타입이 동적으로 바뀔 수 있다. (Type Coercion)

6. single thread 기반 언어
: stack 위에 함수를 올려 실행하고, 끝나면 stack에서 제거한다. (한 번에 하나의 task만 처리, 동기적.)

7. non-blocking 언어
: event loop와 callback queue가 있기 때문에, single thread 기반이어도 다른 이벤트를 비동기적으로 처리할 수 있다. (ex. setTimeout, async await..)', 'Javascript', '자바스크립트에 대해..', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (222, '# 변수(Variables)

## const

상수, 선언 후 값을 바꿀 수 없다.

## let

- 변수, 생성 후에 값을 바꿀 수 있다.
- 재선언 X, 재할당 O

```javascript
let myName = "ck";
myName = "k";
```

## var

- 변수, 선언 후 값을 변경할 수 있다는 것은 let과 동일하나, let과 달리 재선언할 수 있다는 차이가 있다.
- 재선언 O, 재할당 O

```javascript
var myName = "ck";
var myName = "kds";
```

구버전으로, 실수로 값을 업데이트해도 알아차릴 수 없는 단점이 있어 사용하지 않는 것이 좋다.

## null 과 undefined
### undefined
- 변수는 선언했지만 값을 할당하지는 않음
- variable이 존재하지만 값이 주어지지 않은 상태

### null
- 변수에 null(값이 없다)이 할당된다. 즉, 정의됨.
null은 절대 자연적으로 발생하지 않음
- 자바스크립트에 여기엔 값이 "없다"는 걸 알려주기 위해 씀
', 'Javascript', '변수', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (223, '# 함수 (Functions)
```javascript
function sayHello(userName){
console.log("Hello my name is " + userName);
}

sayHello("Lisa"); //Hello my name is Lisa
```

object안에 function 삽입도 가능
```javascript
const player = {
name : tomato,
color : red,
food : true,
sayHello: function() {
  console.log("hello!);
};
              
player.sayHello();
  //hello!
```

## return
- 어떤 작업을 처리하고 결과를 return하기 위해 function 사용
- return 함으로써 값을 할당한다
- console.log랑은 차이가 있음
- function의 외부에서 값을 얻기 원함
```javascript
const age = 96;
function calculateKrAge(someoneAge){
  return someoneAge +2;
}

const krAge = calculateKrAge(age);
console.log(krAge); //98
```
return은 말 그대로 ''다시 돌려준다.'' 라는 의미로
해당 함수의 변수값을 지정해주면 해당 code를 안에서 실행해서 그 결과값을 해당 함수의 변수값을 선언한 변수한테 돌려주는것이다.

### return 사용 시 주의사항
- return을 하게 되면 해당 함수는 끝난다.
- 때문에 return뒤에 작업을 한다면 수행하지 않는다.
- return 앞에 작업을 한다면 수행된다.', 'Javascript', '함수', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (224, '# 배열

## 배열의 선언

```javascript
var arr = new Array();
var arr = [];
```

## 배열에 값 삽입

- 초기화시 값 삽입

```javascript
var careers = ["Warrior", "Archer", "Wizard"];
```

- 인덱스를 이용하여 삽입

```javascript
var careers = [];
careers[0] = "Warrior";
careers[1] = "Archer";
careers[2] = "Wizard";
```

- push 메서드를 사용하여 삽입

```javascript
var careers = [];
careers.push("Warrior");
careers.push("Archer");
careers.push("Wizard");
```

## 배열과 관련된 메소드

```javascript
var careers = ["Warrior", "Archer", "Wizard"];
console.log("total careers : " + careers.length);

total careers : 3
```

length는 메서드가 아니다. 자바스크립트에서 Array는 하나의 객체이며 length는 Array가 가진 멤버 변수다. 배열의 길이가 필요할 때마다 길이를 읽어오는 것 보단 O(N) 길이를 가지고 있는게 O(1) 효율적일 테니까.

- join은 배열을 붙여 하나의 문자열로 만들어 준다.

```javascript
var careers = ["Warrior", "Archer", "Wizard"];
console.log("careers : " + careers.join(", "));

careers: Warrior, Archer, Wizard;
```

- reverse는 배열을 반대로 뒤집는 역할을 한다.

```javascript
var careers = ["Warrior", "Archer", "Wizard"];
console.log("careers : " + careers.reverse().join(", "));

careers: Wizard, Archer, Warrior;
```

- sort는 배열을 정리한다.

현재는 알파뱃 순서대로 정렬되고 있다. sort에 함수를 전달하면 자신이 원하는 방식대로 정렬할 수 있다.

```javascript
var careers = ["Warrior", "Archer", "Wizard"];
console.log("careers : " + careers.sort().join(", "));

careers: Archer, Warrior, Wizard;
```

- concat은 두 배열을 합쳐주는 역할을 한다.

```javascript
var careers = ["Warrior", "Archer", "Wizard"];
var careersOnDlc = ["Assassin", "Samurai"];
console.log("careers : " + careers.concat(careersOnDlc).join(", "));

careers: Warrior, Archer, Wizard, Assassin, Samurai;
```

- push와 pop은 자료구조 Stack에서 다뤄지며 여기서도 동일한 기능을 수행한다.

push는 맨 뒤에 요소를 삽입 pop은 맨 뒤 요소를 꺼내는 것이다. 주로 팬케이크에 비유되곤 한다.

push의 return type은 push 후 배열의 길이이고 pop 의 return type은 꺼내진 개체다.

```javascript
var careers = ["Warrior", "Archer", "Wizard"];
var x = careers.push("Devil", "Outlaw");
console.log("total careers after push : " + x);
​
var y = careers.pop();
console.log("pop career : " + y);

total careers after push : 5
pop careers : Outlaw
```
', 'Javascript', '배열', 'LANGUAGE');
INSERT INTO developermaker.study (study_id, content, subject, title, category) VALUES (225, '# 오브젝트(Object)

구조체(struct) 처럼 내부에 여러 변수를 가질 수 있고 클래스(class)처럼 내부에 메소드를 포함하고 있는 형식이다. JSON이라고 많이 알려진 형식이다.

## 오브젝트의 선언

```javascript
var obj = new Object();
var obj = {};
```

## 변수를 가진 오브젝트

- hp와 mp를 가진 player를 생성해보자.

```javascript
var player = {};
player.hp = 100;
player.mp = 300;
​
var player = {
    hp: 100,
    mp: 300
};
```

## 메소드를 가진 오브젝트

- 플레이어가 맞는 기능

```javascript
var player = {
    hp: 100,
    mp: 300,
    hit: function (damage) {
        this.hp -= damage;
        console.log(''player hit damage : '' + damage);
        return this.isDie();
    },
    isDie: function () {
        if (this.hp <= 0) {
            console.log(''player is die...'');
            return true;
        }
        return false;
    }
};
​
player.hit(150);
console.log(''player left hp : '' + player.hp);

player hit damage : 150
player is die...
player left hp : -50
```
', 'Javascript', '오브젝트', 'LANGUAGE');


INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (1, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC1.png', '봄날의 봄', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (2, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC2.png', '감성카페 봄', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (3, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC3.png', '봄나들이', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (4, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC4.png', '파르페 봄', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (5, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC5.png', '공부하는 가을', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (6, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%941-%EC%84%9C%EB%B4%84.png', '가을산책', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (7, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%941-%EC%B0%A8%EA%B0%80%EC%9D%84.png', '페스티벌 가을', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (8, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%941-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '가을바다', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (9, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%942-%EC%84%9C%EB%B4%84.png', '슈퍼스타 여름', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (10, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%942-%EC%B0%A8%EA%B0%80%EC%9D%84.png', '호국요람 여름', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (11, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%942-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '여름의 기타', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (12, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%943-%EC%84%9C%EB%B4%84.png', '빡공여름', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (13, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%943-%EC%B0%A8%EA%B0%80%EC%9D%84.png', '은하수 겨울', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (14, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%943-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '냠냠', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (15, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%944-%EC%84%9C%EB%B4%84.png', '코딩좀비 겨울', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (16, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%944-%EC%B0%A8%EA%B0%80%EC%9D%84.png', '불꽃놀이 겨울', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (17, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%944-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '수트', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (18, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%945-%EC%84%9C%EB%B4%84.png', '애마', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (19, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%945-%EC%B0%A8%EA%B0%80%EC%9D%84.png', '진히로인', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (20, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%945-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '주인공', 'study', 'study');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (21, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%946-%EC%84%9C%EB%B4%84.png', '무인도여행 메리호', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (22, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%946-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '함께하는 행복', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (23, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%947-%EC%84%9C%EB%B4%84.png', '너와 나', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (24, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%947-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '다시 함께', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (25, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%941-%EC%84%9C%EB%B4%84.png', '뜨거운 안녕', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (26, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%941-%EC%B0%A8%EA%B0%80%EC%9D%84.png', '다시 한번', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (27, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%941-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '끝을 향하는 우리', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (28, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%942-%EC%84%9C%EB%B4%84.png', '모든 이야기가 끝난 후', 'story', 'total');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (29, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%942-%EC%B0%A8%EA%B0%80%EC%9D%84.png', '퀴즈대회 우승 서봄', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (30, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%86%A0%EB%A6%AC%EC%95%A8%EB%B2%942-%ED%95%9C%EA%B2%A8%EC%9A%B8.png', '발표왕 서봄', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (31, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B51.png', '입사동기 서봄', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (32, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B52.png', '인생은 혼자', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (33, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B53.png', '차도를 달리다', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (34, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B54.png', '서른즈음에', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (35, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '이등병의 편지', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (36, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '잊어야한다는 마음으로', 'story', 'spring');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (37, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '폭풍스터디 차가을', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (38, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '천고마비', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (39, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '쓸쓸히 낙엽만 쌓이고', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (40, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '또 다른 기회', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (41, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '우연한 재회', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (42, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '냉정과 열정 사이', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (43, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '헤어질 결심', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (44, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '가을아침', 'story', 'fall');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (45, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '눈의꽃', 'story', 'winter');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (46, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '땅거미 진 어둠속을 그대와', 'story', 'winter');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (47, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '손을 마주 잡고', 'story', 'winter');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (48, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '겨울은 가까워 오네요', 'story', 'winter');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (49, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '그대를 보내야 했던', 'story', 'winter');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (50, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '올해의 첫눈꽃을 바라보며', 'story', 'winter');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (51, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '끝없이 내리는 새하얀 눈꽃', 'story', 'winter');
INSERT INTO developermaker.album (album_id, album_img, album_title, type, theme) VALUES (52, 'https://busanfullcourse.s3.ap-northeast-2.amazonaws.com/%ED%95%99%EC%8A%B55.png', '미안하다 사랑한다.', 'story', 'winter');


INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (1, '아/아아/아아아', 1, '아아아아아아아 해보세요', 'CS', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (2, '피지컬/데이터 링크/네트워크/트랜스포트/세션/프레젠테이션/어플리케이션', 2, 'OSI 7 계층이 어떤 것으로 이루어져 있는지 영단어로 3가지 이상 말해주세요.', 'CS', '피지컬/데이터 링크/네트워크/트랜스포트/세션/프레젠테이션/어플리케이션', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (3, 'Central/Processing/Unit', 3, 'CPU는 중앙처리장치입니다. 무엇의 줄임말인가요?', 'CS', '센트럴/프로세싱/유닛', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (6, '다익스트라/벨만 포드/A*/플로이드 워셜', 1, '최단 경로를 구하는 알고리즘을 두 가지 이상 말해주세요.', 'ALGORITHM', '엑스트라/포드/스타/플로이드', 2);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (7, '아/아아/아아아', 2, '아아아아아아아 해보세요', 'ALGORITHM', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (8, '아/아아/아아아', 3, '아아아아아아아 해보세요', 'ALGORITHM', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (11, '아/아아/아아아', 1, 'Spring에서 JPA와 Mybatis의 차이에 대해 설명해주세요.', 'BACKEND', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (12, '아/아아/아아아', 2, '아아아아아아아 해보세요', 'BACKEND', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (13, '아/아아/아아아', 3, '아아아아아아아 해보세요', 'BACKEND', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (16, '아/아아/아아아', 1, 'React와 Vue.js의 차이에 대해 설명해주세요.', 'FRONTEND', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (17, '아/아아/아아아', 2, '아아아아아아아 해보세요', 'FRONTEND', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (18, '아/아아/아아아', 3, '아아아아아아아 해보세요', 'FRONTEND', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (21, '다형성/상속/캡슐화/추상화', 1, '객체지향 프로그래밍의 네 가지 특징은 무엇이 있나요?', 'LANGUAGE', '다형/상속/캡슐/추상', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (22, '아/아아/아아아', 2, '아아아아아아아 해보세요', 'LANGUAGE', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (23, '아/아아/아아아', 3, '아아아아아아아 해보세요', 'LANGUAGE', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (24, '아/아아/아아아', 4, '아아아아아아아 해보세요', 'LANGUAGE', '아/아아/아아아', 3);
INSERT INTO developermaker.ai_interview_question (aiq_id, keyword, no, question, subject, keyword_detect, demend_cnt) VALUES (25, '아/아아/아아아', 5, '아아아아아아아 해보세요', 'LANGUAGE', '아/아아/아아아', 3);
