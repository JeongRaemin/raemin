/*
[1단계:코드] 1. salgrade 테이블 전체를 조회하고, 해당 컬럼을 조회해보세요.
*/
SELECT * FROM salgrade;
/*
[1단계:개념] 2. 정보와 데이터의 차이점을 기술하세요.
[1단계:개념] 3. 데이터의 형태에 따른 분류를 하고, 예를 나타내세요.
[1단계:개념] 5. 이산형 데이터와 연속형 데이터의 차이점을 기술하세요
[1단계:개념] 6. 테이블과 컴럼명의 alias를 사용하는 방법을 예제를 통해서 기술하세요.
[1단계:개념] 7. 하나의 테이블을 사용할 때도 alias를 사용하는 경우를 기술하세요.
[1단계:코드] 8. 아래의 형태로 사원정보(emp) 테이블의 컬럼이름에 맞는 데이터를 출력하세요
              부서번호 - deptno  사원번호(empno) 직책(job)  급여(sal*12) 보너스
 */
SELECT deptno "부서번호", empno "사원번호(empno)", job "직책(job)", sal*12 "급여(sal*12)"
FROM emp;
/*
[1단계:코드] 9. 아래의 형식으로 컬럼간의 연산과 연결처리를 하여 alias로 출력하세요.님
     1) @@님의 사원번호는 @@이고, 올해 연말보너스는 연봉의 20%인 @@원입니다.  @@님(ename)
     2) @@님의 입사일은 @@이고, 현재 연봉의 1/13인 월급여는 @@만원.   입사일 @@(hiredate)
*/
SELECT * FROM emp;

SELECT ename ||'님의 사원번호는 '|| empno||'이고, 올해 연말보너스는 연봉의 20%인 '||sal*12*0.2 || '만원 입니다.'
"# 연말보너스 정보 #"
FROM emp;

SELECT ename ||'님의 입사일은 '|| hiredate||'이고, 현재 연봉의 1/13인 월급여는 '|| ROUND(sal*12/13) ||'만원.'
"# 월급여 정보 #"
FROM emp;