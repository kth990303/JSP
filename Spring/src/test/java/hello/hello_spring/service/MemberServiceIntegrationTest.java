package hello.hello_spring.service;

import hello.hello_spring.domain.Member;
import hello.hello_spring.repository.MemberRepository;
import hello.hello_spring.repository.MemoryMemberRepository;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

@SpringBootTest
@Transactional
class MemberServiceIntegrationTest {
    // 어차피 테스트 코드
    // 제일 편한 방법으로 진행
    // field injection은 DI 면에서 큰 단점이나, 어차피 테스트코드.
    // 테스트 코드를 다른 데에 주입하거나 가져다 쓰지 않으므로.
    @Autowired MemberService memberService;
    @Autowired MemberRepository memberRepository;
//    객체 생성해서 집어넣는 방법이 아닌, 스프링한테 주입해달라고 함
//    @BeforeEach
//    public void BeforeEach(){
//        memberRepository=new MemoryMemberRepository();
//        memberService=new MemberService(memberRepository);
//    }
//    위의 @transactional 덕분에 필요가 없어짐.
//    @AfterEach
//    public void AfterEach(){
//        memberRepository.clearStore();
//    }
    @Test
    void 회원가입() {
        // given
        Member member=new Member();
        member.setName("spring");
        // when
        Long saveId=memberService.join(member);
        // then
        Member findMember = memberService.findOne(saveId).get();
        assertThat(member.getName()).isEqualTo(findMember.getName());
    }
    @Test
    public void 중복확인(){
        // given
        Member member1=new Member();
        member1.setName("spring");

        Member member2=new Member();
        member2.setName("spring2");

        Member member3=new Member();
        member3.setName("spring");

        // when
        memberService.join(member1);
        memberService.join(member2);
        IllegalStateException e = assertThrows(IllegalStateException.class, () -> memberService.join(member3));
        assertThat(e.getMessage()).isEqualTo("이미 존재하는 회원입니다.");
        /*
        try{
            memberService.join(member3);
        }catch(IllegalStateException e){
            assertThat(e.getMessage()).isEqualTo("이미 존재하는 회원입니다.123");
        }*/
        // then
    }
}