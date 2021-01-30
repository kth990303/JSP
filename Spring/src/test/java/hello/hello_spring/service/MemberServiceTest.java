package hello.hello_spring.service;

import hello.hello_spring.domain.Member;
import hello.hello_spring.repository.MemberRepository;
import hello.hello_spring.repository.MemoryMemberRepository;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class MemberServiceTest {
    MemberService memberService;
    MemoryMemberRepository memberRepository;
    @BeforeEach
    public void BeforeEach(){
        memberRepository=new MemoryMemberRepository();
        memberService=new MemberService(memberRepository);
    }
    @AfterEach
    public void AfterEach(){
        memberRepository.clearStore();
    }
    @Test
    void join() {
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

    @Test
    void findAllMembers() {
    }

    @Test
    void findOne() {
    }
}