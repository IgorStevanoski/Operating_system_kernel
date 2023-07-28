
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	58813103          	ld	sp,1416(sp) # 80007588 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2a9030ef          	jal	ra,80003ac4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	0e4010ef          	jal	ra,80002268 <_ZN5Riscv20handleSupervisorTrapEv>

    .irp index 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z23environmentCallFunctionv>:

#include "../h/syscall_c.hpp"
#include "../lib/mem.h"

void environmentCallFunction()
{
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001250:	00000073          	ecall
}
    80001254:	00813403          	ld	s0,8(sp)
    80001258:	01010113          	addi	sp,sp,16
    8000125c:	00008067          	ret

0000000080001260 <_Z9mem_allocm>:

void* mem_alloc (size_t size)
{
    if (size <= 0) return nullptr;
    80001260:	02050663          	beqz	a0,8000128c <_Z9mem_allocm+0x2c>
{
    80001264:	ff010113          	addi	sp,sp,-16
    80001268:	00113423          	sd	ra,8(sp)
    8000126c:	00813023          	sd	s0,0(sp)
    80001270:	01010413          	addi	s0,sp,16

    return __mem_alloc(size);
    80001274:	00005097          	auipc	ra,0x5
    80001278:	9e4080e7          	jalr	-1564(ra) # 80005c58 <__mem_alloc>
}
    8000127c:	00813083          	ld	ra,8(sp)
    80001280:	00013403          	ld	s0,0(sp)
    80001284:	01010113          	addi	sp,sp,16
    80001288:	00008067          	ret
    if (size <= 0) return nullptr;
    8000128c:	00000513          	li	a0,0
}
    80001290:	00008067          	ret

0000000080001294 <_Z8mem_freePv>:

int mem_free (void* v)
{
    80001294:	ff010113          	addi	sp,sp,-16
    80001298:	00113423          	sd	ra,8(sp)
    8000129c:	00813023          	sd	s0,0(sp)
    800012a0:	01010413          	addi	s0,sp,16
    return __mem_free(v);
    800012a4:	00005097          	auipc	ra,0x5
    800012a8:	8e8080e7          	jalr	-1816(ra) # 80005b8c <__mem_free>
}
    800012ac:	00813083          	ld	ra,8(sp)
    800012b0:	00013403          	ld	s0,0(sp)
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void (*start_routine) (void*), void* arg)
{
    if ( !handle || !start_routine) return -1; // error
    800012bc:	08050e63          	beqz	a0,80001358 <_Z13thread_createPP3TCBPFvPvES2_+0x9c>
    800012c0:	0a058063          	beqz	a1,80001360 <_Z13thread_createPP3TCBPFvPvES2_+0xa4>
{
    800012c4:	fc010113          	addi	sp,sp,-64
    800012c8:	02113c23          	sd	ra,56(sp)
    800012cc:	02813823          	sd	s0,48(sp)
    800012d0:	04010413          	addi	s0,sp,64
    //if ( !arg ) return -1;

    uint64 volatile num = 0x11;                                             //a0
    800012d4:	01100793          	li	a5,17
    800012d8:	fef43423          	sd	a5,-24(s0)
    uint64 volatile handleReg = (uint64) handle;                            //a1
    800012dc:	fea43023          	sd	a0,-32(s0)
    uint64 volatile start_routineReg = (uint64) start_routine;              //a2
    800012e0:	fcb43c23          	sd	a1,-40(s0)
    uint64 volatile argReg = (uint64) arg;                                  //a3
    800012e4:	fcc43823          	sd	a2,-48(s0)
    uint64 volatile stack_spaceReg = (uint64) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);    //a4
    800012e8:	00008537          	lui	a0,0x8
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	f74080e7          	jalr	-140(ra) # 80001260 <_Z9mem_allocm>
    800012f4:	fca43423          	sd	a0,-56(s0)

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    800012f8:	fe843783          	ld	a5,-24(s0)
    800012fc:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    80001300:	fe043783          	ld	a5,-32(s0)
    80001304:	00078593          	mv	a1,a5
    __asm__ volatile ("mv a2, %0" : : "r" (start_routineReg));
    80001308:	fd843783          	ld	a5,-40(s0)
    8000130c:	00078613          	mv	a2,a5
    __asm__ volatile ("mv a3, %0" : : "r" (argReg));
    80001310:	fd043783          	ld	a5,-48(s0)
    80001314:	00078693          	mv	a3,a5
    __asm__ volatile ("mv a4, %0" : : "r" (stack_spaceReg));
    80001318:	fc843783          	ld	a5,-56(s0)
    8000131c:	00078713          	mv	a4,a5

    environmentCallFunction();
    80001320:	00000097          	auipc	ra,0x0
    80001324:	f24080e7          	jalr	-220(ra) # 80001244 <_Z23environmentCallFunctionv>

    uint64 volatile ret = 0;
    80001328:	fc043023          	sd	zero,-64(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    8000132c:	00050793          	mv	a5,a0
    80001330:	fcf43023          	sd	a5,-64(s0)

    if ( ret == 0) return 0;
    80001334:	fc043783          	ld	a5,-64(s0)
    80001338:	00079c63          	bnez	a5,80001350 <_Z13thread_createPP3TCBPFvPvES2_+0x94>
    8000133c:	00000513          	li	a0,0
    return -1;
}
    80001340:	03813083          	ld	ra,56(sp)
    80001344:	03013403          	ld	s0,48(sp)
    80001348:	04010113          	addi	sp,sp,64
    8000134c:	00008067          	ret
    return -1;
    80001350:	fff00513          	li	a0,-1
    80001354:	fedff06f          	j	80001340 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
    if ( !handle || !start_routine) return -1; // error
    80001358:	fff00513          	li	a0,-1
    8000135c:	00008067          	ret
    80001360:	fff00513          	li	a0,-1
}
    80001364:	00008067          	ret

0000000080001368 <_Z12thread_startP3TCB>:

int thread_start (thread_t handle)
{
    if ( !handle ) return -1; // error
    80001368:	06050463          	beqz	a0,800013d0 <_Z12thread_startP3TCB+0x68>
{
    8000136c:	fd010113          	addi	sp,sp,-48
    80001370:	02113423          	sd	ra,40(sp)
    80001374:	02813023          	sd	s0,32(sp)
    80001378:	03010413          	addi	s0,sp,48
    //if ( !arg ) return -1;

    uint64 volatile num = 0x14;                                             //a0
    8000137c:	01400793          	li	a5,20
    80001380:	fef43423          	sd	a5,-24(s0)
    uint64 volatile handleReg = (uint64) handle;                            //a1
    80001384:	fea43023          	sd	a0,-32(s0)

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    80001388:	fe843783          	ld	a5,-24(s0)
    8000138c:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    80001390:	fe043783          	ld	a5,-32(s0)
    80001394:	00078593          	mv	a1,a5

    environmentCallFunction();
    80001398:	00000097          	auipc	ra,0x0
    8000139c:	eac080e7          	jalr	-340(ra) # 80001244 <_Z23environmentCallFunctionv>

    uint64 volatile ret = 0;
    800013a0:	fc043c23          	sd	zero,-40(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    800013a4:	00050793          	mv	a5,a0
    800013a8:	fcf43c23          	sd	a5,-40(s0)

    if ( ret == 0) return 0;
    800013ac:	fd843783          	ld	a5,-40(s0)
    800013b0:	00079c63          	bnez	a5,800013c8 <_Z12thread_startP3TCB+0x60>
    800013b4:	00000513          	li	a0,0
    return -1;
}
    800013b8:	02813083          	ld	ra,40(sp)
    800013bc:	02013403          	ld	s0,32(sp)
    800013c0:	03010113          	addi	sp,sp,48
    800013c4:	00008067          	ret
    return -1;
    800013c8:	fff00513          	li	a0,-1
    800013cc:	fedff06f          	j	800013b8 <_Z12thread_startP3TCB+0x50>
    if ( !handle ) return -1; // error
    800013d0:	fff00513          	li	a0,-1
}
    800013d4:	00008067          	ret

00000000800013d8 <_Z11thread_exitv>:

int thread_exit ()
{
    800013d8:	fe010113          	addi	sp,sp,-32
    800013dc:	00113c23          	sd	ra,24(sp)
    800013e0:	00813823          	sd	s0,16(sp)
    800013e4:	02010413          	addi	s0,sp,32
    uint64 volatile num = 0x12;
    800013e8:	01200793          	li	a5,18
    800013ec:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile ("mv a0, %0" : : [stvec] "r" (num));
    800013f0:	fe843783          	ld	a5,-24(s0)
    800013f4:	00078513          	mv	a0,a5

    environmentCallFunction();
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	e4c080e7          	jalr	-436(ra) # 80001244 <_Z23environmentCallFunctionv>

    /*uint64 volatile ret = 0;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));*/

    return 0;
}
    80001400:	00000513          	li	a0,0
    80001404:	01813083          	ld	ra,24(sp)
    80001408:	01013403          	ld	s0,16(sp)
    8000140c:	02010113          	addi	sp,sp,32
    80001410:	00008067          	ret

0000000080001414 <_Z15thread_dispatchv>:

void thread_dispatch ()
{
    80001414:	fe010113          	addi	sp,sp,-32
    80001418:	00113c23          	sd	ra,24(sp)
    8000141c:	00813823          	sd	s0,16(sp)
    80001420:	02010413          	addi	s0,sp,32
    uint64 volatile num = 0x13;
    80001424:	01300793          	li	a5,19
    80001428:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile ("mv a0, %0" : : [stvec] "r" (num));
    8000142c:	fe843783          	ld	a5,-24(s0)
    80001430:	00078513          	mv	a0,a5

    environmentCallFunction();
    80001434:	00000097          	auipc	ra,0x0
    80001438:	e10080e7          	jalr	-496(ra) # 80001244 <_Z23environmentCallFunctionv>

}
    8000143c:	01813083          	ld	ra,24(sp)
    80001440:	01013403          	ld	s0,16(sp)
    80001444:	02010113          	addi	sp,sp,32
    80001448:	00008067          	ret

000000008000144c <_Z8sem_openPP4_semj>:

// Semaphore
int sem_open ( sem_t* handle, unsigned init) //0x21
{
    if ( !handle ) return -1; // error
    8000144c:	06050063          	beqz	a0,800014ac <_Z8sem_openPP4_semj+0x60>
{
    80001450:	fd010113          	addi	sp,sp,-48
    80001454:	02113423          	sd	ra,40(sp)
    80001458:	02813023          	sd	s0,32(sp)
    8000145c:	03010413          	addi	s0,sp,48

    uint64 volatile num = 0x21;                                             //a0
    80001460:	02100793          	li	a5,33
    80001464:	fef43423          	sd	a5,-24(s0)
    uint64 volatile handleReg = (uint64) handle;                            //a1
    80001468:	fea43023          	sd	a0,-32(s0)
    uint64 volatile initReg = (uint64) init;                                //a2
    8000146c:	02059593          	slli	a1,a1,0x20
    80001470:	0205d593          	srli	a1,a1,0x20
    80001474:	fcb43c23          	sd	a1,-40(s0)

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    80001478:	fe843783          	ld	a5,-24(s0)
    8000147c:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    80001480:	fe043783          	ld	a5,-32(s0)
    80001484:	00078593          	mv	a1,a5
    __asm__ volatile ("mv a2, %0" : : "r" (initReg));
    80001488:	fd843783          	ld	a5,-40(s0)
    8000148c:	00078613          	mv	a2,a5

    environmentCallFunction();
    80001490:	00000097          	auipc	ra,0x0
    80001494:	db4080e7          	jalr	-588(ra) # 80001244 <_Z23environmentCallFunctionv>

    return 0;
    80001498:	00000513          	li	a0,0
}
    8000149c:	02813083          	ld	ra,40(sp)
    800014a0:	02013403          	ld	s0,32(sp)
    800014a4:	03010113          	addi	sp,sp,48
    800014a8:	00008067          	ret
    if ( !handle ) return -1; // error
    800014ac:	fff00513          	li	a0,-1
}
    800014b0:	00008067          	ret

00000000800014b4 <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle) //0x22
{
    800014b4:	fe010113          	addi	sp,sp,-32
    800014b8:	00113c23          	sd	ra,24(sp)
    800014bc:	00813823          	sd	s0,16(sp)
    800014c0:	02010413          	addi	s0,sp,32
    uint64 volatile num = 0x22;                                             //a0
    800014c4:	02200793          	li	a5,34
    800014c8:	fef43423          	sd	a5,-24(s0)
    uint64 volatile handleReg = (uint64) handle;                            //a1
    800014cc:	fea43023          	sd	a0,-32(s0)

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    800014d0:	fe843783          	ld	a5,-24(s0)
    800014d4:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    800014d8:	fe043783          	ld	a5,-32(s0)
    800014dc:	00078593          	mv	a1,a5

    environmentCallFunction();
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	d64080e7          	jalr	-668(ra) # 80001244 <_Z23environmentCallFunctionv>

    return 0;
}
    800014e8:	00000513          	li	a0,0
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret

00000000800014fc <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id) // 0x23
{
    800014fc:	fd010113          	addi	sp,sp,-48
    80001500:	02113423          	sd	ra,40(sp)
    80001504:	02813023          	sd	s0,32(sp)
    80001508:	03010413          	addi	s0,sp,48
    uint64 volatile num = 0x23;                                             //a0
    8000150c:	02300793          	li	a5,35
    80001510:	fef43423          	sd	a5,-24(s0)
    uint64 volatile handleReg = (uint64) id;                                //a1
    80001514:	fea43023          	sd	a0,-32(s0)

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    80001518:	fe843783          	ld	a5,-24(s0)
    8000151c:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    80001520:	fe043783          	ld	a5,-32(s0)
    80001524:	00078593          	mv	a1,a5

    environmentCallFunction();
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	d1c080e7          	jalr	-740(ra) # 80001244 <_Z23environmentCallFunctionv>

    uint64 volatile ret = 0;
    80001530:	fc043c23          	sd	zero,-40(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    80001534:	00050793          	mv	a5,a0
    80001538:	fcf43c23          	sd	a5,-40(s0)

    return ret;
    8000153c:	fd843503          	ld	a0,-40(s0)
}
    80001540:	0005051b          	sext.w	a0,a0
    80001544:	02813083          	ld	ra,40(sp)
    80001548:	02013403          	ld	s0,32(sp)
    8000154c:	03010113          	addi	sp,sp,48
    80001550:	00008067          	ret

0000000080001554 <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id) // 0x24
{
    80001554:	fd010113          	addi	sp,sp,-48
    80001558:	02113423          	sd	ra,40(sp)
    8000155c:	02813023          	sd	s0,32(sp)
    80001560:	03010413          	addi	s0,sp,48
    uint64 volatile num = 0x24;                                             //a0
    80001564:	02400793          	li	a5,36
    80001568:	fef43423          	sd	a5,-24(s0)
    uint64 volatile handleReg = (uint64) id;                                //a1
    8000156c:	fea43023          	sd	a0,-32(s0)

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    80001570:	fe843783          	ld	a5,-24(s0)
    80001574:	00078513          	mv	a0,a5
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    80001578:	fe043783          	ld	a5,-32(s0)
    8000157c:	00078593          	mv	a1,a5

    environmentCallFunction();
    80001580:	00000097          	auipc	ra,0x0
    80001584:	cc4080e7          	jalr	-828(ra) # 80001244 <_Z23environmentCallFunctionv>

    uint64 volatile ret = 0;
    80001588:	fc043c23          	sd	zero,-40(s0)
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    8000158c:	00050793          	mv	a5,a0
    80001590:	fcf43c23          	sd	a5,-40(s0)

    return ret;
    80001594:	fd843503          	ld	a0,-40(s0)
}
    80001598:	0005051b          	sext.w	a0,a0
    8000159c:	02813083          	ld	ra,40(sp)
    800015a0:	02013403          	ld	s0,32(sp)
    800015a4:	03010113          	addi	sp,sp,48
    800015a8:	00008067          	ret

00000000800015ac <_Z4getcv>:

// Console
char getc() //0x41
{
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00113423          	sd	ra,8(sp)
    800015b4:	00813023          	sd	s0,0(sp)
    800015b8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return (char)ret;*/

    //environmentCallFunction();

    return __getc();
    800015bc:	00005097          	auipc	ra,0x5
    800015c0:	830080e7          	jalr	-2000(ra) # 80005dec <__getc>
}
    800015c4:	00813083          	ld	ra,8(sp)
    800015c8:	00013403          	ld	s0,0(sp)
    800015cc:	01010113          	addi	sp,sp,16
    800015d0:	00008067          	ret

00000000800015d4 <_Z4putcc>:

void putc(char chr) //0x42
{
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00113423          	sd	ra,8(sp)
    800015dc:	00813023          	sd	s0,0(sp)
    800015e0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r" (num));
    //__asm__ volatile ("mv a1, %0" : : "r" (chrReg));

    environmentCallFunction();*/

    __putc(chr);
    800015e4:	00004097          	auipc	ra,0x4
    800015e8:	7cc080e7          	jalr	1996(ra) # 80005db0 <__putc>
}
    800015ec:	00813083          	ld	ra,8(sp)
    800015f0:	00013403          	ld	s0,0(sp)
    800015f4:	01010113          	addi	sp,sp,16
    800015f8:	00008067          	ret

00000000800015fc <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	00913423          	sd	s1,8(sp)
    8000160c:	01213023          	sd	s2,0(sp)
    80001610:	02010413          	addi	s0,sp,32
    80001614:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001618:	00100793          	li	a5,1
    8000161c:	02a7f863          	bgeu	a5,a0,8000164c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001620:	00a00793          	li	a5,10
    80001624:	02f577b3          	remu	a5,a0,a5
    80001628:	02078e63          	beqz	a5,80001664 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000162c:	fff48513          	addi	a0,s1,-1
    80001630:	00000097          	auipc	ra,0x0
    80001634:	fcc080e7          	jalr	-52(ra) # 800015fc <_ZL9fibonaccim>
    80001638:	00050913          	mv	s2,a0
    8000163c:	ffe48513          	addi	a0,s1,-2
    80001640:	00000097          	auipc	ra,0x0
    80001644:	fbc080e7          	jalr	-68(ra) # 800015fc <_ZL9fibonaccim>
    80001648:	00a90533          	add	a0,s2,a0
}
    8000164c:	01813083          	ld	ra,24(sp)
    80001650:	01013403          	ld	s0,16(sp)
    80001654:	00813483          	ld	s1,8(sp)
    80001658:	00013903          	ld	s2,0(sp)
    8000165c:	02010113          	addi	sp,sp,32
    80001660:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001664:	00000097          	auipc	ra,0x0
    80001668:	744080e7          	jalr	1860(ra) # 80001da8 <_ZN3TCB5yieldEv>
    8000166c:	fc1ff06f          	j	8000162c <_ZL9fibonaccim+0x30>

0000000080001670 <_Z11workerBodyAv>:
{
    80001670:	fe010113          	addi	sp,sp,-32
    80001674:	00113c23          	sd	ra,24(sp)
    80001678:	00813823          	sd	s0,16(sp)
    8000167c:	00913423          	sd	s1,8(sp)
    80001680:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001684:	00000493          	li	s1,0
    80001688:	0300006f          	j	800016b8 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000168c:	00168693          	addi	a3,a3,1
    80001690:	000027b7          	lui	a5,0x2
    80001694:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001698:	00d7ee63          	bltu	a5,a3,800016b4 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000169c:	00000713          	li	a4,0
    800016a0:	000077b7          	lui	a5,0x7
    800016a4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800016a8:	fee7e2e3          	bltu	a5,a4,8000168c <_Z11workerBodyAv+0x1c>
    800016ac:	00170713          	addi	a4,a4,1
    800016b0:	ff1ff06f          	j	800016a0 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800016b4:	00148493          	addi	s1,s1,1
    800016b8:	00900793          	li	a5,9
    800016bc:	0297ec63          	bltu	a5,s1,800016f4 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800016c0:	00005517          	auipc	a0,0x5
    800016c4:	94050513          	addi	a0,a0,-1728 # 80006000 <kvmincrease+0x130>
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	174080e7          	jalr	372(ra) # 8000283c <_Z11printStringPKc>
        printInteger(i);
    800016d0:	00048513          	mv	a0,s1
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	0ac080e7          	jalr	172(ra) # 80002780 <_Z12printIntegerm>
        printString("\n");
    800016dc:	00005517          	auipc	a0,0x5
    800016e0:	9b450513          	addi	a0,a0,-1612 # 80006090 <kvmincrease+0x1c0>
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	158080e7          	jalr	344(ra) # 8000283c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800016ec:	00000693          	li	a3,0
    800016f0:	fa1ff06f          	j	80001690 <_Z11workerBodyAv+0x20>
}
    800016f4:	01813083          	ld	ra,24(sp)
    800016f8:	01013403          	ld	s0,16(sp)
    800016fc:	00813483          	ld	s1,8(sp)
    80001700:	02010113          	addi	sp,sp,32
    80001704:	00008067          	ret

0000000080001708 <_Z11workerBodyBv>:
{
    80001708:	fe010113          	addi	sp,sp,-32
    8000170c:	00113c23          	sd	ra,24(sp)
    80001710:	00813823          	sd	s0,16(sp)
    80001714:	00913423          	sd	s1,8(sp)
    80001718:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    8000171c:	00000493          	li	s1,0
    80001720:	0300006f          	j	80001750 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001724:	00168693          	addi	a3,a3,1
    80001728:	000027b7          	lui	a5,0x2
    8000172c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001730:	00d7ee63          	bltu	a5,a3,8000174c <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001734:	00000713          	li	a4,0
    80001738:	000077b7          	lui	a5,0x7
    8000173c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001740:	fee7e2e3          	bltu	a5,a4,80001724 <_Z11workerBodyBv+0x1c>
    80001744:	00170713          	addi	a4,a4,1
    80001748:	ff1ff06f          	j	80001738 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    8000174c:	00148493          	addi	s1,s1,1
    80001750:	00f00793          	li	a5,15
    80001754:	0297ec63          	bltu	a5,s1,8000178c <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001758:	00005517          	auipc	a0,0x5
    8000175c:	8b050513          	addi	a0,a0,-1872 # 80006008 <kvmincrease+0x138>
    80001760:	00001097          	auipc	ra,0x1
    80001764:	0dc080e7          	jalr	220(ra) # 8000283c <_Z11printStringPKc>
        printInteger(i);
    80001768:	00048513          	mv	a0,s1
    8000176c:	00001097          	auipc	ra,0x1
    80001770:	014080e7          	jalr	20(ra) # 80002780 <_Z12printIntegerm>
        printString("\n");
    80001774:	00005517          	auipc	a0,0x5
    80001778:	91c50513          	addi	a0,a0,-1764 # 80006090 <kvmincrease+0x1c0>
    8000177c:	00001097          	auipc	ra,0x1
    80001780:	0c0080e7          	jalr	192(ra) # 8000283c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001784:	00000693          	li	a3,0
    80001788:	fa1ff06f          	j	80001728 <_Z11workerBodyBv+0x20>
}
    8000178c:	01813083          	ld	ra,24(sp)
    80001790:	01013403          	ld	s0,16(sp)
    80001794:	00813483          	ld	s1,8(sp)
    80001798:	02010113          	addi	sp,sp,32
    8000179c:	00008067          	ret

00000000800017a0 <_Z11workerBodyCv>:

void workerBodyC()
{
    800017a0:	fe010113          	addi	sp,sp,-32
    800017a4:	00113c23          	sd	ra,24(sp)
    800017a8:	00813823          	sd	s0,16(sp)
    800017ac:	00913423          	sd	s1,8(sp)
    800017b0:	01213023          	sd	s2,0(sp)
    800017b4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800017b8:	00000493          	li	s1,0
    800017bc:	0380006f          	j	800017f4 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800017c0:	00005517          	auipc	a0,0x5
    800017c4:	85050513          	addi	a0,a0,-1968 # 80006010 <kvmincrease+0x140>
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	074080e7          	jalr	116(ra) # 8000283c <_Z11printStringPKc>
        printInteger(i);
    800017d0:	00048513          	mv	a0,s1
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	fac080e7          	jalr	-84(ra) # 80002780 <_Z12printIntegerm>
        printString("\n");
    800017dc:	00005517          	auipc	a0,0x5
    800017e0:	8b450513          	addi	a0,a0,-1868 # 80006090 <kvmincrease+0x1c0>
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	058080e7          	jalr	88(ra) # 8000283c <_Z11printStringPKc>
    for (; i < 3; i++)
    800017ec:	0014849b          	addiw	s1,s1,1
    800017f0:	0ff4f493          	andi	s1,s1,255
    800017f4:	00200793          	li	a5,2
    800017f8:	fc97f4e3          	bgeu	a5,s1,800017c0 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800017fc:	00005517          	auipc	a0,0x5
    80001800:	81c50513          	addi	a0,a0,-2020 # 80006018 <kvmincrease+0x148>
    80001804:	00001097          	auipc	ra,0x1
    80001808:	038080e7          	jalr	56(ra) # 8000283c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000180c:	00700313          	li	t1,7
    TCB::yield();
    80001810:	00000097          	auipc	ra,0x0
    80001814:	598080e7          	jalr	1432(ra) # 80001da8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001818:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000181c:	00005517          	auipc	a0,0x5
    80001820:	80c50513          	addi	a0,a0,-2036 # 80006028 <kvmincrease+0x158>
    80001824:	00001097          	auipc	ra,0x1
    80001828:	018080e7          	jalr	24(ra) # 8000283c <_Z11printStringPKc>
    printInteger(t1);
    8000182c:	00090513          	mv	a0,s2
    80001830:	00001097          	auipc	ra,0x1
    80001834:	f50080e7          	jalr	-176(ra) # 80002780 <_Z12printIntegerm>
    printString("\n");
    80001838:	00005517          	auipc	a0,0x5
    8000183c:	85850513          	addi	a0,a0,-1960 # 80006090 <kvmincrease+0x1c0>
    80001840:	00001097          	auipc	ra,0x1
    80001844:	ffc080e7          	jalr	-4(ra) # 8000283c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001848:	00c00513          	li	a0,12
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	db0080e7          	jalr	-592(ra) # 800015fc <_ZL9fibonaccim>
    80001854:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001858:	00004517          	auipc	a0,0x4
    8000185c:	7d850513          	addi	a0,a0,2008 # 80006030 <kvmincrease+0x160>
    80001860:	00001097          	auipc	ra,0x1
    80001864:	fdc080e7          	jalr	-36(ra) # 8000283c <_Z11printStringPKc>
    printInteger(result);
    80001868:	00090513          	mv	a0,s2
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	f14080e7          	jalr	-236(ra) # 80002780 <_Z12printIntegerm>
    printString("\n");
    80001874:	00005517          	auipc	a0,0x5
    80001878:	81c50513          	addi	a0,a0,-2020 # 80006090 <kvmincrease+0x1c0>
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	fc0080e7          	jalr	-64(ra) # 8000283c <_Z11printStringPKc>
    80001884:	0380006f          	j	800018bc <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001888:	00004517          	auipc	a0,0x4
    8000188c:	78850513          	addi	a0,a0,1928 # 80006010 <kvmincrease+0x140>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	fac080e7          	jalr	-84(ra) # 8000283c <_Z11printStringPKc>
        printInteger(i);
    80001898:	00048513          	mv	a0,s1
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	ee4080e7          	jalr	-284(ra) # 80002780 <_Z12printIntegerm>
        printString("\n");
    800018a4:	00004517          	auipc	a0,0x4
    800018a8:	7ec50513          	addi	a0,a0,2028 # 80006090 <kvmincrease+0x1c0>
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	f90080e7          	jalr	-112(ra) # 8000283c <_Z11printStringPKc>
    for (; i < 6; i++)
    800018b4:	0014849b          	addiw	s1,s1,1
    800018b8:	0ff4f493          	andi	s1,s1,255
    800018bc:	00500793          	li	a5,5
    800018c0:	fc97f4e3          	bgeu	a5,s1,80001888 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800018c4:	01813083          	ld	ra,24(sp)
    800018c8:	01013403          	ld	s0,16(sp)
    800018cc:	00813483          	ld	s1,8(sp)
    800018d0:	00013903          	ld	s2,0(sp)
    800018d4:	02010113          	addi	sp,sp,32
    800018d8:	00008067          	ret

00000000800018dc <_Z11workerBodyDv>:

void workerBodyD()
{
    800018dc:	fe010113          	addi	sp,sp,-32
    800018e0:	00113c23          	sd	ra,24(sp)
    800018e4:	00813823          	sd	s0,16(sp)
    800018e8:	00913423          	sd	s1,8(sp)
    800018ec:	01213023          	sd	s2,0(sp)
    800018f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800018f4:	00a00493          	li	s1,10
    800018f8:	0380006f          	j	80001930 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800018fc:	00004517          	auipc	a0,0x4
    80001900:	74450513          	addi	a0,a0,1860 # 80006040 <kvmincrease+0x170>
    80001904:	00001097          	auipc	ra,0x1
    80001908:	f38080e7          	jalr	-200(ra) # 8000283c <_Z11printStringPKc>
        printInteger(i);
    8000190c:	00048513          	mv	a0,s1
    80001910:	00001097          	auipc	ra,0x1
    80001914:	e70080e7          	jalr	-400(ra) # 80002780 <_Z12printIntegerm>
        printString("\n");
    80001918:	00004517          	auipc	a0,0x4
    8000191c:	77850513          	addi	a0,a0,1912 # 80006090 <kvmincrease+0x1c0>
    80001920:	00001097          	auipc	ra,0x1
    80001924:	f1c080e7          	jalr	-228(ra) # 8000283c <_Z11printStringPKc>
    for (; i < 13; i++)
    80001928:	0014849b          	addiw	s1,s1,1
    8000192c:	0ff4f493          	andi	s1,s1,255
    80001930:	00c00793          	li	a5,12
    80001934:	fc97f4e3          	bgeu	a5,s1,800018fc <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001938:	00004517          	auipc	a0,0x4
    8000193c:	71050513          	addi	a0,a0,1808 # 80006048 <kvmincrease+0x178>
    80001940:	00001097          	auipc	ra,0x1
    80001944:	efc080e7          	jalr	-260(ra) # 8000283c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001948:	00500313          	li	t1,5
    TCB::yield();
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	45c080e7          	jalr	1116(ra) # 80001da8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001954:	01000513          	li	a0,16
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	ca4080e7          	jalr	-860(ra) # 800015fc <_ZL9fibonaccim>
    80001960:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001964:	00004517          	auipc	a0,0x4
    80001968:	6f450513          	addi	a0,a0,1780 # 80006058 <kvmincrease+0x188>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	ed0080e7          	jalr	-304(ra) # 8000283c <_Z11printStringPKc>
    printInteger(result);
    80001974:	00090513          	mv	a0,s2
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	e08080e7          	jalr	-504(ra) # 80002780 <_Z12printIntegerm>
    printString("\n");
    80001980:	00004517          	auipc	a0,0x4
    80001984:	71050513          	addi	a0,a0,1808 # 80006090 <kvmincrease+0x1c0>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	eb4080e7          	jalr	-332(ra) # 8000283c <_Z11printStringPKc>
    80001990:	0380006f          	j	800019c8 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001994:	00004517          	auipc	a0,0x4
    80001998:	6ac50513          	addi	a0,a0,1708 # 80006040 <kvmincrease+0x170>
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	ea0080e7          	jalr	-352(ra) # 8000283c <_Z11printStringPKc>
        printInteger(i);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	dd8080e7          	jalr	-552(ra) # 80002780 <_Z12printIntegerm>
        printString("\n");
    800019b0:	00004517          	auipc	a0,0x4
    800019b4:	6e050513          	addi	a0,a0,1760 # 80006090 <kvmincrease+0x1c0>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	e84080e7          	jalr	-380(ra) # 8000283c <_Z11printStringPKc>
    for (; i < 16; i++)
    800019c0:	0014849b          	addiw	s1,s1,1
    800019c4:	0ff4f493          	andi	s1,s1,255
    800019c8:	00f00793          	li	a5,15
    800019cc:	fc97f4e3          	bgeu	a5,s1,80001994 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800019d0:	01813083          	ld	ra,24(sp)
    800019d4:	01013403          	ld	s0,16(sp)
    800019d8:	00813483          	ld	s1,8(sp)
    800019dc:	00013903          	ld	s2,0(sp)
    800019e0:	02010113          	addi	sp,sp,32
    800019e4:	00008067          	ret

00000000800019e8 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.hpp"

#include "../test/test_file.hpp"
#include "../h/syscall_cpp.hpp"

void userMainWrapper(void* arg){
    800019e8:	ff010113          	addi	sp,sp,-16
    800019ec:	00113423          	sd	ra,8(sp)
    800019f0:	00813023          	sd	s0,0(sp)
    800019f4:	01010413          	addi	s0,sp,16
    userMain();
    800019f8:	00002097          	auipc	ra,0x2
    800019fc:	b80080e7          	jalr	-1152(ra) # 80003578 <_Z8userMainv>
}
    80001a00:	00813083          	ld	ra,8(sp)
    80001a04:	00013403          	ld	s0,0(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN7WorkerA9testBodyAEPv>:
        printString("WorkerBodyA");
        testBodyB(nullptr);
    }
};

void WorkerA::testBodyA(void* arg) {
    80001a10:	fe010113          	addi	sp,sp,-32
    80001a14:	00113c23          	sd	ra,24(sp)
    80001a18:	00813823          	sd	s0,16(sp)
    80001a1c:	00913423          	sd	s1,8(sp)
    80001a20:	01213023          	sd	s2,0(sp)
    80001a24:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001a28:	00000913          	li	s2,0
    80001a2c:	0380006f          	j	80001a64 <_ZN7WorkerA9testBodyAEPv+0x54>
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	9e4080e7          	jalr	-1564(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001a38:	00148493          	addi	s1,s1,1
    80001a3c:	000027b7          	lui	a5,0x2
    80001a40:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a44:	0097ee63          	bltu	a5,s1,80001a60 <_ZN7WorkerA9testBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001a48:	00000713          	li	a4,0
    80001a4c:	000077b7          	lui	a5,0x7
    80001a50:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001a54:	fce7eee3          	bltu	a5,a4,80001a30 <_ZN7WorkerA9testBodyAEPv+0x20>
    80001a58:	00170713          	addi	a4,a4,1
    80001a5c:	ff1ff06f          	j	80001a4c <_ZN7WorkerA9testBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001a60:	00190913          	addi	s2,s2,1
    80001a64:	00900793          	li	a5,9
    80001a68:	0327ec63          	bltu	a5,s2,80001aa0 <_ZN7WorkerA9testBodyAEPv+0x90>
        printString("A: i="); printInteger(i); printString("\n");
    80001a6c:	00004517          	auipc	a0,0x4
    80001a70:	59450513          	addi	a0,a0,1428 # 80006000 <kvmincrease+0x130>
    80001a74:	00001097          	auipc	ra,0x1
    80001a78:	dc8080e7          	jalr	-568(ra) # 8000283c <_Z11printStringPKc>
    80001a7c:	00090513          	mv	a0,s2
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	d00080e7          	jalr	-768(ra) # 80002780 <_Z12printIntegerm>
    80001a88:	00004517          	auipc	a0,0x4
    80001a8c:	60850513          	addi	a0,a0,1544 # 80006090 <kvmincrease+0x1c0>
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	dac080e7          	jalr	-596(ra) # 8000283c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001a98:	00000493          	li	s1,0
    80001a9c:	fa1ff06f          	j	80001a3c <_ZN7WorkerA9testBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001aa0:	00004517          	auipc	a0,0x4
    80001aa4:	5c850513          	addi	a0,a0,1480 # 80006068 <kvmincrease+0x198>
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	d94080e7          	jalr	-620(ra) # 8000283c <_Z11printStringPKc>
    //finishedA = true;
}
    80001ab0:	01813083          	ld	ra,24(sp)
    80001ab4:	01013403          	ld	s0,16(sp)
    80001ab8:	00813483          	ld	s1,8(sp)
    80001abc:	00013903          	ld	s2,0(sp)
    80001ac0:	02010113          	addi	sp,sp,32
    80001ac4:	00008067          	ret

0000000080001ac8 <_ZN7WorkerB9testBodyBEPv>:

void WorkerB::testBodyB(void* arg) {
    80001ac8:	fe010113          	addi	sp,sp,-32
    80001acc:	00113c23          	sd	ra,24(sp)
    80001ad0:	00813823          	sd	s0,16(sp)
    80001ad4:	00913423          	sd	s1,8(sp)
    80001ad8:	01213023          	sd	s2,0(sp)
    80001adc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001ae0:	00000913          	li	s2,0
    80001ae4:	0380006f          	j	80001b1c <_ZN7WorkerB9testBodyBEPv+0x54>
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	92c080e7          	jalr	-1748(ra) # 80001414 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001af0:	00148493          	addi	s1,s1,1
    80001af4:	000027b7          	lui	a5,0x2
    80001af8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001afc:	0097ee63          	bltu	a5,s1,80001b18 <_ZN7WorkerB9testBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001b00:	00000713          	li	a4,0
    80001b04:	000077b7          	lui	a5,0x7
    80001b08:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001b0c:	fce7eee3          	bltu	a5,a4,80001ae8 <_ZN7WorkerB9testBodyBEPv+0x20>
    80001b10:	00170713          	addi	a4,a4,1
    80001b14:	ff1ff06f          	j	80001b04 <_ZN7WorkerB9testBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001b18:	00190913          	addi	s2,s2,1
    80001b1c:	00f00793          	li	a5,15
    80001b20:	0327ec63          	bltu	a5,s2,80001b58 <_ZN7WorkerB9testBodyBEPv+0x90>
        printString("B: i="); printInteger(i); printString("\n");
    80001b24:	00004517          	auipc	a0,0x4
    80001b28:	4e450513          	addi	a0,a0,1252 # 80006008 <kvmincrease+0x138>
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	d10080e7          	jalr	-752(ra) # 8000283c <_Z11printStringPKc>
    80001b34:	00090513          	mv	a0,s2
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	c48080e7          	jalr	-952(ra) # 80002780 <_Z12printIntegerm>
    80001b40:	00004517          	auipc	a0,0x4
    80001b44:	55050513          	addi	a0,a0,1360 # 80006090 <kvmincrease+0x1c0>
    80001b48:	00001097          	auipc	ra,0x1
    80001b4c:	cf4080e7          	jalr	-780(ra) # 8000283c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001b50:	00000493          	li	s1,0
    80001b54:	fa1ff06f          	j	80001af4 <_ZN7WorkerB9testBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001b58:	00004517          	auipc	a0,0x4
    80001b5c:	52050513          	addi	a0,a0,1312 # 80006078 <kvmincrease+0x1a8>
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	cdc080e7          	jalr	-804(ra) # 8000283c <_Z11printStringPKc>
    //finishedB = true;
    thread_dispatch();
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	8ac080e7          	jalr	-1876(ra) # 80001414 <_Z15thread_dispatchv>
}
    80001b70:	01813083          	ld	ra,24(sp)
    80001b74:	01013403          	ld	s0,16(sp)
    80001b78:	00813483          	ld	s1,8(sp)
    80001b7c:	00013903          	ld	s2,0(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret

0000000080001b88 <main>:

int main ()
{
    80001b88:	fd010113          	addi	sp,sp,-48
    80001b8c:	02113423          	sd	ra,40(sp)
    80001b90:	02813023          	sd	s0,32(sp)
    80001b94:	00913c23          	sd	s1,24(sp)
    80001b98:	01213823          	sd	s2,16(sp)
    80001b9c:	03010413          	addi	s0,sp,48
    //printString("Started \n");

    TCB *mainThread = TCB::createThread(nullptr, nullptr, nullptr);
    80001ba0:	00000613          	li	a2,0
    80001ba4:	00000593          	li	a1,0
    80001ba8:	00000513          	li	a0,0
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	12c080e7          	jalr	300(ra) # 80001cd8 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80001bb4:	00050913          	mv	s2,a0
    TCB::running = mainThread;
    80001bb8:	00006797          	auipc	a5,0x6
    80001bbc:	9d87b783          	ld	a5,-1576(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001bc0:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec( (uint64) &Riscv::supervisorTrap);   //adresa prekidne rutine
    80001bc4:	00006797          	auipc	a5,0x6
    80001bc8:	9b47b783          	ld	a5,-1612(a5) # 80007578 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001bcc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001bd0:	00200793          	li	a5,2
    80001bd4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE); // supervisor interrupt enable

    printString("Started \n");
    80001bd8:	00004517          	auipc	a0,0x4
    80001bdc:	4b050513          	addi	a0,a0,1200 # 80006088 <kvmincrease+0x1b8>
    80001be0:	00001097          	auipc	ra,0x1
    80001be4:	c5c080e7          	jalr	-932(ra) # 8000283c <_Z11printStringPKc>

    //TCB *userMainThread = TCB::createThread(userMain, nullptr, nullptr);
    thread_t userMainThread;
    thread_create(&userMainThread, userMainWrapper, nullptr);
    80001be8:	00000613          	li	a2,0
    80001bec:	00000597          	auipc	a1,0x0
    80001bf0:	dfc58593          	addi	a1,a1,-516 # 800019e8 <_Z15userMainWrapperPv>
    80001bf4:	fd840513          	addi	a0,s0,-40
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	6c4080e7          	jalr	1732(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_start(userMainThread);
    80001c00:	fd843503          	ld	a0,-40(s0)
    80001c04:	fffff097          	auipc	ra,0xfffff
    80001c08:	764080e7          	jalr	1892(ra) # 80001368 <_Z12thread_startP3TCB>


    while (!(userMainThread->isFinished() )) {
    80001c0c:	fd843483          	ld	s1,-40(s0)
        BLOCKED
    };

    ~TCB() { delete[] stack; }

    bool isFinished() const { return status == FINISHED; }
    80001c10:	0304a703          	lw	a4,48(s1)
    80001c14:	00300793          	li	a5,3
    80001c18:	00f70863          	beq	a4,a5,80001c28 <main+0xa0>
       TCB::yield();
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	18c080e7          	jalr	396(ra) # 80001da8 <_ZN3TCB5yieldEv>
    80001c24:	fe9ff06f          	j	80001c0c <main+0x84>
    }

    delete userMainThread;
    80001c28:	02048063          	beqz	s1,80001c48 <main+0xc0>
    ~TCB() { delete[] stack; }
    80001c2c:	0084b503          	ld	a0,8(s1)
    80001c30:	00050663          	beqz	a0,80001c3c <main+0xb4>
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	2bc080e7          	jalr	700(ra) # 80001ef0 <_ZdaPv>
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	288080e7          	jalr	648(ra) # 80001ec8 <_ZdlPv>
    delete mainThread;
    80001c48:	02090063          	beqz	s2,80001c68 <main+0xe0>
    80001c4c:	00893503          	ld	a0,8(s2)
    80001c50:	00050663          	beqz	a0,80001c5c <main+0xd4>
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	29c080e7          	jalr	668(ra) # 80001ef0 <_ZdaPv>
    80001c5c:	00090513          	mv	a0,s2
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	268080e7          	jalr	616(ra) # 80001ec8 <_ZdlPv>

    printString("Finished! \n" );
    80001c68:	00004517          	auipc	a0,0x4
    80001c6c:	43050513          	addi	a0,a0,1072 # 80006098 <kvmincrease+0x1c8>
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	bcc080e7          	jalr	-1076(ra) # 8000283c <_Z11printStringPKc>

    return 0;
    80001c78:	00000513          	li	a0,0
    80001c7c:	02813083          	ld	ra,40(sp)
    80001c80:	02013403          	ld	s0,32(sp)
    80001c84:	01813483          	ld	s1,24(sp)
    80001c88:	01013903          	ld	s2,16(sp)
    80001c8c:	03010113          	addi	sp,sp,48
    80001c90:	00008067          	ret

0000000080001c94 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00113423          	sd	ra,8(sp)
    80001c9c:	00813023          	sd	s0,0(sp)
    80001ca0:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	5a4080e7          	jalr	1444(ra) # 80002248 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001cac:	00006797          	auipc	a5,0x6
    80001cb0:	9347b783          	ld	a5,-1740(a5) # 800075e0 <_ZN3TCB7runningE>
    80001cb4:	0007b703          	ld	a4,0(a5)
    80001cb8:	0107b503          	ld	a0,16(a5)
    80001cbc:	000700e7          	jalr	a4
    //running->setFinished(true); //implicitno se zavrsava nit
    thread_exit();
    80001cc0:	fffff097          	auipc	ra,0xfffff
    80001cc4:	718080e7          	jalr	1816(ra) # 800013d8 <_Z11thread_exitv>
}
    80001cc8:	00813083          	ld	ra,8(sp)
    80001ccc:	00013403          	ld	s0,0(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
TCB* TCB::createThread(Body body, void* arg, uint64* stack){
    80001cd8:	fd010113          	addi	sp,sp,-48
    80001cdc:	02113423          	sd	ra,40(sp)
    80001ce0:	02813023          	sd	s0,32(sp)
    80001ce4:	00913c23          	sd	s1,24(sp)
    80001ce8:	01213823          	sd	s2,16(sp)
    80001cec:	01313423          	sd	s3,8(sp)
    80001cf0:	03010413          	addi	s0,sp,48
    80001cf4:	00050913          	mv	s2,a0
    80001cf8:	00058993          	mv	s3,a1
    return new TCB(body, arg, stack, TIME_SLICE);
    80001cfc:	03800513          	li	a0,56
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	178080e7          	jalr	376(ra) # 80001e78 <_Znwm>
    80001d08:	00050493          	mv	s1,a0
            (uint64) &threadWrapper,
            //stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
            this->stack != nullptr ? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0
        }),
        timeSlice(timeSlice),
        status(CREATED)
    80001d0c:	01253023          	sd	s2,0(a0)
        stack( body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001d10:	00090a63          	beqz	s2,80001d24 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x4c>
    80001d14:	00008537          	lui	a0,0x8
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	188080e7          	jalr	392(ra) # 80001ea0 <_Znam>
    80001d20:	0080006f          	j	80001d28 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x50>
    80001d24:	00000513          	li	a0,0
        status(CREATED)
    80001d28:	00a4b423          	sd	a0,8(s1)
    80001d2c:	0134b823          	sd	s3,16(s1)
    80001d30:	00000797          	auipc	a5,0x0
    80001d34:	f6478793          	addi	a5,a5,-156 # 80001c94 <_ZN3TCB13threadWrapperEv>
    80001d38:	00f4bc23          	sd	a5,24(s1)
            this->stack != nullptr ? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0
    80001d3c:	04050063          	beqz	a0,80001d7c <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
    80001d40:	000087b7          	lui	a5,0x8
    80001d44:	00f507b3          	add	a5,a0,a5
        status(CREATED)
    80001d48:	02f4b023          	sd	a5,32(s1)
    80001d4c:	00200793          	li	a5,2
    80001d50:	02f4b423          	sd	a5,40(s1)
    80001d54:	0204a823          	sw	zero,48(s1)
    {
        //if (body != nullptr) { start(); }
        if (body != nullptr) {}
    80001d58:	02090663          	beqz	s2,80001d84 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
}
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	02813083          	ld	ra,40(sp)
    80001d64:	02013403          	ld	s0,32(sp)
    80001d68:	01813483          	ld	s1,24(sp)
    80001d6c:	01013903          	ld	s2,16(sp)
    80001d70:	00813983          	ld	s3,8(sp)
    80001d74:	03010113          	addi	sp,sp,48
    80001d78:	00008067          	ret
            this->stack != nullptr ? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0
    80001d7c:	00000793          	li	a5,0
    80001d80:	fc9ff06f          	j	80001d48 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x70>
        else { status = RUNNING; }
    80001d84:	02f4a823          	sw	a5,48(s1)
    return new TCB(body, arg, stack, TIME_SLICE);
    80001d88:	fd5ff06f          	j	80001d5c <_ZN3TCB12createThreadEPFvPvES0_Pm+0x84>
    80001d8c:	00050913          	mv	s2,a0
    80001d90:	00048513          	mv	a0,s1
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	134080e7          	jalr	308(ra) # 80001ec8 <_ZdlPv>
    80001d9c:	00090513          	mv	a0,s2
    80001da0:	00007097          	auipc	ra,0x7
    80001da4:	948080e7          	jalr	-1720(ra) # 800086e8 <_Unwind_Resume>

0000000080001da8 <_ZN3TCB5yieldEv>:
{
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00813423          	sd	s0,8(sp)
    80001db0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001db4:	00000073          	ecall
};
    80001db8:	00813403          	ld	s0,8(sp)
    80001dbc:	01010113          	addi	sp,sp,16
    80001dc0:	00008067          	ret

0000000080001dc4 <_ZN3TCB8dispatchEv>:
{
    80001dc4:	fe010113          	addi	sp,sp,-32
    80001dc8:	00113c23          	sd	ra,24(sp)
    80001dcc:	00813823          	sd	s0,16(sp)
    80001dd0:	00913423          	sd	s1,8(sp)
    80001dd4:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001dd8:	00006497          	auipc	s1,0x6
    80001ddc:	8084b483          	ld	s1,-2040(s1) # 800075e0 <_ZN3TCB7runningE>
    bool isFinished() const { return status == FINISHED; }
    80001de0:	0304a783          	lw	a5,48(s1)
    if (!old->isFinished() && old->status != BLOCKED) { old->status = READY; Scheduler::put(old); }
    80001de4:	00300713          	li	a4,3
    80001de8:	00e78663          	beq	a5,a4,80001df4 <_ZN3TCB8dispatchEv+0x30>
    80001dec:	00400713          	li	a4,4
    80001df0:	04e79063          	bne	a5,a4,80001e30 <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	884080e7          	jalr	-1916(ra) # 80002678 <_ZN9Scheduler3getEv>
    80001dfc:	00005797          	auipc	a5,0x5
    80001e00:	7ea7b223          	sd	a0,2020(a5) # 800075e0 <_ZN3TCB7runningE>
    running->status = RUNNING;
    80001e04:	00200793          	li	a5,2
    80001e08:	02f52823          	sw	a5,48(a0) # 8030 <_entry-0x7fff7fd0>
    TCB::contextSwitch(&old->context, &running->context);
    80001e0c:	01850593          	addi	a1,a0,24
    80001e10:	01848513          	addi	a0,s1,24
    80001e14:	fffff097          	auipc	ra,0xfffff
    80001e18:	3fc080e7          	jalr	1020(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e1c:	01813083          	ld	ra,24(sp)
    80001e20:	01013403          	ld	s0,16(sp)
    80001e24:	00813483          	ld	s1,8(sp)
    80001e28:	02010113          	addi	sp,sp,32
    80001e2c:	00008067          	ret
    if (!old->isFinished() && old->status != BLOCKED) { old->status = READY; Scheduler::put(old); }
    80001e30:	00100793          	li	a5,1
    80001e34:	02f4a823          	sw	a5,48(s1)
    80001e38:	00048513          	mv	a0,s1
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	8a4080e7          	jalr	-1884(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
    80001e44:	fb1ff06f          	j	80001df4 <_ZN3TCB8dispatchEv+0x30>

0000000080001e48 <_ZN3TCB5startEv>:

void TCB::start()
{
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00113423          	sd	ra,8(sp)
    80001e50:	00813023          	sd	s0,0(sp)
    80001e54:	01010413          	addi	s0,sp,16
    this->status = READY;
    80001e58:	00100793          	li	a5,1
    80001e5c:	02f52823          	sw	a5,48(a0)
    Scheduler::put(this);
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	880080e7          	jalr	-1920(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_Znwm>:
#include "../lib/mem.h"

void *operator new(uint64 n)
{
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	00813023          	sd	s0,0(sp)
    80001e84:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001e88:	00004097          	auipc	ra,0x4
    80001e8c:	dd0080e7          	jalr	-560(ra) # 80005c58 <__mem_alloc>
}
    80001e90:	00813083          	ld	ra,8(sp)
    80001e94:	00013403          	ld	s0,0(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret

0000000080001ea0 <_Znam>:

void *operator new[](uint64 n)
{
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00113423          	sd	ra,8(sp)
    80001ea8:	00813023          	sd	s0,0(sp)
    80001eac:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001eb0:	00004097          	auipc	ra,0x4
    80001eb4:	da8080e7          	jalr	-600(ra) # 80005c58 <__mem_alloc>
}
    80001eb8:	00813083          	ld	ra,8(sp)
    80001ebc:	00013403          	ld	s0,0(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZdlPv>:

void operator delete( void* p) noexcept
{
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00113423          	sd	ra,8(sp)
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    __mem_free( p );
    80001ed8:	00004097          	auipc	ra,0x4
    80001edc:	cb4080e7          	jalr	-844(ra) # 80005b8c <__mem_free>
}
    80001ee0:	00813083          	ld	ra,8(sp)
    80001ee4:	00013403          	ld	s0,0(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZdaPv>:

void operator delete[]( void* p) noexcept
{
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00113423          	sd	ra,8(sp)
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	01010413          	addi	s0,sp,16
    __mem_free( p );
    80001f00:	00004097          	auipc	ra,0x4
    80001f04:	c8c080e7          	jalr	-884(ra) # 80005b8c <__mem_free>
    80001f08:	00813083          	ld	ra,8(sp)
    80001f0c:	00013403          	ld	s0,0(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN6Thread10runWrapperEPv>:
Thread::Thread() {
    thread_create( &myHandle, Thread::runWrapper, this);
}

void Thread::runWrapper(void *arg)
{
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00113423          	sd	ra,8(sp)
    80001f20:	00813023          	sd	s0,0(sp)
    80001f24:	01010413          	addi	s0,sp,16
    //void* curr = TCB::running->getArg();
    ((Thread*)arg)->run();
    80001f28:	00053783          	ld	a5,0(a0)
    80001f2c:	0107b783          	ld	a5,16(a5)
    80001f30:	000780e7          	jalr	a5
    //((Thread*)arg)->run();
    /*Thread* sth = (Thread*) arg;
    if (sth);*/
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	00813823          	sd	s0,16(sp)
    80001f50:	00913423          	sd	s1,8(sp)
    80001f54:	02010413          	addi	s0,sp,32
    80001f58:	00050493          	mv	s1,a0
    80001f5c:	00005797          	auipc	a5,0x5
    80001f60:	54c78793          	addi	a5,a5,1356 # 800074a8 <_ZTV6Thread+0x10>
    80001f64:	00f53023          	sd	a5,0(a0)
    thread_exit();
    80001f68:	fffff097          	auipc	ra,0xfffff
    80001f6c:	470080e7          	jalr	1136(ra) # 800013d8 <_Z11thread_exitv>
    delete myHandle;
    80001f70:	0084b483          	ld	s1,8(s1)
    80001f74:	02048063          	beqz	s1,80001f94 <_ZN6ThreadD1Ev+0x50>
    ~TCB() { delete[] stack; }
    80001f78:	0084b503          	ld	a0,8(s1)
    80001f7c:	00050663          	beqz	a0,80001f88 <_ZN6ThreadD1Ev+0x44>
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	f70080e7          	jalr	-144(ra) # 80001ef0 <_ZdaPv>
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	f3c080e7          	jalr	-196(ra) # 80001ec8 <_ZdlPv>
}
    80001f94:	01813083          	ld	ra,24(sp)
    80001f98:	01013403          	ld	s0,16(sp)
    80001f9c:	00813483          	ld	s1,8(sp)
    80001fa0:	02010113          	addi	sp,sp,32
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001fa8:	fe010113          	addi	sp,sp,-32
    80001fac:	00113c23          	sd	ra,24(sp)
    80001fb0:	00813823          	sd	s0,16(sp)
    80001fb4:	00913423          	sd	s1,8(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	00050493          	mv	s1,a0
}
    80001fc0:	00000097          	auipc	ra,0x0
    80001fc4:	f84080e7          	jalr	-124(ra) # 80001f44 <_ZN6ThreadD1Ev>
    80001fc8:	00048513          	mv	a0,s1
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	efc080e7          	jalr	-260(ra) # 80001ec8 <_ZdlPv>
    80001fd4:	01813083          	ld	ra,24(sp)
    80001fd8:	01013403          	ld	s0,16(sp)
    80001fdc:	00813483          	ld	s1,8(sp)
    80001fe0:	02010113          	addi	sp,sp,32
    80001fe4:	00008067          	ret

0000000080001fe8 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00113423          	sd	ra,8(sp)
    80001ff0:	00813023          	sd	s0,0(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    80001ff8:	00005797          	auipc	a5,0x5
    80001ffc:	4d878793          	addi	a5,a5,1240 # 800074d0 <_ZTV9Semaphore+0x10>
    80002000:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002004:	00853503          	ld	a0,8(a0)
    80002008:	fffff097          	auipc	ra,0xfffff
    8000200c:	4ac080e7          	jalr	1196(ra) # 800014b4 <_Z9sem_closeP4_sem>
}
    80002010:	00813083          	ld	ra,8(sp)
    80002014:	00013403          	ld	s0,0(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002020:	fe010113          	addi	sp,sp,-32
    80002024:	00113c23          	sd	ra,24(sp)
    80002028:	00813823          	sd	s0,16(sp)
    8000202c:	00913423          	sd	s1,8(sp)
    80002030:	02010413          	addi	s0,sp,32
    80002034:	00050493          	mv	s1,a0
}
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	fb0080e7          	jalr	-80(ra) # 80001fe8 <_ZN9SemaphoreD1Ev>
    80002040:	00048513          	mv	a0,s1
    80002044:	00000097          	auipc	ra,0x0
    80002048:	e84080e7          	jalr	-380(ra) # 80001ec8 <_ZdlPv>
    8000204c:	01813083          	ld	ra,24(sp)
    80002050:	01013403          	ld	s0,16(sp)
    80002054:	00813483          	ld	s1,8(sp)
    80002058:	02010113          	addi	sp,sp,32
    8000205c:	00008067          	ret

0000000080002060 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread (void (*body) (void*), void* arg)
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00113423          	sd	ra,8(sp)
    80002068:	00813023          	sd	s0,0(sp)
    8000206c:	01010413          	addi	s0,sp,16
    80002070:	00005797          	auipc	a5,0x5
    80002074:	43878793          	addi	a5,a5,1080 # 800074a8 <_ZTV6Thread+0x10>
    80002078:	00f53023          	sd	a5,0(a0)
    thread_create( &myHandle, body, arg);
    8000207c:	00850513          	addi	a0,a0,8
    80002080:	fffff097          	auipc	ra,0xfffff
    80002084:	23c080e7          	jalr	572(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002088:	00813083          	ld	ra,8(sp)
    8000208c:	00013403          	ld	s0,0(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret

0000000080002098 <_ZN6Thread5startEv>:
int Thread::start() {
    80002098:	ff010113          	addi	sp,sp,-16
    8000209c:	00113423          	sd	ra,8(sp)
    800020a0:	00813023          	sd	s0,0(sp)
    800020a4:	01010413          	addi	s0,sp,16
    thread_start(myHandle);
    800020a8:	00853503          	ld	a0,8(a0)
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	2bc080e7          	jalr	700(ra) # 80001368 <_Z12thread_startP3TCB>
}
    800020b4:	00000513          	li	a0,0
    800020b8:	00813083          	ld	ra,8(sp)
    800020bc:	00013403          	ld	s0,0(sp)
    800020c0:	01010113          	addi	sp,sp,16
    800020c4:	00008067          	ret

00000000800020c8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800020c8:	ff010113          	addi	sp,sp,-16
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	00813023          	sd	s0,0(sp)
    800020d4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	33c080e7          	jalr	828(ra) # 80001414 <_Z15thread_dispatchv>
}
    800020e0:	00813083          	ld	ra,8(sp)
    800020e4:	00013403          	ld	s0,0(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
}
    800020fc:	00000513          	li	a0,0
    80002100:	00813403          	ld	s0,8(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00113423          	sd	ra,8(sp)
    80002114:	00813023          	sd	s0,0(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	00005797          	auipc	a5,0x5
    80002120:	38c78793          	addi	a5,a5,908 # 800074a8 <_ZTV6Thread+0x10>
    80002124:	00f53023          	sd	a5,0(a0)
    thread_create( &myHandle, Thread::runWrapper, this);
    80002128:	00050613          	mv	a2,a0
    8000212c:	00000597          	auipc	a1,0x0
    80002130:	dec58593          	addi	a1,a1,-532 # 80001f18 <_ZN6Thread10runWrapperEPv>
    80002134:	00850513          	addi	a0,a0,8
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	184080e7          	jalr	388(ra) # 800012bc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002140:	00813083          	ld	ra,8(sp)
    80002144:	00013403          	ld	s0,0(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret

0000000080002150 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00113423          	sd	ra,8(sp)
    80002158:	00813023          	sd	s0,0(sp)
    8000215c:	01010413          	addi	s0,sp,16
    80002160:	00005797          	auipc	a5,0x5
    80002164:	37078793          	addi	a5,a5,880 # 800074d0 <_ZTV9Semaphore+0x10>
    80002168:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    8000216c:	00850513          	addi	a0,a0,8
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	2dc080e7          	jalr	732(ra) # 8000144c <_Z8sem_openPP4_semj>
}
    80002178:	00813083          	ld	ra,8(sp)
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002198:	00853503          	ld	a0,8(a0)
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	360080e7          	jalr	864(ra) # 800014fc <_Z8sem_waitP4_sem>
}
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800021c4:	00853503          	ld	a0,8(a0)
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	38c080e7          	jalr	908(ra) # 80001554 <_Z10sem_signalP4_sem>
}
    800021d0:	00813083          	ld	ra,8(sp)
    800021d4:	00013403          	ld	s0,0(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <_ZN7Console4getcEv>:

//Console

char Console::getc() {
    800021e0:	ff010113          	addi	sp,sp,-16
    800021e4:	00113423          	sd	ra,8(sp)
    800021e8:	00813023          	sd	s0,0(sp)
    800021ec:	01010413          	addi	s0,sp,16
    return ::getc();
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	3bc080e7          	jalr	956(ra) # 800015ac <_Z4getcv>
}
    800021f8:	00813083          	ld	ra,8(sp)
    800021fc:	00013403          	ld	s0,0(sp)
    80002200:	01010113          	addi	sp,sp,16
    80002204:	00008067          	ret

0000000080002208 <_ZN7Console4putcEc>:

void Console::putc(char chr) {
    80002208:	ff010113          	addi	sp,sp,-16
    8000220c:	00113423          	sd	ra,8(sp)
    80002210:	00813023          	sd	s0,0(sp)
    80002214:	01010413          	addi	s0,sp,16
    ::putc(chr);
    80002218:	fffff097          	auipc	ra,0xfffff
    8000221c:	3bc080e7          	jalr	956(ra) # 800015d4 <_Z4putcc>
}
    80002220:	00813083          	ld	ra,8(sp)
    80002224:	00013403          	ld	s0,0(sp)
    80002228:	01010113          	addi	sp,sp,16
    8000222c:	00008067          	ret

0000000080002230 <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread ();
    virtual void run() {}
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00813423          	sd	s0,8(sp)
    80002238:	01010413          	addi	s0,sp,16
    8000223c:	00813403          	ld	s0,8(sp)
    80002240:	01010113          	addi	sp,sp,16
    80002244:	00008067          	ret

0000000080002248 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    80002248:	ff010113          	addi	sp,sp,-16
    8000224c:	00813423          	sd	s0,8(sp)
    80002250:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002254:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002258:	10200073          	sret
}
    8000225c:	00813403          	ld	s0,8(sp)
    80002260:	01010113          	addi	sp,sp,16
    80002264:	00008067          	ret

0000000080002268 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002268:	f7010113          	addi	sp,sp,-144
    8000226c:	08113423          	sd	ra,136(sp)
    80002270:	08813023          	sd	s0,128(sp)
    80002274:	06913c23          	sd	s1,120(sp)
    80002278:	07213823          	sd	s2,112(sp)
    8000227c:	07313423          	sd	s3,104(sp)
    80002280:	09010413          	addi	s0,sp,144
    uint64 args [5];
    __asm__ volatile ("mv %0, a0" : "=r" (args[0]));
    80002284:	00050793          	mv	a5,a0
    80002288:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("mv %0, a1" : "=r" (args[1]));
    8000228c:	00058793          	mv	a5,a1
    80002290:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile ("mv %0, a2" : "=r" (args[2]));
    80002294:	00060793          	mv	a5,a2
    80002298:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("mv %0, a3" : "=r" (args[3]));
    8000229c:	00068793          	mv	a5,a3
    800022a0:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %0, a4" : "=r" (args[4]));
    800022a4:	00070793          	mv	a5,a4
    800022a8:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800022ac:	142027f3          	csrr	a5,scause
    800022b0:	f8f43023          	sd	a5,-128(s0)
    return scause;
    800022b4:	f8043703          	ld	a4,-128(s0)


    uint64 scause = r_scause();
    if (scause == 0x0000000000000009UL || scause == 0x0000000000000008UL) {
    800022b8:	ff870693          	addi	a3,a4,-8
    800022bc:	00100793          	li	a5,1
    800022c0:	02d7f863          	bgeu	a5,a3,800022f0 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            TCB::dispatch();
        }
        // w_sstatus i w_sepc nece raditi novokreirana nit, zato o tome treba voditi racuna u threadWrapperu
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL) {
    800022c4:	fff00793          	li	a5,-1
    800022c8:	03f79793          	slli	a5,a5,0x3f
    800022cc:	00178793          	addi	a5,a5,1
    800022d0:	16f70c63          	beq	a4,a5,80002448 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
            // w_sstatus i w_sepc nece raditi novokreirana nit, zato o tome treba voditi racuna u threadWrapperu
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP );
    } else if (scause == 0x8000000000000009UL){
    800022d4:	fff00793          	li	a5,-1
    800022d8:	03f79793          	slli	a5,a5,0x3f
    800022dc:	00978793          	addi	a5,a5,9
    800022e0:	0ef71a63          	bne	a4,a5,800023d4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
        //interrupt: yes, cause code: supervisor external interrupt (timer)
        console_handler();
    800022e4:	00004097          	auipc	ra,0x4
    800022e8:	b40080e7          	jalr	-1216(ra) # 80005e24 <console_handler>

        // print(scause)
        // print(sepc)
        // print(stval)
    }
    800022ec:	0e80006f          	j	800023d4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022f0:	141027f3          	csrr	a5,sepc
    800022f4:	f8f43823          	sd	a5,-112(s0)
    return sepc;
    800022f8:	f9043483          	ld	s1,-112(s0)
        uint64 sepc = r_sepc() + 4; // + 4 zato sto prilikom ecall instrukcije pc se ne stavlja na prvu narednu
    800022fc:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002300:	100027f3          	csrr	a5,sstatus
    80002304:	f8f43423          	sd	a5,-120(s0)
    return sstatus;
    80002308:	f8843903          	ld	s2,-120(s0)
        uint64 num = args[0];
    8000230c:	fa843783          	ld	a5,-88(s0)
        if (num == 0x01)    //mem_alloc
    80002310:	00100713          	li	a4,1
    80002314:	0ae78263          	beq	a5,a4,800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        else if (num == 0x02)   //mem_free
    80002318:	00200713          	li	a4,2
    8000231c:	08e78e63          	beq	a5,a4,800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        else if (num == 0x11)    //thread_create
    80002320:	01100713          	li	a4,17
    80002324:	04e78463          	beq	a5,a4,8000236c <_ZN5Riscv20handleSupervisorTrapEv+0x104>
        else if (num == 0x12) //thread_exit
    80002328:	01200713          	li	a4,18
    8000232c:	06e78c63          	beq	a5,a4,800023a4 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        else if (num == 0x13) //thread_dispatch
    80002330:	01300713          	li	a4,19
    80002334:	08e78263          	beq	a5,a4,800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        else if (num == 0x14) //thread_start
    80002338:	01400713          	li	a4,20
    8000233c:	0ae78a63          	beq	a5,a4,800023f0 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        else if (num == 0x21) //sem_open
    80002340:	02100713          	li	a4,33
    80002344:	0ce78263          	beq	a5,a4,80002408 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
        else if (num == 0x22) //sem_close
    80002348:	02200713          	li	a4,34
    8000234c:	06e78663          	beq	a5,a4,800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
        else if (num == 0x23) //sem_wait
    80002350:	02300713          	li	a4,35
    80002354:	0ce78663          	beq	a5,a4,80002420 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
        else if (num == 0x24) //sem_signal
    80002358:	02400713          	li	a4,36
    8000235c:	0ce78c63          	beq	a5,a4,80002434 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
        else if (num == 0x42) //putc
    80002360:	04200713          	li	a4,66
    80002364:	04e79a63          	bne	a5,a4,800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
    80002368:	0640006f          	j	800023cc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            thread_t* handle = (thread_t*) args[1];
    8000236c:	fb043983          	ld	s3,-80(s0)
            *handle = TCB::createThread(start_routine, arg, stack);
    80002370:	fc843603          	ld	a2,-56(s0)
    80002374:	fc043583          	ld	a1,-64(s0)
    80002378:	fb843503          	ld	a0,-72(s0)
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	95c080e7          	jalr	-1700(ra) # 80001cd8 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002384:	00a9b023          	sd	a0,0(s3)
            if ((uint64)handle > 0) {
    80002388:	00098863          	beqz	s3,80002398 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
                __asm__ volatile ("mv a0, %0" : : "r" (0));
    8000238c:	00000793          	li	a5,0
    80002390:	00078513          	mv	a0,a5
        if ( shouldDispatch == 1) {
    80002394:	0240006f          	j	800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
                __asm__ volatile ("mv a0, %0" : : "r" (1));
    80002398:	00100793          	li	a5,1
    8000239c:	00078513          	mv	a0,a5
        if ( shouldDispatch == 1) {
    800023a0:	0180006f          	j	800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            TCB::running->setFinished(true);
    800023a4:	00005797          	auipc	a5,0x5
    800023a8:	1ec7b783          	ld	a5,492(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023ac:	0007b783          	ld	a5,0(a5)
    void setFinished(bool finished) { if (finished) status = FINISHED; }
    800023b0:	00300713          	li	a4,3
    800023b4:	02e7a823          	sw	a4,48(a5)
            TCB::timeSliceCounter = 0;
    800023b8:	00005797          	auipc	a5,0x5
    800023bc:	1c87b783          	ld	a5,456(a5) # 80007580 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023c0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	a00080e7          	jalr	-1536(ra) # 80001dc4 <_ZN3TCB8dispatchEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023cc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023d0:	14149073          	csrw	sepc,s1
    800023d4:	08813083          	ld	ra,136(sp)
    800023d8:	08013403          	ld	s0,128(sp)
    800023dc:	07813483          	ld	s1,120(sp)
    800023e0:	07013903          	ld	s2,112(sp)
    800023e4:	06813983          	ld	s3,104(sp)
    800023e8:	09010113          	addi	sp,sp,144
    800023ec:	00008067          	ret
            handle->start();
    800023f0:	fb043503          	ld	a0,-80(s0)
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	a54080e7          	jalr	-1452(ra) # 80001e48 <_ZN3TCB5startEv>
            __asm__ volatile ("mv a0, %0" : : "r" (0));
    800023fc:	00000793          	li	a5,0
    80002400:	00078513          	mv	a0,a5
        if ( shouldDispatch == 1) {
    80002404:	fb5ff06f          	j	800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            sem_t* handle = (sem_t*) args[1];
    80002408:	fb043983          	ld	s3,-80(s0)
            *handle = _sem::createSem( init );
    8000240c:	fb842503          	lw	a0,-72(s0)
    80002410:	00000097          	auipc	ra,0x0
    80002414:	0b4080e7          	jalr	180(ra) # 800024c4 <_ZN4_sem9createSemEi>
    80002418:	00a9b023          	sd	a0,0(s3)
        if ( shouldDispatch == 1) {
    8000241c:	f9dff06f          	j	800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x150>
            int ret = sem->wait();
    80002420:	fb043503          	ld	a0,-80(s0)
    80002424:	00000097          	auipc	ra,0x0
    80002428:	0e4080e7          	jalr	228(ra) # 80002508 <_ZN4_sem4waitEv>
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
    8000242c:	00050513          	mv	a0,a0
        if ( shouldDispatch == 1) {
    80002430:	f9dff06f          	j	800023cc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
            int ret = sem->signal();
    80002434:	fb043503          	ld	a0,-80(s0)
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	170080e7          	jalr	368(ra) # 800025a8 <_ZN4_sem6signalEv>
            __asm__ volatile ("mv a0, %0" : : "r" (ret));
    80002440:	00050513          	mv	a0,a0
        if ( shouldDispatch == 1) {
    80002444:	f89ff06f          	j	800023cc <_ZN5Riscv20handleSupervisorTrapEv+0x164>
        TCB::timeSliceCounter++;
    80002448:	00005717          	auipc	a4,0x5
    8000244c:	13873703          	ld	a4,312(a4) # 80007580 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002450:	00073783          	ld	a5,0(a4)
    80002454:	00178793          	addi	a5,a5,1
    80002458:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
    8000245c:	00005717          	auipc	a4,0x5
    80002460:	13473703          	ld	a4,308(a4) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002464:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002468:	02873703          	ld	a4,40(a4)
    8000246c:	00e7f863          	bgeu	a5,a4,8000247c <_ZN5Riscv20handleSupervisorTrapEv+0x214>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002470:	00200793          	li	a5,2
    80002474:	1447b073          	csrc	sip,a5
}
    80002478:	f5dff06f          	j	800023d4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000247c:	141027f3          	csrr	a5,sepc
    80002480:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80002484:	fa043783          	ld	a5,-96(s0)
            uint64 volatile sepc = r_sepc();
    80002488:	f6f43823          	sd	a5,-144(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000248c:	100027f3          	csrr	a5,sstatus
    80002490:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80002494:	f9843783          	ld	a5,-104(s0)
            uint64 volatile sstatus = r_sstatus();
    80002498:	f6f43c23          	sd	a5,-136(s0)
            TCB::timeSliceCounter = 0;
    8000249c:	00005797          	auipc	a5,0x5
    800024a0:	0e47b783          	ld	a5,228(a5) # 80007580 <_GLOBAL_OFFSET_TABLE_+0x10>
    800024a4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	91c080e7          	jalr	-1764(ra) # 80001dc4 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800024b0:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800024b4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800024b8:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800024bc:	14179073          	csrw	sepc,a5
}
    800024c0:	fb1ff06f          	j	80002470 <_ZN5Riscv20handleSupervisorTrapEv+0x208>

00000000800024c4 <_ZN4_sem9createSemEi>:
//

#include "../h/_sem.hpp"

_sem* _sem::createSem(int val)
{
    800024c4:	fe010113          	addi	sp,sp,-32
    800024c8:	00113c23          	sd	ra,24(sp)
    800024cc:	00813823          	sd	s0,16(sp)
    800024d0:	00913423          	sd	s1,8(sp)
    800024d4:	02010413          	addi	s0,sp,32
    800024d8:	00050493          	mv	s1,a0
    return new _sem(val);
    800024dc:	01800513          	li	a0,24
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	998080e7          	jalr	-1640(ra) # 80001e78 <_Znwm>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800024e8:	00053023          	sd	zero,0(a0)
    800024ec:	00053423          	sd	zero,8(a0)

    int signal();

private:

    _sem(int val): val(val){}
    800024f0:	00952823          	sw	s1,16(a0)
}
    800024f4:	01813083          	ld	ra,24(sp)
    800024f8:	01013403          	ld	s0,16(sp)
    800024fc:	00813483          	ld	s1,8(sp)
    80002500:	02010113          	addi	sp,sp,32
    80002504:	00008067          	ret

0000000080002508 <_ZN4_sem4waitEv>:

int _sem::wait()
{
    val--;
    80002508:	01052783          	lw	a5,16(a0)
    8000250c:	fff7879b          	addiw	a5,a5,-1
    80002510:	00f52823          	sw	a5,16(a0)
    if (val < 0) {
    80002514:	02079713          	slli	a4,a5,0x20
    80002518:	00074663          	bltz	a4,80002524 <_ZN4_sem4waitEv+0x1c>
        /*TCB::running = Scheduler::get();
        TCB::running->status = TCB::RUNNING;
        TCB::contextSwitch(&old->context, &TCB::running->context);*/
    }
    return 0;
}
    8000251c:	00000513          	li	a0,0
    80002520:	00008067          	ret
{
    80002524:	fe010113          	addi	sp,sp,-32
    80002528:	00113c23          	sd	ra,24(sp)
    8000252c:	00813823          	sd	s0,16(sp)
    80002530:	00913423          	sd	s1,8(sp)
    80002534:	01213023          	sd	s2,0(sp)
    80002538:	02010413          	addi	s0,sp,32
    8000253c:	00050493          	mv	s1,a0
        TCB* old = TCB::running;
    80002540:	00005797          	auipc	a5,0x5
    80002544:	0507b783          	ld	a5,80(a5) # 80007590 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002548:	0007b903          	ld	s2,0(a5)
        old->status = TCB::BLOCKED;
    8000254c:	00400793          	li	a5,4
    80002550:	02f92823          	sw	a5,48(s2)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80002554:	01000513          	li	a0,16
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	920080e7          	jalr	-1760(ra) # 80001e78 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002560:	01253023          	sd	s2,0(a0)
    80002564:	00053423          	sd	zero,8(a0)
        if (tail)
    80002568:	0084b783          	ld	a5,8(s1)
    8000256c:	02078863          	beqz	a5,8000259c <_ZN4_sem4waitEv+0x94>
        {
            tail->next = elem;
    80002570:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002574:	00a4b423          	sd	a0,8(s1)
        TCB::dispatch();
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	84c080e7          	jalr	-1972(ra) # 80001dc4 <_ZN3TCB8dispatchEv>
}
    80002580:	00000513          	li	a0,0
    80002584:	01813083          	ld	ra,24(sp)
    80002588:	01013403          	ld	s0,16(sp)
    8000258c:	00813483          	ld	s1,8(sp)
    80002590:	00013903          	ld	s2,0(sp)
    80002594:	02010113          	addi	sp,sp,32
    80002598:	00008067          	ret
        } else
        {
            head = tail = elem;
    8000259c:	00a4b423          	sd	a0,8(s1)
    800025a0:	00a4b023          	sd	a0,0(s1)
    800025a4:	fd5ff06f          	j	80002578 <_ZN4_sem4waitEv+0x70>

00000000800025a8 <_ZN4_sem6signalEv>:

int _sem::signal()
{
    val++;
    800025a8:	01052703          	lw	a4,16(a0)
    800025ac:	0017071b          	addiw	a4,a4,1
    800025b0:	0007069b          	sext.w	a3,a4
    800025b4:	00e52823          	sw	a4,16(a0)
    if (val <= 0) {
    800025b8:	00d05663          	blez	a3,800025c4 <_ZN4_sem6signalEv+0x1c>
        TCB* curr = queue.removeFirst();
        curr->status = TCB::READY;
        Scheduler::put(curr);
    }
    return 0;
    800025bc:	00000513          	li	a0,0
    800025c0:	00008067          	ret
{
    800025c4:	fe010113          	addi	sp,sp,-32
    800025c8:	00113c23          	sd	ra,24(sp)
    800025cc:	00813823          	sd	s0,16(sp)
    800025d0:	00913423          	sd	s1,8(sp)
    800025d4:	02010413          	addi	s0,sp,32
    800025d8:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800025dc:	00053503          	ld	a0,0(a0)
    800025e0:	04050863          	beqz	a0,80002630 <_ZN4_sem6signalEv+0x88>

        Elem *elem = head;
        head = head->next;
    800025e4:	00853703          	ld	a4,8(a0)
    800025e8:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    800025ec:	02070e63          	beqz	a4,80002628 <_ZN4_sem6signalEv+0x80>

        T *ret = elem->data;
    800025f0:	00053483          	ld	s1,0(a0)
        delete elem;
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	8d4080e7          	jalr	-1836(ra) # 80001ec8 <_ZdlPv>
        curr->status = TCB::READY;
    800025fc:	00100793          	li	a5,1
    80002600:	02f4a823          	sw	a5,48(s1)
        Scheduler::put(curr);
    80002604:	00048513          	mv	a0,s1
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	0d8080e7          	jalr	216(ra) # 800026e0 <_ZN9Scheduler3putEP3TCB>
    80002610:	00000513          	li	a0,0
    80002614:	01813083          	ld	ra,24(sp)
    80002618:	01013403          	ld	s0,16(sp)
    8000261c:	00813483          	ld	s1,8(sp)
    80002620:	02010113          	addi	sp,sp,32
    80002624:	00008067          	ret
        if (!head) { tail = 0; }
    80002628:	0007b423          	sd	zero,8(a5)
    8000262c:	fc5ff06f          	j	800025f0 <_ZN4_sem6signalEv+0x48>
        if (!head) { return 0; }
    80002630:	00050493          	mv	s1,a0
    80002634:	fc9ff06f          	j	800025fc <_ZN4_sem6signalEv+0x54>

0000000080002638 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00813423          	sd	s0,8(sp)
    80002640:	01010413          	addi	s0,sp,16
    80002644:	00100793          	li	a5,1
    80002648:	00f50863          	beq	a0,a5,80002658 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000264c:	00813403          	ld	s0,8(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret
    80002658:	000107b7          	lui	a5,0x10
    8000265c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002660:	fef596e3          	bne	a1,a5,8000264c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002664:	00005797          	auipc	a5,0x5
    80002668:	f8c78793          	addi	a5,a5,-116 # 800075f0 <_ZN9Scheduler19readyCoroutineQueueE>
    8000266c:	0007b023          	sd	zero,0(a5)
    80002670:	0007b423          	sd	zero,8(a5)
    80002674:	fd9ff06f          	j	8000264c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002678 <_ZN9Scheduler3getEv>:
{
    80002678:	fe010113          	addi	sp,sp,-32
    8000267c:	00113c23          	sd	ra,24(sp)
    80002680:	00813823          	sd	s0,16(sp)
    80002684:	00913423          	sd	s1,8(sp)
    80002688:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    8000268c:	00005517          	auipc	a0,0x5
    80002690:	f6453503          	ld	a0,-156(a0) # 800075f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002694:	04050263          	beqz	a0,800026d8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002698:	00853783          	ld	a5,8(a0)
    8000269c:	00005717          	auipc	a4,0x5
    800026a0:	f4f73a23          	sd	a5,-172(a4) # 800075f0 <_ZN9Scheduler19readyCoroutineQueueE>
        if (!head) { tail = 0; }
    800026a4:	02078463          	beqz	a5,800026cc <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800026a8:	00053483          	ld	s1,0(a0)
        delete elem;
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	81c080e7          	jalr	-2020(ra) # 80001ec8 <_ZdlPv>
}
    800026b4:	00048513          	mv	a0,s1
    800026b8:	01813083          	ld	ra,24(sp)
    800026bc:	01013403          	ld	s0,16(sp)
    800026c0:	00813483          	ld	s1,8(sp)
    800026c4:	02010113          	addi	sp,sp,32
    800026c8:	00008067          	ret
        if (!head) { tail = 0; }
    800026cc:	00005797          	auipc	a5,0x5
    800026d0:	f207b623          	sd	zero,-212(a5) # 800075f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800026d4:	fd5ff06f          	j	800026a8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800026d8:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800026dc:	fd9ff06f          	j	800026b4 <_ZN9Scheduler3getEv+0x3c>

00000000800026e0 <_ZN9Scheduler3putEP3TCB>:
{
    800026e0:	fe010113          	addi	sp,sp,-32
    800026e4:	00113c23          	sd	ra,24(sp)
    800026e8:	00813823          	sd	s0,16(sp)
    800026ec:	00913423          	sd	s1,8(sp)
    800026f0:	02010413          	addi	s0,sp,32
    800026f4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800026f8:	01000513          	li	a0,16
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	77c080e7          	jalr	1916(ra) # 80001e78 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002704:	00953023          	sd	s1,0(a0)
    80002708:	00053423          	sd	zero,8(a0)
        if (tail)
    8000270c:	00005797          	auipc	a5,0x5
    80002710:	eec7b783          	ld	a5,-276(a5) # 800075f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002714:	02078263          	beqz	a5,80002738 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002718:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000271c:	00005797          	auipc	a5,0x5
    80002720:	eca7be23          	sd	a0,-292(a5) # 800075f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002724:	01813083          	ld	ra,24(sp)
    80002728:	01013403          	ld	s0,16(sp)
    8000272c:	00813483          	ld	s1,8(sp)
    80002730:	02010113          	addi	sp,sp,32
    80002734:	00008067          	ret
            head = tail = elem;
    80002738:	00005797          	auipc	a5,0x5
    8000273c:	eb878793          	addi	a5,a5,-328 # 800075f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002740:	00a7b423          	sd	a0,8(a5)
    80002744:	00a7b023          	sd	a0,0(a5)
    80002748:	fddff06f          	j	80002724 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000274c <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	00813023          	sd	s0,0(sp)
    80002758:	01010413          	addi	s0,sp,16
    8000275c:	000105b7          	lui	a1,0x10
    80002760:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002764:	00100513          	li	a0,1
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	ed0080e7          	jalr	-304(ra) # 80002638 <_Z41__static_initialization_and_destruction_0ii>
    80002770:	00813083          	ld	ra,8(sp)
    80002774:	00013403          	ld	s0,0(sp)
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00008067          	ret

0000000080002780 <_Z12printIntegerm>:
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}*/

void printInteger(uint64 integer)
{
    80002780:	fc010113          	addi	sp,sp,-64
    80002784:	02113c23          	sd	ra,56(sp)
    80002788:	02813823          	sd	s0,48(sp)
    8000278c:	02913423          	sd	s1,40(sp)
    80002790:	03213023          	sd	s2,32(sp)
    80002794:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002798:	100027f3          	csrr	a5,sstatus
    8000279c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800027a0:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800027a4:	00200793          	li	a5,2
    800027a8:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800027ac:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800027b0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800027b4:	00a00613          	li	a2,10
    800027b8:	02c5773b          	remuw	a4,a0,a2
    800027bc:	02071693          	slli	a3,a4,0x20
    800027c0:	0206d693          	srli	a3,a3,0x20
    800027c4:	00004717          	auipc	a4,0x4
    800027c8:	8e470713          	addi	a4,a4,-1820 # 800060a8 <_ZZ12printIntegermE6digits>
    800027cc:	00d70733          	add	a4,a4,a3
    800027d0:	00074703          	lbu	a4,0(a4)
    800027d4:	fe040693          	addi	a3,s0,-32
    800027d8:	009687b3          	add	a5,a3,s1
    800027dc:	0014849b          	addiw	s1,s1,1
    800027e0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800027e4:	0005071b          	sext.w	a4,a0
    800027e8:	02c5553b          	divuw	a0,a0,a2
    800027ec:	00900793          	li	a5,9
    800027f0:	fce7e2e3          	bltu	a5,a4,800027b4 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0)
    800027f4:	fff4849b          	addiw	s1,s1,-1
    800027f8:	0004ce63          	bltz	s1,80002814 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    800027fc:	fe040793          	addi	a5,s0,-32
    80002800:	009787b3          	add	a5,a5,s1
    80002804:	ff07c503          	lbu	a0,-16(a5)
    80002808:	00003097          	auipc	ra,0x3
    8000280c:	5a8080e7          	jalr	1448(ra) # 80005db0 <__putc>
    80002810:	fe5ff06f          	j	800027f4 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002814:	0009091b          	sext.w	s2,s2
    80002818:	00297913          	andi	s2,s2,2
    8000281c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002820:	10092073          	csrs	sstatus,s2
    80002824:	03813083          	ld	ra,56(sp)
    80002828:	03013403          	ld	s0,48(sp)
    8000282c:	02813483          	ld	s1,40(sp)
    80002830:	02013903          	ld	s2,32(sp)
    80002834:	04010113          	addi	sp,sp,64
    80002838:	00008067          	ret

000000008000283c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000283c:	fe010113          	addi	sp,sp,-32
    80002840:	00113c23          	sd	ra,24(sp)
    80002844:	00813823          	sd	s0,16(sp)
    80002848:	00913423          	sd	s1,8(sp)
    8000284c:	02010413          	addi	s0,sp,32
    80002850:	00050493          	mv	s1,a0
    LOCK();
    80002854:	00100613          	li	a2,1
    80002858:	00000593          	li	a1,0
    8000285c:	00005517          	auipc	a0,0x5
    80002860:	da450513          	addi	a0,a0,-604 # 80007600 <lockPrint>
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	9c0080e7          	jalr	-1600(ra) # 80001224 <copy_and_swap>
    8000286c:	fe0514e3          	bnez	a0,80002854 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002870:	0004c503          	lbu	a0,0(s1)
    80002874:	00050a63          	beqz	a0,80002888 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	d5c080e7          	jalr	-676(ra) # 800015d4 <_Z4putcc>
        string++;
    80002880:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002884:	fedff06f          	j	80002870 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002888:	00000613          	li	a2,0
    8000288c:	00100593          	li	a1,1
    80002890:	00005517          	auipc	a0,0x5
    80002894:	d7050513          	addi	a0,a0,-656 # 80007600 <lockPrint>
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	98c080e7          	jalr	-1652(ra) # 80001224 <copy_and_swap>
    800028a0:	fe0514e3          	bnez	a0,80002888 <_Z11printStringPKc+0x4c>
}
    800028a4:	01813083          	ld	ra,24(sp)
    800028a8:	01013403          	ld	s0,16(sp)
    800028ac:	00813483          	ld	s1,8(sp)
    800028b0:	02010113          	addi	sp,sp,32
    800028b4:	00008067          	ret

00000000800028b8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800028b8:	fd010113          	addi	sp,sp,-48
    800028bc:	02113423          	sd	ra,40(sp)
    800028c0:	02813023          	sd	s0,32(sp)
    800028c4:	00913c23          	sd	s1,24(sp)
    800028c8:	01213823          	sd	s2,16(sp)
    800028cc:	01313423          	sd	s3,8(sp)
    800028d0:	01413023          	sd	s4,0(sp)
    800028d4:	03010413          	addi	s0,sp,48
    800028d8:	00050993          	mv	s3,a0
    800028dc:	00058a13          	mv	s4,a1
    LOCK();
    800028e0:	00100613          	li	a2,1
    800028e4:	00000593          	li	a1,0
    800028e8:	00005517          	auipc	a0,0x5
    800028ec:	d1850513          	addi	a0,a0,-744 # 80007600 <lockPrint>
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	934080e7          	jalr	-1740(ra) # 80001224 <copy_and_swap>
    800028f8:	fe0514e3          	bnez	a0,800028e0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800028fc:	00000913          	li	s2,0
    80002900:	00090493          	mv	s1,s2
    80002904:	0019091b          	addiw	s2,s2,1
    80002908:	03495a63          	bge	s2,s4,8000293c <_Z9getStringPci+0x84>
        cc = getc();
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	ca0080e7          	jalr	-864(ra) # 800015ac <_Z4getcv>
        if(cc < 1)
    80002914:	02050463          	beqz	a0,8000293c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002918:	009984b3          	add	s1,s3,s1
    8000291c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002920:	00a00793          	li	a5,10
    80002924:	00f50a63          	beq	a0,a5,80002938 <_Z9getStringPci+0x80>
    80002928:	00d00793          	li	a5,13
    8000292c:	fcf51ae3          	bne	a0,a5,80002900 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002930:	00090493          	mv	s1,s2
    80002934:	0080006f          	j	8000293c <_Z9getStringPci+0x84>
    80002938:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000293c:	009984b3          	add	s1,s3,s1
    80002940:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002944:	00000613          	li	a2,0
    80002948:	00100593          	li	a1,1
    8000294c:	00005517          	auipc	a0,0x5
    80002950:	cb450513          	addi	a0,a0,-844 # 80007600 <lockPrint>
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	8d0080e7          	jalr	-1840(ra) # 80001224 <copy_and_swap>
    8000295c:	fe0514e3          	bnez	a0,80002944 <_Z9getStringPci+0x8c>
    return buf;
}
    80002960:	00098513          	mv	a0,s3
    80002964:	02813083          	ld	ra,40(sp)
    80002968:	02013403          	ld	s0,32(sp)
    8000296c:	01813483          	ld	s1,24(sp)
    80002970:	01013903          	ld	s2,16(sp)
    80002974:	00813983          	ld	s3,8(sp)
    80002978:	00013a03          	ld	s4,0(sp)
    8000297c:	03010113          	addi	sp,sp,48
    80002980:	00008067          	ret

0000000080002984 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00813423          	sd	s0,8(sp)
    8000298c:	01010413          	addi	s0,sp,16
    80002990:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002994:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002998:	0006c603          	lbu	a2,0(a3)
    8000299c:	fd06071b          	addiw	a4,a2,-48
    800029a0:	0ff77713          	andi	a4,a4,255
    800029a4:	00900793          	li	a5,9
    800029a8:	02e7e063          	bltu	a5,a4,800029c8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800029ac:	0025179b          	slliw	a5,a0,0x2
    800029b0:	00a787bb          	addw	a5,a5,a0
    800029b4:	0017979b          	slliw	a5,a5,0x1
    800029b8:	00168693          	addi	a3,a3,1
    800029bc:	00c787bb          	addw	a5,a5,a2
    800029c0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800029c4:	fd5ff06f          	j	80002998 <_Z11stringToIntPKc+0x14>
    return n;
}
    800029c8:	00813403          	ld	s0,8(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800029d4:	fc010113          	addi	sp,sp,-64
    800029d8:	02113c23          	sd	ra,56(sp)
    800029dc:	02813823          	sd	s0,48(sp)
    800029e0:	02913423          	sd	s1,40(sp)
    800029e4:	03213023          	sd	s2,32(sp)
    800029e8:	01313c23          	sd	s3,24(sp)
    800029ec:	04010413          	addi	s0,sp,64
    800029f0:	00050493          	mv	s1,a0
    800029f4:	00058913          	mv	s2,a1
    800029f8:	00060993          	mv	s3,a2
    LOCK();
    800029fc:	00100613          	li	a2,1
    80002a00:	00000593          	li	a1,0
    80002a04:	00005517          	auipc	a0,0x5
    80002a08:	bfc50513          	addi	a0,a0,-1028 # 80007600 <lockPrint>
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	818080e7          	jalr	-2024(ra) # 80001224 <copy_and_swap>
    80002a14:	fe0514e3          	bnez	a0,800029fc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002a18:	00098463          	beqz	s3,80002a20 <_Z8printIntiii+0x4c>
    80002a1c:	0804c463          	bltz	s1,80002aa4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002a20:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002a24:	00000593          	li	a1,0
    }

    i = 0;
    80002a28:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002a2c:	0009079b          	sext.w	a5,s2
    80002a30:	0325773b          	remuw	a4,a0,s2
    80002a34:	00048613          	mv	a2,s1
    80002a38:	0014849b          	addiw	s1,s1,1
    80002a3c:	02071693          	slli	a3,a4,0x20
    80002a40:	0206d693          	srli	a3,a3,0x20
    80002a44:	00005717          	auipc	a4,0x5
    80002a48:	a9c70713          	addi	a4,a4,-1380 # 800074e0 <digits>
    80002a4c:	00d70733          	add	a4,a4,a3
    80002a50:	00074683          	lbu	a3,0(a4)
    80002a54:	fd040713          	addi	a4,s0,-48
    80002a58:	00c70733          	add	a4,a4,a2
    80002a5c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002a60:	0005071b          	sext.w	a4,a0
    80002a64:	0325553b          	divuw	a0,a0,s2
    80002a68:	fcf772e3          	bgeu	a4,a5,80002a2c <_Z8printIntiii+0x58>
    if(neg)
    80002a6c:	00058c63          	beqz	a1,80002a84 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002a70:	fd040793          	addi	a5,s0,-48
    80002a74:	009784b3          	add	s1,a5,s1
    80002a78:	02d00793          	li	a5,45
    80002a7c:	fef48823          	sb	a5,-16(s1)
    80002a80:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002a84:	fff4849b          	addiw	s1,s1,-1
    80002a88:	0204c463          	bltz	s1,80002ab0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002a8c:	fd040793          	addi	a5,s0,-48
    80002a90:	009787b3          	add	a5,a5,s1
    80002a94:	ff07c503          	lbu	a0,-16(a5)
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	b3c080e7          	jalr	-1220(ra) # 800015d4 <_Z4putcc>
    80002aa0:	fe5ff06f          	j	80002a84 <_Z8printIntiii+0xb0>
        x = -xx;
    80002aa4:	4090053b          	negw	a0,s1
        neg = 1;
    80002aa8:	00100593          	li	a1,1
        x = -xx;
    80002aac:	f7dff06f          	j	80002a28 <_Z8printIntiii+0x54>

    UNLOCK();
    80002ab0:	00000613          	li	a2,0
    80002ab4:	00100593          	li	a1,1
    80002ab8:	00005517          	auipc	a0,0x5
    80002abc:	b4850513          	addi	a0,a0,-1208 # 80007600 <lockPrint>
    80002ac0:	ffffe097          	auipc	ra,0xffffe
    80002ac4:	764080e7          	jalr	1892(ra) # 80001224 <copy_and_swap>
    80002ac8:	fe0514e3          	bnez	a0,80002ab0 <_Z8printIntiii+0xdc>
    80002acc:	03813083          	ld	ra,56(sp)
    80002ad0:	03013403          	ld	s0,48(sp)
    80002ad4:	02813483          	ld	s1,40(sp)
    80002ad8:	02013903          	ld	s2,32(sp)
    80002adc:	01813983          	ld	s3,24(sp)
    80002ae0:	04010113          	addi	sp,sp,64
    80002ae4:	00008067          	ret

0000000080002ae8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002ae8:	fd010113          	addi	sp,sp,-48
    80002aec:	02113423          	sd	ra,40(sp)
    80002af0:	02813023          	sd	s0,32(sp)
    80002af4:	00913c23          	sd	s1,24(sp)
    80002af8:	01213823          	sd	s2,16(sp)
    80002afc:	01313423          	sd	s3,8(sp)
    80002b00:	03010413          	addi	s0,sp,48
    80002b04:	00050493          	mv	s1,a0
    80002b08:	00058913          	mv	s2,a1
    80002b0c:	0015879b          	addiw	a5,a1,1
    80002b10:	0007851b          	sext.w	a0,a5
    80002b14:	00f4a023          	sw	a5,0(s1)
    80002b18:	0004a823          	sw	zero,16(s1)
    80002b1c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002b20:	00251513          	slli	a0,a0,0x2
    80002b24:	ffffe097          	auipc	ra,0xffffe
    80002b28:	73c080e7          	jalr	1852(ra) # 80001260 <_Z9mem_allocm>
    80002b2c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002b30:	01000513          	li	a0,16
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	344080e7          	jalr	836(ra) # 80001e78 <_Znwm>
    80002b3c:	00050993          	mv	s3,a0
    80002b40:	00000593          	li	a1,0
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	60c080e7          	jalr	1548(ra) # 80002150 <_ZN9SemaphoreC1Ej>
    80002b4c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002b50:	01000513          	li	a0,16
    80002b54:	fffff097          	auipc	ra,0xfffff
    80002b58:	324080e7          	jalr	804(ra) # 80001e78 <_Znwm>
    80002b5c:	00050993          	mv	s3,a0
    80002b60:	00090593          	mv	a1,s2
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	5ec080e7          	jalr	1516(ra) # 80002150 <_ZN9SemaphoreC1Ej>
    80002b6c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002b70:	01000513          	li	a0,16
    80002b74:	fffff097          	auipc	ra,0xfffff
    80002b78:	304080e7          	jalr	772(ra) # 80001e78 <_Znwm>
    80002b7c:	00050913          	mv	s2,a0
    80002b80:	00100593          	li	a1,1
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	5cc080e7          	jalr	1484(ra) # 80002150 <_ZN9SemaphoreC1Ej>
    80002b8c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002b90:	01000513          	li	a0,16
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	2e4080e7          	jalr	740(ra) # 80001e78 <_Znwm>
    80002b9c:	00050913          	mv	s2,a0
    80002ba0:	00100593          	li	a1,1
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	5ac080e7          	jalr	1452(ra) # 80002150 <_ZN9SemaphoreC1Ej>
    80002bac:	0324b823          	sd	s2,48(s1)
}
    80002bb0:	02813083          	ld	ra,40(sp)
    80002bb4:	02013403          	ld	s0,32(sp)
    80002bb8:	01813483          	ld	s1,24(sp)
    80002bbc:	01013903          	ld	s2,16(sp)
    80002bc0:	00813983          	ld	s3,8(sp)
    80002bc4:	03010113          	addi	sp,sp,48
    80002bc8:	00008067          	ret
    80002bcc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002bd0:	00098513          	mv	a0,s3
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	2f4080e7          	jalr	756(ra) # 80001ec8 <_ZdlPv>
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	00006097          	auipc	ra,0x6
    80002be4:	b08080e7          	jalr	-1272(ra) # 800086e8 <_Unwind_Resume>
    80002be8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002bec:	00098513          	mv	a0,s3
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	2d8080e7          	jalr	728(ra) # 80001ec8 <_ZdlPv>
    80002bf8:	00048513          	mv	a0,s1
    80002bfc:	00006097          	auipc	ra,0x6
    80002c00:	aec080e7          	jalr	-1300(ra) # 800086e8 <_Unwind_Resume>
    80002c04:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002c08:	00090513          	mv	a0,s2
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	2bc080e7          	jalr	700(ra) # 80001ec8 <_ZdlPv>
    80002c14:	00048513          	mv	a0,s1
    80002c18:	00006097          	auipc	ra,0x6
    80002c1c:	ad0080e7          	jalr	-1328(ra) # 800086e8 <_Unwind_Resume>
    80002c20:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002c24:	00090513          	mv	a0,s2
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	2a0080e7          	jalr	672(ra) # 80001ec8 <_ZdlPv>
    80002c30:	00048513          	mv	a0,s1
    80002c34:	00006097          	auipc	ra,0x6
    80002c38:	ab4080e7          	jalr	-1356(ra) # 800086e8 <_Unwind_Resume>

0000000080002c3c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002c3c:	fe010113          	addi	sp,sp,-32
    80002c40:	00113c23          	sd	ra,24(sp)
    80002c44:	00813823          	sd	s0,16(sp)
    80002c48:	00913423          	sd	s1,8(sp)
    80002c4c:	01213023          	sd	s2,0(sp)
    80002c50:	02010413          	addi	s0,sp,32
    80002c54:	00050493          	mv	s1,a0
    80002c58:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002c5c:	01853503          	ld	a0,24(a0)
    80002c60:	fffff097          	auipc	ra,0xfffff
    80002c64:	528080e7          	jalr	1320(ra) # 80002188 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002c68:	0304b503          	ld	a0,48(s1)
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	51c080e7          	jalr	1308(ra) # 80002188 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002c74:	0084b783          	ld	a5,8(s1)
    80002c78:	0144a703          	lw	a4,20(s1)
    80002c7c:	00271713          	slli	a4,a4,0x2
    80002c80:	00e787b3          	add	a5,a5,a4
    80002c84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002c88:	0144a783          	lw	a5,20(s1)
    80002c8c:	0017879b          	addiw	a5,a5,1
    80002c90:	0004a703          	lw	a4,0(s1)
    80002c94:	02e7e7bb          	remw	a5,a5,a4
    80002c98:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002c9c:	0304b503          	ld	a0,48(s1)
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	514080e7          	jalr	1300(ra) # 800021b4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002ca8:	0204b503          	ld	a0,32(s1)
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	508080e7          	jalr	1288(ra) # 800021b4 <_ZN9Semaphore6signalEv>

}
    80002cb4:	01813083          	ld	ra,24(sp)
    80002cb8:	01013403          	ld	s0,16(sp)
    80002cbc:	00813483          	ld	s1,8(sp)
    80002cc0:	00013903          	ld	s2,0(sp)
    80002cc4:	02010113          	addi	sp,sp,32
    80002cc8:	00008067          	ret

0000000080002ccc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00113c23          	sd	ra,24(sp)
    80002cd4:	00813823          	sd	s0,16(sp)
    80002cd8:	00913423          	sd	s1,8(sp)
    80002cdc:	01213023          	sd	s2,0(sp)
    80002ce0:	02010413          	addi	s0,sp,32
    80002ce4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002ce8:	02053503          	ld	a0,32(a0)
    80002cec:	fffff097          	auipc	ra,0xfffff
    80002cf0:	49c080e7          	jalr	1180(ra) # 80002188 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002cf4:	0284b503          	ld	a0,40(s1)
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	490080e7          	jalr	1168(ra) # 80002188 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002d00:	0084b703          	ld	a4,8(s1)
    80002d04:	0104a783          	lw	a5,16(s1)
    80002d08:	00279693          	slli	a3,a5,0x2
    80002d0c:	00d70733          	add	a4,a4,a3
    80002d10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002d14:	0017879b          	addiw	a5,a5,1
    80002d18:	0004a703          	lw	a4,0(s1)
    80002d1c:	02e7e7bb          	remw	a5,a5,a4
    80002d20:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002d24:	0284b503          	ld	a0,40(s1)
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	48c080e7          	jalr	1164(ra) # 800021b4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002d30:	0184b503          	ld	a0,24(s1)
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	480080e7          	jalr	1152(ra) # 800021b4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002d3c:	00090513          	mv	a0,s2
    80002d40:	01813083          	ld	ra,24(sp)
    80002d44:	01013403          	ld	s0,16(sp)
    80002d48:	00813483          	ld	s1,8(sp)
    80002d4c:	00013903          	ld	s2,0(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	01213023          	sd	s2,0(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    80002d70:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002d74:	02853503          	ld	a0,40(a0)
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	410080e7          	jalr	1040(ra) # 80002188 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002d80:	0304b503          	ld	a0,48(s1)
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	404080e7          	jalr	1028(ra) # 80002188 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002d8c:	0144a783          	lw	a5,20(s1)
    80002d90:	0104a903          	lw	s2,16(s1)
    80002d94:	0327ce63          	blt	a5,s2,80002dd0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002d98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002d9c:	0304b503          	ld	a0,48(s1)
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	414080e7          	jalr	1044(ra) # 800021b4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002da8:	0284b503          	ld	a0,40(s1)
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	408080e7          	jalr	1032(ra) # 800021b4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002db4:	00090513          	mv	a0,s2
    80002db8:	01813083          	ld	ra,24(sp)
    80002dbc:	01013403          	ld	s0,16(sp)
    80002dc0:	00813483          	ld	s1,8(sp)
    80002dc4:	00013903          	ld	s2,0(sp)
    80002dc8:	02010113          	addi	sp,sp,32
    80002dcc:	00008067          	ret
        ret = cap - head + tail;
    80002dd0:	0004a703          	lw	a4,0(s1)
    80002dd4:	4127093b          	subw	s2,a4,s2
    80002dd8:	00f9093b          	addw	s2,s2,a5
    80002ddc:	fc1ff06f          	j	80002d9c <_ZN9BufferCPP6getCntEv+0x44>

0000000080002de0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002de0:	fe010113          	addi	sp,sp,-32
    80002de4:	00113c23          	sd	ra,24(sp)
    80002de8:	00813823          	sd	s0,16(sp)
    80002dec:	00913423          	sd	s1,8(sp)
    80002df0:	02010413          	addi	s0,sp,32
    80002df4:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002df8:	00a00513          	li	a0,10
    80002dfc:	fffff097          	auipc	ra,0xfffff
    80002e00:	40c080e7          	jalr	1036(ra) # 80002208 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002e04:	00003517          	auipc	a0,0x3
    80002e08:	2b450513          	addi	a0,a0,692 # 800060b8 <_ZZ12printIntegermE6digits+0x10>
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	a30080e7          	jalr	-1488(ra) # 8000283c <_Z11printStringPKc>
    while (getCnt()) {
    80002e14:	00048513          	mv	a0,s1
    80002e18:	00000097          	auipc	ra,0x0
    80002e1c:	f40080e7          	jalr	-192(ra) # 80002d58 <_ZN9BufferCPP6getCntEv>
    80002e20:	02050c63          	beqz	a0,80002e58 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002e24:	0084b783          	ld	a5,8(s1)
    80002e28:	0104a703          	lw	a4,16(s1)
    80002e2c:	00271713          	slli	a4,a4,0x2
    80002e30:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002e34:	0007c503          	lbu	a0,0(a5)
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	3d0080e7          	jalr	976(ra) # 80002208 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002e40:	0104a783          	lw	a5,16(s1)
    80002e44:	0017879b          	addiw	a5,a5,1
    80002e48:	0004a703          	lw	a4,0(s1)
    80002e4c:	02e7e7bb          	remw	a5,a5,a4
    80002e50:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002e54:	fc1ff06f          	j	80002e14 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002e58:	02100513          	li	a0,33
    80002e5c:	fffff097          	auipc	ra,0xfffff
    80002e60:	3ac080e7          	jalr	940(ra) # 80002208 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002e64:	00a00513          	li	a0,10
    80002e68:	fffff097          	auipc	ra,0xfffff
    80002e6c:	3a0080e7          	jalr	928(ra) # 80002208 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002e70:	0084b503          	ld	a0,8(s1)
    80002e74:	ffffe097          	auipc	ra,0xffffe
    80002e78:	420080e7          	jalr	1056(ra) # 80001294 <_Z8mem_freePv>
    delete itemAvailable;
    80002e7c:	0204b503          	ld	a0,32(s1)
    80002e80:	00050863          	beqz	a0,80002e90 <_ZN9BufferCPPD1Ev+0xb0>
    80002e84:	00053783          	ld	a5,0(a0)
    80002e88:	0087b783          	ld	a5,8(a5)
    80002e8c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002e90:	0184b503          	ld	a0,24(s1)
    80002e94:	00050863          	beqz	a0,80002ea4 <_ZN9BufferCPPD1Ev+0xc4>
    80002e98:	00053783          	ld	a5,0(a0)
    80002e9c:	0087b783          	ld	a5,8(a5)
    80002ea0:	000780e7          	jalr	a5
    delete mutexTail;
    80002ea4:	0304b503          	ld	a0,48(s1)
    80002ea8:	00050863          	beqz	a0,80002eb8 <_ZN9BufferCPPD1Ev+0xd8>
    80002eac:	00053783          	ld	a5,0(a0)
    80002eb0:	0087b783          	ld	a5,8(a5)
    80002eb4:	000780e7          	jalr	a5
    delete mutexHead;
    80002eb8:	0284b503          	ld	a0,40(s1)
    80002ebc:	00050863          	beqz	a0,80002ecc <_ZN9BufferCPPD1Ev+0xec>
    80002ec0:	00053783          	ld	a5,0(a0)
    80002ec4:	0087b783          	ld	a5,8(a5)
    80002ec8:	000780e7          	jalr	a5
}
    80002ecc:	01813083          	ld	ra,24(sp)
    80002ed0:	01013403          	ld	s0,16(sp)
    80002ed4:	00813483          	ld	s1,8(sp)
    80002ed8:	02010113          	addi	sp,sp,32
    80002edc:	00008067          	ret

0000000080002ee0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80002ee0:	fd010113          	addi	sp,sp,-48
    80002ee4:	02113423          	sd	ra,40(sp)
    80002ee8:	02813023          	sd	s0,32(sp)
    80002eec:	00913c23          	sd	s1,24(sp)
    80002ef0:	01213823          	sd	s2,16(sp)
    80002ef4:	01313423          	sd	s3,8(sp)
    80002ef8:	03010413          	addi	s0,sp,48
    80002efc:	00050993          	mv	s3,a0
    80002f00:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002f04:	00000913          	li	s2,0
    80002f08:	00c0006f          	j	80002f14 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
        }
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80002f0c:	fffff097          	auipc	ra,0xfffff
    80002f10:	1bc080e7          	jalr	444(ra) # 800020c8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	698080e7          	jalr	1688(ra) # 800015ac <_Z4getcv>
    80002f1c:	0005059b          	sext.w	a1,a0
    80002f20:	01b00793          	li	a5,27
    80002f24:	02f58e63          	beq	a1,a5,80002f60 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x80>
        if ( key == 0x2e ) {
    80002f28:	02e00793          	li	a5,46
    80002f2c:	02f58a63          	beq	a1,a5,80002f60 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x80>
        data->buffer->put(key);
    80002f30:	0084b503          	ld	a0,8(s1)
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	d08080e7          	jalr	-760(ra) # 80002c3c <_ZN9BufferCPP3putEi>
        i++;
    80002f3c:	0019071b          	addiw	a4,s2,1
    80002f40:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002f44:	0004a683          	lw	a3,0(s1)
    80002f48:	0026979b          	slliw	a5,a3,0x2
    80002f4c:	00d787bb          	addw	a5,a5,a3
    80002f50:	0017979b          	slliw	a5,a5,0x1
    80002f54:	02f767bb          	remw	a5,a4,a5
    80002f58:	fa079ee3          	bnez	a5,80002f14 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80002f5c:	fb1ff06f          	j	80002f0c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80002f60:	00100793          	li	a5,1
    80002f64:	00004717          	auipc	a4,0x4
    80002f68:	6af72223          	sw	a5,1700(a4) # 80007608 <threadEnd>
    td->buffer->put('!');
    80002f6c:	0109b783          	ld	a5,16(s3)
    80002f70:	02100593          	li	a1,33
    80002f74:	0087b503          	ld	a0,8(a5)
    80002f78:	00000097          	auipc	ra,0x0
    80002f7c:	cc4080e7          	jalr	-828(ra) # 80002c3c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80002f80:	0104b503          	ld	a0,16(s1)
    80002f84:	fffff097          	auipc	ra,0xfffff
    80002f88:	230080e7          	jalr	560(ra) # 800021b4 <_ZN9Semaphore6signalEv>
}
    80002f8c:	02813083          	ld	ra,40(sp)
    80002f90:	02013403          	ld	s0,32(sp)
    80002f94:	01813483          	ld	s1,24(sp)
    80002f98:	01013903          	ld	s2,16(sp)
    80002f9c:	00813983          	ld	s3,8(sp)
    80002fa0:	03010113          	addi	sp,sp,48
    80002fa4:	00008067          	ret

0000000080002fa8 <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    80002fa8:	fe010113          	addi	sp,sp,-32
    80002fac:	00113c23          	sd	ra,24(sp)
    80002fb0:	00813823          	sd	s0,16(sp)
    80002fb4:	00913423          	sd	s1,8(sp)
    80002fb8:	01213023          	sd	s2,0(sp)
    80002fbc:	02010413          	addi	s0,sp,32
    80002fc0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002fc4:	00000913          	li	s2,0
    80002fc8:	00c0006f          	j	80002fd4 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80002fcc:	fffff097          	auipc	ra,0xfffff
    80002fd0:	0fc080e7          	jalr	252(ra) # 800020c8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80002fd4:	00004797          	auipc	a5,0x4
    80002fd8:	6347a783          	lw	a5,1588(a5) # 80007608 <threadEnd>
    80002fdc:	02079e63          	bnez	a5,80003018 <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80002fe0:	0004a583          	lw	a1,0(s1)
    80002fe4:	0305859b          	addiw	a1,a1,48
    80002fe8:	0084b503          	ld	a0,8(s1)
    80002fec:	00000097          	auipc	ra,0x0
    80002ff0:	c50080e7          	jalr	-944(ra) # 80002c3c <_ZN9BufferCPP3putEi>
        i++;
    80002ff4:	0019071b          	addiw	a4,s2,1
    80002ff8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ffc:	0004a683          	lw	a3,0(s1)
    80003000:	0026979b          	slliw	a5,a3,0x2
    80003004:	00d787bb          	addw	a5,a5,a3
    80003008:	0017979b          	slliw	a5,a5,0x1
    8000300c:	02f767bb          	remw	a5,a4,a5
    80003010:	fc0792e3          	bnez	a5,80002fd4 <_ZN8Producer8producerEPv+0x2c>
    80003014:	fb9ff06f          	j	80002fcc <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80003018:	0104b503          	ld	a0,16(s1)
    8000301c:	fffff097          	auipc	ra,0xfffff
    80003020:	198080e7          	jalr	408(ra) # 800021b4 <_ZN9Semaphore6signalEv>
}
    80003024:	01813083          	ld	ra,24(sp)
    80003028:	01013403          	ld	s0,16(sp)
    8000302c:	00813483          	ld	s1,8(sp)
    80003030:	00013903          	ld	s2,0(sp)
    80003034:	02010113          	addi	sp,sp,32
    80003038:	00008067          	ret

000000008000303c <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    8000303c:	fd010113          	addi	sp,sp,-48
    80003040:	02113423          	sd	ra,40(sp)
    80003044:	02813023          	sd	s0,32(sp)
    80003048:	00913c23          	sd	s1,24(sp)
    8000304c:	01213823          	sd	s2,16(sp)
    80003050:	01313423          	sd	s3,8(sp)
    80003054:	01413023          	sd	s4,0(sp)
    80003058:	03010413          	addi	s0,sp,48
    8000305c:	00050993          	mv	s3,a0
    80003060:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003064:	00000a13          	li	s4,0
    80003068:	01c0006f          	j	80003084 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000306c:	fffff097          	auipc	ra,0xfffff
    80003070:	05c080e7          	jalr	92(ra) # 800020c8 <_ZN6Thread8dispatchEv>
    80003074:	0500006f          	j	800030c4 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003078:	00a00513          	li	a0,10
    8000307c:	ffffe097          	auipc	ra,0xffffe
    80003080:	558080e7          	jalr	1368(ra) # 800015d4 <_Z4putcc>
    while (!threadEnd) {
    80003084:	00004797          	auipc	a5,0x4
    80003088:	5847a783          	lw	a5,1412(a5) # 80007608 <threadEnd>
    8000308c:	06079263          	bnez	a5,800030f0 <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    80003090:	00893503          	ld	a0,8(s2)
    80003094:	00000097          	auipc	ra,0x0
    80003098:	c38080e7          	jalr	-968(ra) # 80002ccc <_ZN9BufferCPP3getEv>
        i++;
    8000309c:	001a049b          	addiw	s1,s4,1
    800030a0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800030a4:	0ff57513          	andi	a0,a0,255
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	52c080e7          	jalr	1324(ra) # 800015d4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800030b0:	00092703          	lw	a4,0(s2)
    800030b4:	0027179b          	slliw	a5,a4,0x2
    800030b8:	00e787bb          	addw	a5,a5,a4
    800030bc:	02f4e7bb          	remw	a5,s1,a5
    800030c0:	fa0786e3          	beqz	a5,8000306c <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    800030c4:	05000793          	li	a5,80
    800030c8:	02f4e4bb          	remw	s1,s1,a5
    800030cc:	fa049ce3          	bnez	s1,80003084 <_ZN8Consumer8consumerEPv+0x48>
    800030d0:	fa9ff06f          	j	80003078 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800030d4:	0109b783          	ld	a5,16(s3)
    800030d8:	0087b503          	ld	a0,8(a5)
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	bf0080e7          	jalr	-1040(ra) # 80002ccc <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800030e4:	0ff57513          	andi	a0,a0,255
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	120080e7          	jalr	288(ra) # 80002208 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800030f0:	0109b783          	ld	a5,16(s3)
    800030f4:	0087b503          	ld	a0,8(a5)
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	c60080e7          	jalr	-928(ra) # 80002d58 <_ZN9BufferCPP6getCntEv>
    80003100:	fca04ae3          	bgtz	a0,800030d4 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    80003104:	01093503          	ld	a0,16(s2)
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	0ac080e7          	jalr	172(ra) # 800021b4 <_ZN9Semaphore6signalEv>
}
    80003110:	02813083          	ld	ra,40(sp)
    80003114:	02013403          	ld	s0,32(sp)
    80003118:	01813483          	ld	s1,24(sp)
    8000311c:	01013903          	ld	s2,16(sp)
    80003120:	00813983          	ld	s3,8(sp)
    80003124:	00013a03          	ld	s4,0(sp)
    80003128:	03010113          	addi	sp,sp,48
    8000312c:	00008067          	ret

0000000080003130 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003130:	f8010113          	addi	sp,sp,-128
    80003134:	06113c23          	sd	ra,120(sp)
    80003138:	06813823          	sd	s0,112(sp)
    8000313c:	06913423          	sd	s1,104(sp)
    80003140:	07213023          	sd	s2,96(sp)
    80003144:	05313c23          	sd	s3,88(sp)
    80003148:	05413823          	sd	s4,80(sp)
    8000314c:	05513423          	sd	s5,72(sp)
    80003150:	05613023          	sd	s6,64(sp)
    80003154:	03713c23          	sd	s7,56(sp)
    80003158:	03813823          	sd	s8,48(sp)
    8000315c:	03913423          	sd	s9,40(sp)
    80003160:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003164:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003168:	00003517          	auipc	a0,0x3
    8000316c:	f6850513          	addi	a0,a0,-152 # 800060d0 <_ZZ12printIntegermE6digits+0x28>
    80003170:	fffff097          	auipc	ra,0xfffff
    80003174:	6cc080e7          	jalr	1740(ra) # 8000283c <_Z11printStringPKc>
    getString(input, 30);
    80003178:	01e00593          	li	a1,30
    8000317c:	f8040493          	addi	s1,s0,-128
    80003180:	00048513          	mv	a0,s1
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	734080e7          	jalr	1844(ra) # 800028b8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000318c:	00048513          	mv	a0,s1
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	7f4080e7          	jalr	2036(ra) # 80002984 <_Z11stringToIntPKc>
    80003198:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000319c:	00003517          	auipc	a0,0x3
    800031a0:	f5450513          	addi	a0,a0,-172 # 800060f0 <_ZZ12printIntegermE6digits+0x48>
    800031a4:	fffff097          	auipc	ra,0xfffff
    800031a8:	698080e7          	jalr	1688(ra) # 8000283c <_Z11printStringPKc>
    getString(input, 30);
    800031ac:	01e00593          	li	a1,30
    800031b0:	00048513          	mv	a0,s1
    800031b4:	fffff097          	auipc	ra,0xfffff
    800031b8:	704080e7          	jalr	1796(ra) # 800028b8 <_Z9getStringPci>
    n = stringToInt(input);
    800031bc:	00048513          	mv	a0,s1
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	7c4080e7          	jalr	1988(ra) # 80002984 <_Z11stringToIntPKc>
    800031c8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800031cc:	00003517          	auipc	a0,0x3
    800031d0:	f4450513          	addi	a0,a0,-188 # 80006110 <_ZZ12printIntegermE6digits+0x68>
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	668080e7          	jalr	1640(ra) # 8000283c <_Z11printStringPKc>
    800031dc:	00000613          	li	a2,0
    800031e0:	00a00593          	li	a1,10
    800031e4:	00090513          	mv	a0,s2
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	7ec080e7          	jalr	2028(ra) # 800029d4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800031f0:	00003517          	auipc	a0,0x3
    800031f4:	f3850513          	addi	a0,a0,-200 # 80006128 <_ZZ12printIntegermE6digits+0x80>
    800031f8:	fffff097          	auipc	ra,0xfffff
    800031fc:	644080e7          	jalr	1604(ra) # 8000283c <_Z11printStringPKc>
    80003200:	00000613          	li	a2,0
    80003204:	00a00593          	li	a1,10
    80003208:	00048513          	mv	a0,s1
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	7c8080e7          	jalr	1992(ra) # 800029d4 <_Z8printIntiii>
    printString(".\n");
    80003214:	00003517          	auipc	a0,0x3
    80003218:	f2c50513          	addi	a0,a0,-212 # 80006140 <_ZZ12printIntegermE6digits+0x98>
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	620080e7          	jalr	1568(ra) # 8000283c <_Z11printStringPKc>
    if(threadNum > n) {
    80003224:	0324c463          	blt	s1,s2,8000324c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80003228:	03205c63          	blez	s2,80003260 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000322c:	03800513          	li	a0,56
    80003230:	fffff097          	auipc	ra,0xfffff
    80003234:	c48080e7          	jalr	-952(ra) # 80001e78 <_Znwm>
    80003238:	00050a93          	mv	s5,a0
    8000323c:	00048593          	mv	a1,s1
    80003240:	00000097          	auipc	ra,0x0
    80003244:	8a8080e7          	jalr	-1880(ra) # 80002ae8 <_ZN9BufferCPPC1Ei>
    80003248:	0300006f          	j	80003278 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000324c:	00003517          	auipc	a0,0x3
    80003250:	efc50513          	addi	a0,a0,-260 # 80006148 <_ZZ12printIntegermE6digits+0xa0>
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	5e8080e7          	jalr	1512(ra) # 8000283c <_Z11printStringPKc>
        return;
    8000325c:	0140006f          	j	80003270 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003260:	00003517          	auipc	a0,0x3
    80003264:	f2850513          	addi	a0,a0,-216 # 80006188 <_ZZ12printIntegermE6digits+0xe0>
    80003268:	fffff097          	auipc	ra,0xfffff
    8000326c:	5d4080e7          	jalr	1492(ra) # 8000283c <_Z11printStringPKc>
        return;
    80003270:	000b8113          	mv	sp,s7
    80003274:	2400006f          	j	800034b4 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    80003278:	01000513          	li	a0,16
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	bfc080e7          	jalr	-1028(ra) # 80001e78 <_Znwm>
    80003284:	00050493          	mv	s1,a0
    80003288:	00000593          	li	a1,0
    8000328c:	fffff097          	auipc	ra,0xfffff
    80003290:	ec4080e7          	jalr	-316(ra) # 80002150 <_ZN9SemaphoreC1Ej>
    80003294:	00004717          	auipc	a4,0x4
    80003298:	37470713          	addi	a4,a4,884 # 80007608 <threadEnd>
    8000329c:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    800032a0:	00391793          	slli	a5,s2,0x3
    800032a4:	00f78793          	addi	a5,a5,15
    800032a8:	ff07f793          	andi	a5,a5,-16
    800032ac:	40f10133          	sub	sp,sp,a5
    800032b0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800032b4:	0019069b          	addiw	a3,s2,1
    800032b8:	00169793          	slli	a5,a3,0x1
    800032bc:	00d787b3          	add	a5,a5,a3
    800032c0:	00379793          	slli	a5,a5,0x3
    800032c4:	00f78793          	addi	a5,a5,15
    800032c8:	ff07f793          	andi	a5,a5,-16
    800032cc:	40f10133          	sub	sp,sp,a5
    800032d0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800032d4:	00191493          	slli	s1,s2,0x1
    800032d8:	012487b3          	add	a5,s1,s2
    800032dc:	00379793          	slli	a5,a5,0x3
    800032e0:	00fa07b3          	add	a5,s4,a5
    800032e4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800032e8:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800032ec:	00873703          	ld	a4,8(a4)
    800032f0:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    800032f4:	01800513          	li	a0,24
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	b80080e7          	jalr	-1152(ra) # 80001e78 <_Znwm>
    80003300:	00050b13          	mv	s6,a0
    80003304:	012484b3          	add	s1,s1,s2
    80003308:	00349493          	slli	s1,s1,0x3
    8000330c:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	dfc080e7          	jalr	-516(ra) # 8000210c <_ZN6ThreadC1Ev>
    80003318:	00004797          	auipc	a5,0x4
    8000331c:	24078793          	addi	a5,a5,576 # 80007558 <_ZTV8Consumer+0x10>
    80003320:	00fb3023          	sd	a5,0(s6)
    80003324:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80003328:	000b0513          	mv	a0,s6
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	d6c080e7          	jalr	-660(ra) # 80002098 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003334:	00000493          	li	s1,0
    80003338:	0380006f          	j	80003370 <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    8000333c:	00004797          	auipc	a5,0x4
    80003340:	1f478793          	addi	a5,a5,500 # 80007530 <_ZTV8Producer+0x10>
    80003344:	00fcb023          	sd	a5,0(s9)
    80003348:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    8000334c:	00349793          	slli	a5,s1,0x3
    80003350:	00f987b3          	add	a5,s3,a5
    80003354:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003358:	00349793          	slli	a5,s1,0x3
    8000335c:	00f987b3          	add	a5,s3,a5
    80003360:	0007b503          	ld	a0,0(a5)
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	d34080e7          	jalr	-716(ra) # 80002098 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000336c:	0014849b          	addiw	s1,s1,1
    80003370:	0b24d063          	bge	s1,s2,80003410 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    80003374:	00149793          	slli	a5,s1,0x1
    80003378:	009787b3          	add	a5,a5,s1
    8000337c:	00379793          	slli	a5,a5,0x3
    80003380:	00fa07b3          	add	a5,s4,a5
    80003384:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003388:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000338c:	00004717          	auipc	a4,0x4
    80003390:	28473703          	ld	a4,644(a4) # 80007610 <waitForAll>
    80003394:	00e7b823          	sd	a4,16(a5)
        if(i > 0) {
    80003398:	02905863          	blez	s1,800033c8 <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    8000339c:	01800513          	li	a0,24
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	ad8080e7          	jalr	-1320(ra) # 80001e78 <_Znwm>
    800033a8:	00050c93          	mv	s9,a0
    800033ac:	00149c13          	slli	s8,s1,0x1
    800033b0:	009c0c33          	add	s8,s8,s1
    800033b4:	003c1c13          	slli	s8,s8,0x3
    800033b8:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    800033bc:	fffff097          	auipc	ra,0xfffff
    800033c0:	d50080e7          	jalr	-688(ra) # 8000210c <_ZN6ThreadC1Ev>
    800033c4:	f79ff06f          	j	8000333c <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    800033c8:	01800513          	li	a0,24
    800033cc:	fffff097          	auipc	ra,0xfffff
    800033d0:	aac080e7          	jalr	-1364(ra) # 80001e78 <_Znwm>
    800033d4:	00050c93          	mv	s9,a0
    800033d8:	00149c13          	slli	s8,s1,0x1
    800033dc:	009c0c33          	add	s8,s8,s1
    800033e0:	003c1c13          	slli	s8,s8,0x3
    800033e4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800033e8:	fffff097          	auipc	ra,0xfffff
    800033ec:	d24080e7          	jalr	-732(ra) # 8000210c <_ZN6ThreadC1Ev>
    800033f0:	00004797          	auipc	a5,0x4
    800033f4:	11878793          	addi	a5,a5,280 # 80007508 <_ZTV16ProducerKeyboard+0x10>
    800033f8:	00fcb023          	sd	a5,0(s9)
    800033fc:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80003400:	00349793          	slli	a5,s1,0x3
    80003404:	00f987b3          	add	a5,s3,a5
    80003408:	0197b023          	sd	s9,0(a5)
    8000340c:	f4dff06f          	j	80003358 <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	cb8080e7          	jalr	-840(ra) # 800020c8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003418:	00000493          	li	s1,0
    8000341c:	00994e63          	blt	s2,s1,80003438 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    80003420:	00004517          	auipc	a0,0x4
    80003424:	1f053503          	ld	a0,496(a0) # 80007610 <waitForAll>
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	d60080e7          	jalr	-672(ra) # 80002188 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003430:	0014849b          	addiw	s1,s1,1
    80003434:	fe9ff06f          	j	8000341c <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    80003438:	00000493          	li	s1,0
    8000343c:	0080006f          	j	80003444 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    80003440:	0014849b          	addiw	s1,s1,1
    80003444:	0324d263          	bge	s1,s2,80003468 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    80003448:	00349793          	slli	a5,s1,0x3
    8000344c:	00f987b3          	add	a5,s3,a5
    80003450:	0007b503          	ld	a0,0(a5)
    80003454:	fe0506e3          	beqz	a0,80003440 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80003458:	00053783          	ld	a5,0(a0)
    8000345c:	0087b783          	ld	a5,8(a5)
    80003460:	000780e7          	jalr	a5
    80003464:	fddff06f          	j	80003440 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    80003468:	000b0a63          	beqz	s6,8000347c <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    8000346c:	000b3783          	ld	a5,0(s6)
    80003470:	0087b783          	ld	a5,8(a5)
    80003474:	000b0513          	mv	a0,s6
    80003478:	000780e7          	jalr	a5
    delete waitForAll;
    8000347c:	00004517          	auipc	a0,0x4
    80003480:	19453503          	ld	a0,404(a0) # 80007610 <waitForAll>
    80003484:	00050863          	beqz	a0,80003494 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80003488:	00053783          	ld	a5,0(a0)
    8000348c:	0087b783          	ld	a5,8(a5)
    80003490:	000780e7          	jalr	a5
    delete buffer;
    80003494:	000a8e63          	beqz	s5,800034b0 <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80003498:	000a8513          	mv	a0,s5
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	944080e7          	jalr	-1724(ra) # 80002de0 <_ZN9BufferCPPD1Ev>
    800034a4:	000a8513          	mv	a0,s5
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	a20080e7          	jalr	-1504(ra) # 80001ec8 <_ZdlPv>
    800034b0:	000b8113          	mv	sp,s7

}
    800034b4:	f8040113          	addi	sp,s0,-128
    800034b8:	07813083          	ld	ra,120(sp)
    800034bc:	07013403          	ld	s0,112(sp)
    800034c0:	06813483          	ld	s1,104(sp)
    800034c4:	06013903          	ld	s2,96(sp)
    800034c8:	05813983          	ld	s3,88(sp)
    800034cc:	05013a03          	ld	s4,80(sp)
    800034d0:	04813a83          	ld	s5,72(sp)
    800034d4:	04013b03          	ld	s6,64(sp)
    800034d8:	03813b83          	ld	s7,56(sp)
    800034dc:	03013c03          	ld	s8,48(sp)
    800034e0:	02813c83          	ld	s9,40(sp)
    800034e4:	08010113          	addi	sp,sp,128
    800034e8:	00008067          	ret
    800034ec:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800034f0:	000a8513          	mv	a0,s5
    800034f4:	fffff097          	auipc	ra,0xfffff
    800034f8:	9d4080e7          	jalr	-1580(ra) # 80001ec8 <_ZdlPv>
    800034fc:	00048513          	mv	a0,s1
    80003500:	00005097          	auipc	ra,0x5
    80003504:	1e8080e7          	jalr	488(ra) # 800086e8 <_Unwind_Resume>
    80003508:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000350c:	00048513          	mv	a0,s1
    80003510:	fffff097          	auipc	ra,0xfffff
    80003514:	9b8080e7          	jalr	-1608(ra) # 80001ec8 <_ZdlPv>
    80003518:	00090513          	mv	a0,s2
    8000351c:	00005097          	auipc	ra,0x5
    80003520:	1cc080e7          	jalr	460(ra) # 800086e8 <_Unwind_Resume>
    80003524:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80003528:	000b0513          	mv	a0,s6
    8000352c:	fffff097          	auipc	ra,0xfffff
    80003530:	99c080e7          	jalr	-1636(ra) # 80001ec8 <_ZdlPv>
    80003534:	00048513          	mv	a0,s1
    80003538:	00005097          	auipc	ra,0x5
    8000353c:	1b0080e7          	jalr	432(ra) # 800086e8 <_Unwind_Resume>
    80003540:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80003544:	000c8513          	mv	a0,s9
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	980080e7          	jalr	-1664(ra) # 80001ec8 <_ZdlPv>
    80003550:	00048513          	mv	a0,s1
    80003554:	00005097          	auipc	ra,0x5
    80003558:	194080e7          	jalr	404(ra) # 800086e8 <_Unwind_Resume>
    8000355c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80003560:	000c8513          	mv	a0,s9
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	964080e7          	jalr	-1692(ra) # 80001ec8 <_ZdlPv>
    8000356c:	00048513          	mv	a0,s1
    80003570:	00005097          	auipc	ra,0x5
    80003574:	178080e7          	jalr	376(ra) # 800086e8 <_Unwind_Resume>

0000000080003578 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80003578:	ff010113          	addi	sp,sp,-16
    8000357c:	00113423          	sd	ra,8(sp)
    80003580:	00813023          	sd	s0,0(sp)
    80003584:	01010413          	addi	s0,sp,16

    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	ba8080e7          	jalr	-1112(ra) # 80003130 <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

}
    80003590:	00813083          	ld	ra,8(sp)
    80003594:	00013403          	ld	s0,0(sp)
    80003598:	01010113          	addi	sp,sp,16
    8000359c:	00008067          	ret

00000000800035a0 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    800035a0:	ff010113          	addi	sp,sp,-16
    800035a4:	00113423          	sd	ra,8(sp)
    800035a8:	00813023          	sd	s0,0(sp)
    800035ac:	01010413          	addi	s0,sp,16
    800035b0:	00004797          	auipc	a5,0x4
    800035b4:	fa878793          	addi	a5,a5,-88 # 80007558 <_ZTV8Consumer+0x10>
    800035b8:	00f53023          	sd	a5,0(a0)
    800035bc:	fffff097          	auipc	ra,0xfffff
    800035c0:	988080e7          	jalr	-1656(ra) # 80001f44 <_ZN6ThreadD1Ev>
    800035c4:	00813083          	ld	ra,8(sp)
    800035c8:	00013403          	ld	s0,0(sp)
    800035cc:	01010113          	addi	sp,sp,16
    800035d0:	00008067          	ret

00000000800035d4 <_ZN8ConsumerD0Ev>:
    800035d4:	fe010113          	addi	sp,sp,-32
    800035d8:	00113c23          	sd	ra,24(sp)
    800035dc:	00813823          	sd	s0,16(sp)
    800035e0:	00913423          	sd	s1,8(sp)
    800035e4:	02010413          	addi	s0,sp,32
    800035e8:	00050493          	mv	s1,a0
    800035ec:	00004797          	auipc	a5,0x4
    800035f0:	f6c78793          	addi	a5,a5,-148 # 80007558 <_ZTV8Consumer+0x10>
    800035f4:	00f53023          	sd	a5,0(a0)
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	94c080e7          	jalr	-1716(ra) # 80001f44 <_ZN6ThreadD1Ev>
    80003600:	00048513          	mv	a0,s1
    80003604:	fffff097          	auipc	ra,0xfffff
    80003608:	8c4080e7          	jalr	-1852(ra) # 80001ec8 <_ZdlPv>
    8000360c:	01813083          	ld	ra,24(sp)
    80003610:	01013403          	ld	s0,16(sp)
    80003614:	00813483          	ld	s1,8(sp)
    80003618:	02010113          	addi	sp,sp,32
    8000361c:	00008067          	ret

0000000080003620 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80003620:	ff010113          	addi	sp,sp,-16
    80003624:	00113423          	sd	ra,8(sp)
    80003628:	00813023          	sd	s0,0(sp)
    8000362c:	01010413          	addi	s0,sp,16
    80003630:	00004797          	auipc	a5,0x4
    80003634:	f0078793          	addi	a5,a5,-256 # 80007530 <_ZTV8Producer+0x10>
    80003638:	00f53023          	sd	a5,0(a0)
    8000363c:	fffff097          	auipc	ra,0xfffff
    80003640:	908080e7          	jalr	-1784(ra) # 80001f44 <_ZN6ThreadD1Ev>
    80003644:	00813083          	ld	ra,8(sp)
    80003648:	00013403          	ld	s0,0(sp)
    8000364c:	01010113          	addi	sp,sp,16
    80003650:	00008067          	ret

0000000080003654 <_ZN8ProducerD0Ev>:
    80003654:	fe010113          	addi	sp,sp,-32
    80003658:	00113c23          	sd	ra,24(sp)
    8000365c:	00813823          	sd	s0,16(sp)
    80003660:	00913423          	sd	s1,8(sp)
    80003664:	02010413          	addi	s0,sp,32
    80003668:	00050493          	mv	s1,a0
    8000366c:	00004797          	auipc	a5,0x4
    80003670:	ec478793          	addi	a5,a5,-316 # 80007530 <_ZTV8Producer+0x10>
    80003674:	00f53023          	sd	a5,0(a0)
    80003678:	fffff097          	auipc	ra,0xfffff
    8000367c:	8cc080e7          	jalr	-1844(ra) # 80001f44 <_ZN6ThreadD1Ev>
    80003680:	00048513          	mv	a0,s1
    80003684:	fffff097          	auipc	ra,0xfffff
    80003688:	844080e7          	jalr	-1980(ra) # 80001ec8 <_ZdlPv>
    8000368c:	01813083          	ld	ra,24(sp)
    80003690:	01013403          	ld	s0,16(sp)
    80003694:	00813483          	ld	s1,8(sp)
    80003698:	02010113          	addi	sp,sp,32
    8000369c:	00008067          	ret

00000000800036a0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00113423          	sd	ra,8(sp)
    800036a8:	00813023          	sd	s0,0(sp)
    800036ac:	01010413          	addi	s0,sp,16
    800036b0:	00004797          	auipc	a5,0x4
    800036b4:	e5878793          	addi	a5,a5,-424 # 80007508 <_ZTV16ProducerKeyboard+0x10>
    800036b8:	00f53023          	sd	a5,0(a0)
    800036bc:	fffff097          	auipc	ra,0xfffff
    800036c0:	888080e7          	jalr	-1912(ra) # 80001f44 <_ZN6ThreadD1Ev>
    800036c4:	00813083          	ld	ra,8(sp)
    800036c8:	00013403          	ld	s0,0(sp)
    800036cc:	01010113          	addi	sp,sp,16
    800036d0:	00008067          	ret

00000000800036d4 <_ZN16ProducerKeyboardD0Ev>:
    800036d4:	fe010113          	addi	sp,sp,-32
    800036d8:	00113c23          	sd	ra,24(sp)
    800036dc:	00813823          	sd	s0,16(sp)
    800036e0:	00913423          	sd	s1,8(sp)
    800036e4:	02010413          	addi	s0,sp,32
    800036e8:	00050493          	mv	s1,a0
    800036ec:	00004797          	auipc	a5,0x4
    800036f0:	e1c78793          	addi	a5,a5,-484 # 80007508 <_ZTV16ProducerKeyboard+0x10>
    800036f4:	00f53023          	sd	a5,0(a0)
    800036f8:	fffff097          	auipc	ra,0xfffff
    800036fc:	84c080e7          	jalr	-1972(ra) # 80001f44 <_ZN6ThreadD1Ev>
    80003700:	00048513          	mv	a0,s1
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	7c4080e7          	jalr	1988(ra) # 80001ec8 <_ZdlPv>
    8000370c:	01813083          	ld	ra,24(sp)
    80003710:	01013403          	ld	s0,16(sp)
    80003714:	00813483          	ld	s1,8(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret

0000000080003720 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00113423          	sd	ra,8(sp)
    80003728:	00813023          	sd	s0,0(sp)
    8000372c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80003730:	01053583          	ld	a1,16(a0)
    80003734:	fffff097          	auipc	ra,0xfffff
    80003738:	7ac080e7          	jalr	1964(ra) # 80002ee0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000373c:	00813083          	ld	ra,8(sp)
    80003740:	00013403          	ld	s0,0(sp)
    80003744:	01010113          	addi	sp,sp,16
    80003748:	00008067          	ret

000000008000374c <_ZN8Producer3runEv>:
    void run() override {
    8000374c:	ff010113          	addi	sp,sp,-16
    80003750:	00113423          	sd	ra,8(sp)
    80003754:	00813023          	sd	s0,0(sp)
    80003758:	01010413          	addi	s0,sp,16
        producer(td);
    8000375c:	01053583          	ld	a1,16(a0)
    80003760:	00000097          	auipc	ra,0x0
    80003764:	848080e7          	jalr	-1976(ra) # 80002fa8 <_ZN8Producer8producerEPv>
    }
    80003768:	00813083          	ld	ra,8(sp)
    8000376c:	00013403          	ld	s0,0(sp)
    80003770:	01010113          	addi	sp,sp,16
    80003774:	00008067          	ret

0000000080003778 <_ZN8Consumer3runEv>:
    void run() override {
    80003778:	ff010113          	addi	sp,sp,-16
    8000377c:	00113423          	sd	ra,8(sp)
    80003780:	00813023          	sd	s0,0(sp)
    80003784:	01010413          	addi	s0,sp,16
        consumer(td);
    80003788:	01053583          	ld	a1,16(a0)
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	8b0080e7          	jalr	-1872(ra) # 8000303c <_ZN8Consumer8consumerEPv>
    }
    80003794:	00813083          	ld	ra,8(sp)
    80003798:	00013403          	ld	s0,0(sp)
    8000379c:	01010113          	addi	sp,sp,16
    800037a0:	00008067          	ret

00000000800037a4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800037a4:	fe010113          	addi	sp,sp,-32
    800037a8:	00113c23          	sd	ra,24(sp)
    800037ac:	00813823          	sd	s0,16(sp)
    800037b0:	00913423          	sd	s1,8(sp)
    800037b4:	01213023          	sd	s2,0(sp)
    800037b8:	02010413          	addi	s0,sp,32
    800037bc:	00050493          	mv	s1,a0
    800037c0:	00058913          	mv	s2,a1
    800037c4:	0015879b          	addiw	a5,a1,1
    800037c8:	0007851b          	sext.w	a0,a5
    800037cc:	00f4a023          	sw	a5,0(s1)
    800037d0:	0004a823          	sw	zero,16(s1)
    800037d4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800037d8:	00251513          	slli	a0,a0,0x2
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	a84080e7          	jalr	-1404(ra) # 80001260 <_Z9mem_allocm>
    800037e4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800037e8:	00000593          	li	a1,0
    800037ec:	02048513          	addi	a0,s1,32
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	c5c080e7          	jalr	-932(ra) # 8000144c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800037f8:	00090593          	mv	a1,s2
    800037fc:	01848513          	addi	a0,s1,24
    80003800:	ffffe097          	auipc	ra,0xffffe
    80003804:	c4c080e7          	jalr	-948(ra) # 8000144c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80003808:	00100593          	li	a1,1
    8000380c:	02848513          	addi	a0,s1,40
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	c3c080e7          	jalr	-964(ra) # 8000144c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80003818:	00100593          	li	a1,1
    8000381c:	03048513          	addi	a0,s1,48
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	c2c080e7          	jalr	-980(ra) # 8000144c <_Z8sem_openPP4_semj>
}
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	01013403          	ld	s0,16(sp)
    80003830:	00813483          	ld	s1,8(sp)
    80003834:	00013903          	ld	s2,0(sp)
    80003838:	02010113          	addi	sp,sp,32
    8000383c:	00008067          	ret

0000000080003840 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003840:	fe010113          	addi	sp,sp,-32
    80003844:	00113c23          	sd	ra,24(sp)
    80003848:	00813823          	sd	s0,16(sp)
    8000384c:	00913423          	sd	s1,8(sp)
    80003850:	01213023          	sd	s2,0(sp)
    80003854:	02010413          	addi	s0,sp,32
    80003858:	00050493          	mv	s1,a0
    8000385c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003860:	01853503          	ld	a0,24(a0)
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	c98080e7          	jalr	-872(ra) # 800014fc <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000386c:	0304b503          	ld	a0,48(s1)
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	c8c080e7          	jalr	-884(ra) # 800014fc <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80003878:	0084b783          	ld	a5,8(s1)
    8000387c:	0144a703          	lw	a4,20(s1)
    80003880:	00271713          	slli	a4,a4,0x2
    80003884:	00e787b3          	add	a5,a5,a4
    80003888:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000388c:	0144a783          	lw	a5,20(s1)
    80003890:	0017879b          	addiw	a5,a5,1
    80003894:	0004a703          	lw	a4,0(s1)
    80003898:	02e7e7bb          	remw	a5,a5,a4
    8000389c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800038a0:	0304b503          	ld	a0,48(s1)
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	cb0080e7          	jalr	-848(ra) # 80001554 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    800038ac:	0204b503          	ld	a0,32(s1)
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	ca4080e7          	jalr	-860(ra) # 80001554 <_Z10sem_signalP4_sem>

}
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	00013903          	ld	s2,0(sp)
    800038c8:	02010113          	addi	sp,sp,32
    800038cc:	00008067          	ret

00000000800038d0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800038d0:	fe010113          	addi	sp,sp,-32
    800038d4:	00113c23          	sd	ra,24(sp)
    800038d8:	00813823          	sd	s0,16(sp)
    800038dc:	00913423          	sd	s1,8(sp)
    800038e0:	01213023          	sd	s2,0(sp)
    800038e4:	02010413          	addi	s0,sp,32
    800038e8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800038ec:	02053503          	ld	a0,32(a0)
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	c0c080e7          	jalr	-1012(ra) # 800014fc <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800038f8:	0284b503          	ld	a0,40(s1)
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	c00080e7          	jalr	-1024(ra) # 800014fc <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80003904:	0084b703          	ld	a4,8(s1)
    80003908:	0104a783          	lw	a5,16(s1)
    8000390c:	00279693          	slli	a3,a5,0x2
    80003910:	00d70733          	add	a4,a4,a3
    80003914:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003918:	0017879b          	addiw	a5,a5,1
    8000391c:	0004a703          	lw	a4,0(s1)
    80003920:	02e7e7bb          	remw	a5,a5,a4
    80003924:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003928:	0284b503          	ld	a0,40(s1)
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	c28080e7          	jalr	-984(ra) # 80001554 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80003934:	0184b503          	ld	a0,24(s1)
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	c1c080e7          	jalr	-996(ra) # 80001554 <_Z10sem_signalP4_sem>

    return ret;
}
    80003940:	00090513          	mv	a0,s2
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	00013903          	ld	s2,0(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000395c:	fe010113          	addi	sp,sp,-32
    80003960:	00113c23          	sd	ra,24(sp)
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	01213023          	sd	s2,0(sp)
    80003970:	02010413          	addi	s0,sp,32
    80003974:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003978:	02853503          	ld	a0,40(a0)
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	b80080e7          	jalr	-1152(ra) # 800014fc <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80003984:	0304b503          	ld	a0,48(s1)
    80003988:	ffffe097          	auipc	ra,0xffffe
    8000398c:	b74080e7          	jalr	-1164(ra) # 800014fc <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80003990:	0144a783          	lw	a5,20(s1)
    80003994:	0104a903          	lw	s2,16(s1)
    80003998:	0327ce63          	blt	a5,s2,800039d4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000399c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800039a0:	0304b503          	ld	a0,48(s1)
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	bb0080e7          	jalr	-1104(ra) # 80001554 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    800039ac:	0284b503          	ld	a0,40(s1)
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	ba4080e7          	jalr	-1116(ra) # 80001554 <_Z10sem_signalP4_sem>

    return ret;
}
    800039b8:	00090513          	mv	a0,s2
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00813483          	ld	s1,8(sp)
    800039c8:	00013903          	ld	s2,0(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret
        ret = cap - head + tail;
    800039d4:	0004a703          	lw	a4,0(s1)
    800039d8:	4127093b          	subw	s2,a4,s2
    800039dc:	00f9093b          	addw	s2,s2,a5
    800039e0:	fc1ff06f          	j	800039a0 <_ZN6Buffer6getCntEv+0x44>

00000000800039e4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800039e4:	fe010113          	addi	sp,sp,-32
    800039e8:	00113c23          	sd	ra,24(sp)
    800039ec:	00813823          	sd	s0,16(sp)
    800039f0:	00913423          	sd	s1,8(sp)
    800039f4:	02010413          	addi	s0,sp,32
    800039f8:	00050493          	mv	s1,a0
    putc('\n');
    800039fc:	00a00513          	li	a0,10
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	bd4080e7          	jalr	-1068(ra) # 800015d4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003a08:	00002517          	auipc	a0,0x2
    80003a0c:	6b050513          	addi	a0,a0,1712 # 800060b8 <_ZZ12printIntegermE6digits+0x10>
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	e2c080e7          	jalr	-468(ra) # 8000283c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003a18:	00048513          	mv	a0,s1
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	f40080e7          	jalr	-192(ra) # 8000395c <_ZN6Buffer6getCntEv>
    80003a24:	02a05c63          	blez	a0,80003a5c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003a28:	0084b783          	ld	a5,8(s1)
    80003a2c:	0104a703          	lw	a4,16(s1)
    80003a30:	00271713          	slli	a4,a4,0x2
    80003a34:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003a38:	0007c503          	lbu	a0,0(a5)
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	b98080e7          	jalr	-1128(ra) # 800015d4 <_Z4putcc>
        head = (head + 1) % cap;
    80003a44:	0104a783          	lw	a5,16(s1)
    80003a48:	0017879b          	addiw	a5,a5,1
    80003a4c:	0004a703          	lw	a4,0(s1)
    80003a50:	02e7e7bb          	remw	a5,a5,a4
    80003a54:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003a58:	fc1ff06f          	j	80003a18 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003a5c:	02100513          	li	a0,33
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	b74080e7          	jalr	-1164(ra) # 800015d4 <_Z4putcc>
    putc('\n');
    80003a68:	00a00513          	li	a0,10
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	b68080e7          	jalr	-1176(ra) # 800015d4 <_Z4putcc>
    mem_free(buffer);
    80003a74:	0084b503          	ld	a0,8(s1)
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	81c080e7          	jalr	-2020(ra) # 80001294 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003a80:	0204b503          	ld	a0,32(s1)
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	a30080e7          	jalr	-1488(ra) # 800014b4 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80003a8c:	0184b503          	ld	a0,24(s1)
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	a24080e7          	jalr	-1500(ra) # 800014b4 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80003a98:	0304b503          	ld	a0,48(s1)
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	a18080e7          	jalr	-1512(ra) # 800014b4 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80003aa4:	0284b503          	ld	a0,40(s1)
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	a0c080e7          	jalr	-1524(ra) # 800014b4 <_Z9sem_closeP4_sem>
}
    80003ab0:	01813083          	ld	ra,24(sp)
    80003ab4:	01013403          	ld	s0,16(sp)
    80003ab8:	00813483          	ld	s1,8(sp)
    80003abc:	02010113          	addi	sp,sp,32
    80003ac0:	00008067          	ret

0000000080003ac4 <start>:
    80003ac4:	ff010113          	addi	sp,sp,-16
    80003ac8:	00813423          	sd	s0,8(sp)
    80003acc:	01010413          	addi	s0,sp,16
    80003ad0:	300027f3          	csrr	a5,mstatus
    80003ad4:	ffffe737          	lui	a4,0xffffe
    80003ad8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5f6f>
    80003adc:	00e7f7b3          	and	a5,a5,a4
    80003ae0:	00001737          	lui	a4,0x1
    80003ae4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003ae8:	00e7e7b3          	or	a5,a5,a4
    80003aec:	30079073          	csrw	mstatus,a5
    80003af0:	00000797          	auipc	a5,0x0
    80003af4:	16078793          	addi	a5,a5,352 # 80003c50 <system_main>
    80003af8:	34179073          	csrw	mepc,a5
    80003afc:	00000793          	li	a5,0
    80003b00:	18079073          	csrw	satp,a5
    80003b04:	000107b7          	lui	a5,0x10
    80003b08:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003b0c:	30279073          	csrw	medeleg,a5
    80003b10:	30379073          	csrw	mideleg,a5
    80003b14:	104027f3          	csrr	a5,sie
    80003b18:	2227e793          	ori	a5,a5,546
    80003b1c:	10479073          	csrw	sie,a5
    80003b20:	fff00793          	li	a5,-1
    80003b24:	00a7d793          	srli	a5,a5,0xa
    80003b28:	3b079073          	csrw	pmpaddr0,a5
    80003b2c:	00f00793          	li	a5,15
    80003b30:	3a079073          	csrw	pmpcfg0,a5
    80003b34:	f14027f3          	csrr	a5,mhartid
    80003b38:	0200c737          	lui	a4,0x200c
    80003b3c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b40:	0007869b          	sext.w	a3,a5
    80003b44:	00269713          	slli	a4,a3,0x2
    80003b48:	000f4637          	lui	a2,0xf4
    80003b4c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b50:	00d70733          	add	a4,a4,a3
    80003b54:	0037979b          	slliw	a5,a5,0x3
    80003b58:	020046b7          	lui	a3,0x2004
    80003b5c:	00d787b3          	add	a5,a5,a3
    80003b60:	00c585b3          	add	a1,a1,a2
    80003b64:	00371693          	slli	a3,a4,0x3
    80003b68:	00004717          	auipc	a4,0x4
    80003b6c:	ab870713          	addi	a4,a4,-1352 # 80007620 <timer_scratch>
    80003b70:	00b7b023          	sd	a1,0(a5)
    80003b74:	00d70733          	add	a4,a4,a3
    80003b78:	00f73c23          	sd	a5,24(a4)
    80003b7c:	02c73023          	sd	a2,32(a4)
    80003b80:	34071073          	csrw	mscratch,a4
    80003b84:	00000797          	auipc	a5,0x0
    80003b88:	6ec78793          	addi	a5,a5,1772 # 80004270 <timervec>
    80003b8c:	30579073          	csrw	mtvec,a5
    80003b90:	300027f3          	csrr	a5,mstatus
    80003b94:	0087e793          	ori	a5,a5,8
    80003b98:	30079073          	csrw	mstatus,a5
    80003b9c:	304027f3          	csrr	a5,mie
    80003ba0:	0807e793          	ori	a5,a5,128
    80003ba4:	30479073          	csrw	mie,a5
    80003ba8:	f14027f3          	csrr	a5,mhartid
    80003bac:	0007879b          	sext.w	a5,a5
    80003bb0:	00078213          	mv	tp,a5
    80003bb4:	30200073          	mret
    80003bb8:	00813403          	ld	s0,8(sp)
    80003bbc:	01010113          	addi	sp,sp,16
    80003bc0:	00008067          	ret

0000000080003bc4 <timerinit>:
    80003bc4:	ff010113          	addi	sp,sp,-16
    80003bc8:	00813423          	sd	s0,8(sp)
    80003bcc:	01010413          	addi	s0,sp,16
    80003bd0:	f14027f3          	csrr	a5,mhartid
    80003bd4:	0200c737          	lui	a4,0x200c
    80003bd8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003bdc:	0007869b          	sext.w	a3,a5
    80003be0:	00269713          	slli	a4,a3,0x2
    80003be4:	000f4637          	lui	a2,0xf4
    80003be8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003bec:	00d70733          	add	a4,a4,a3
    80003bf0:	0037979b          	slliw	a5,a5,0x3
    80003bf4:	020046b7          	lui	a3,0x2004
    80003bf8:	00d787b3          	add	a5,a5,a3
    80003bfc:	00c585b3          	add	a1,a1,a2
    80003c00:	00371693          	slli	a3,a4,0x3
    80003c04:	00004717          	auipc	a4,0x4
    80003c08:	a1c70713          	addi	a4,a4,-1508 # 80007620 <timer_scratch>
    80003c0c:	00b7b023          	sd	a1,0(a5)
    80003c10:	00d70733          	add	a4,a4,a3
    80003c14:	00f73c23          	sd	a5,24(a4)
    80003c18:	02c73023          	sd	a2,32(a4)
    80003c1c:	34071073          	csrw	mscratch,a4
    80003c20:	00000797          	auipc	a5,0x0
    80003c24:	65078793          	addi	a5,a5,1616 # 80004270 <timervec>
    80003c28:	30579073          	csrw	mtvec,a5
    80003c2c:	300027f3          	csrr	a5,mstatus
    80003c30:	0087e793          	ori	a5,a5,8
    80003c34:	30079073          	csrw	mstatus,a5
    80003c38:	304027f3          	csrr	a5,mie
    80003c3c:	0807e793          	ori	a5,a5,128
    80003c40:	30479073          	csrw	mie,a5
    80003c44:	00813403          	ld	s0,8(sp)
    80003c48:	01010113          	addi	sp,sp,16
    80003c4c:	00008067          	ret

0000000080003c50 <system_main>:
    80003c50:	fe010113          	addi	sp,sp,-32
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	00113c23          	sd	ra,24(sp)
    80003c60:	02010413          	addi	s0,sp,32
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	0c4080e7          	jalr	196(ra) # 80003d28 <cpuid>
    80003c6c:	00004497          	auipc	s1,0x4
    80003c70:	94448493          	addi	s1,s1,-1724 # 800075b0 <started>
    80003c74:	02050263          	beqz	a0,80003c98 <system_main+0x48>
    80003c78:	0004a783          	lw	a5,0(s1)
    80003c7c:	0007879b          	sext.w	a5,a5
    80003c80:	fe078ce3          	beqz	a5,80003c78 <system_main+0x28>
    80003c84:	0ff0000f          	fence
    80003c88:	00002517          	auipc	a0,0x2
    80003c8c:	56050513          	addi	a0,a0,1376 # 800061e8 <_ZZ12printIntegermE6digits+0x140>
    80003c90:	00001097          	auipc	ra,0x1
    80003c94:	a7c080e7          	jalr	-1412(ra) # 8000470c <panic>
    80003c98:	00001097          	auipc	ra,0x1
    80003c9c:	9d0080e7          	jalr	-1584(ra) # 80004668 <consoleinit>
    80003ca0:	00001097          	auipc	ra,0x1
    80003ca4:	15c080e7          	jalr	348(ra) # 80004dfc <printfinit>
    80003ca8:	00002517          	auipc	a0,0x2
    80003cac:	3e850513          	addi	a0,a0,1000 # 80006090 <kvmincrease+0x1c0>
    80003cb0:	00001097          	auipc	ra,0x1
    80003cb4:	ab8080e7          	jalr	-1352(ra) # 80004768 <__printf>
    80003cb8:	00002517          	auipc	a0,0x2
    80003cbc:	50050513          	addi	a0,a0,1280 # 800061b8 <_ZZ12printIntegermE6digits+0x110>
    80003cc0:	00001097          	auipc	ra,0x1
    80003cc4:	aa8080e7          	jalr	-1368(ra) # 80004768 <__printf>
    80003cc8:	00002517          	auipc	a0,0x2
    80003ccc:	3c850513          	addi	a0,a0,968 # 80006090 <kvmincrease+0x1c0>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	a98080e7          	jalr	-1384(ra) # 80004768 <__printf>
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	4b0080e7          	jalr	1200(ra) # 80005188 <kinit>
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	148080e7          	jalr	328(ra) # 80003e28 <trapinit>
    80003ce8:	00000097          	auipc	ra,0x0
    80003cec:	16c080e7          	jalr	364(ra) # 80003e54 <trapinithart>
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	5c0080e7          	jalr	1472(ra) # 800042b0 <plicinit>
    80003cf8:	00000097          	auipc	ra,0x0
    80003cfc:	5e0080e7          	jalr	1504(ra) # 800042d8 <plicinithart>
    80003d00:	00000097          	auipc	ra,0x0
    80003d04:	078080e7          	jalr	120(ra) # 80003d78 <userinit>
    80003d08:	0ff0000f          	fence
    80003d0c:	00100793          	li	a5,1
    80003d10:	00002517          	auipc	a0,0x2
    80003d14:	4c050513          	addi	a0,a0,1216 # 800061d0 <_ZZ12printIntegermE6digits+0x128>
    80003d18:	00f4a023          	sw	a5,0(s1)
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	a4c080e7          	jalr	-1460(ra) # 80004768 <__printf>
    80003d24:	0000006f          	j	80003d24 <system_main+0xd4>

0000000080003d28 <cpuid>:
    80003d28:	ff010113          	addi	sp,sp,-16
    80003d2c:	00813423          	sd	s0,8(sp)
    80003d30:	01010413          	addi	s0,sp,16
    80003d34:	00020513          	mv	a0,tp
    80003d38:	00813403          	ld	s0,8(sp)
    80003d3c:	0005051b          	sext.w	a0,a0
    80003d40:	01010113          	addi	sp,sp,16
    80003d44:	00008067          	ret

0000000080003d48 <mycpu>:
    80003d48:	ff010113          	addi	sp,sp,-16
    80003d4c:	00813423          	sd	s0,8(sp)
    80003d50:	01010413          	addi	s0,sp,16
    80003d54:	00020793          	mv	a5,tp
    80003d58:	00813403          	ld	s0,8(sp)
    80003d5c:	0007879b          	sext.w	a5,a5
    80003d60:	00779793          	slli	a5,a5,0x7
    80003d64:	00005517          	auipc	a0,0x5
    80003d68:	8ec50513          	addi	a0,a0,-1812 # 80008650 <cpus>
    80003d6c:	00f50533          	add	a0,a0,a5
    80003d70:	01010113          	addi	sp,sp,16
    80003d74:	00008067          	ret

0000000080003d78 <userinit>:
    80003d78:	ff010113          	addi	sp,sp,-16
    80003d7c:	00813423          	sd	s0,8(sp)
    80003d80:	01010413          	addi	s0,sp,16
    80003d84:	00813403          	ld	s0,8(sp)
    80003d88:	01010113          	addi	sp,sp,16
    80003d8c:	ffffe317          	auipc	t1,0xffffe
    80003d90:	dfc30067          	jr	-516(t1) # 80001b88 <main>

0000000080003d94 <either_copyout>:
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00813023          	sd	s0,0(sp)
    80003d9c:	00113423          	sd	ra,8(sp)
    80003da0:	01010413          	addi	s0,sp,16
    80003da4:	02051663          	bnez	a0,80003dd0 <either_copyout+0x3c>
    80003da8:	00058513          	mv	a0,a1
    80003dac:	00060593          	mv	a1,a2
    80003db0:	0006861b          	sext.w	a2,a3
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	c60080e7          	jalr	-928(ra) # 80005a14 <__memmove>
    80003dbc:	00813083          	ld	ra,8(sp)
    80003dc0:	00013403          	ld	s0,0(sp)
    80003dc4:	00000513          	li	a0,0
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret
    80003dd0:	00002517          	auipc	a0,0x2
    80003dd4:	44050513          	addi	a0,a0,1088 # 80006210 <_ZZ12printIntegermE6digits+0x168>
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	934080e7          	jalr	-1740(ra) # 8000470c <panic>

0000000080003de0 <either_copyin>:
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00813023          	sd	s0,0(sp)
    80003de8:	00113423          	sd	ra,8(sp)
    80003dec:	01010413          	addi	s0,sp,16
    80003df0:	02059463          	bnez	a1,80003e18 <either_copyin+0x38>
    80003df4:	00060593          	mv	a1,a2
    80003df8:	0006861b          	sext.w	a2,a3
    80003dfc:	00002097          	auipc	ra,0x2
    80003e00:	c18080e7          	jalr	-1000(ra) # 80005a14 <__memmove>
    80003e04:	00813083          	ld	ra,8(sp)
    80003e08:	00013403          	ld	s0,0(sp)
    80003e0c:	00000513          	li	a0,0
    80003e10:	01010113          	addi	sp,sp,16
    80003e14:	00008067          	ret
    80003e18:	00002517          	auipc	a0,0x2
    80003e1c:	42050513          	addi	a0,a0,1056 # 80006238 <_ZZ12printIntegermE6digits+0x190>
    80003e20:	00001097          	auipc	ra,0x1
    80003e24:	8ec080e7          	jalr	-1812(ra) # 8000470c <panic>

0000000080003e28 <trapinit>:
    80003e28:	ff010113          	addi	sp,sp,-16
    80003e2c:	00813423          	sd	s0,8(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	00813403          	ld	s0,8(sp)
    80003e38:	00002597          	auipc	a1,0x2
    80003e3c:	42858593          	addi	a1,a1,1064 # 80006260 <_ZZ12printIntegermE6digits+0x1b8>
    80003e40:	00005517          	auipc	a0,0x5
    80003e44:	89050513          	addi	a0,a0,-1904 # 800086d0 <tickslock>
    80003e48:	01010113          	addi	sp,sp,16
    80003e4c:	00001317          	auipc	t1,0x1
    80003e50:	5cc30067          	jr	1484(t1) # 80005418 <initlock>

0000000080003e54 <trapinithart>:
    80003e54:	ff010113          	addi	sp,sp,-16
    80003e58:	00813423          	sd	s0,8(sp)
    80003e5c:	01010413          	addi	s0,sp,16
    80003e60:	00000797          	auipc	a5,0x0
    80003e64:	30078793          	addi	a5,a5,768 # 80004160 <kernelvec>
    80003e68:	10579073          	csrw	stvec,a5
    80003e6c:	00813403          	ld	s0,8(sp)
    80003e70:	01010113          	addi	sp,sp,16
    80003e74:	00008067          	ret

0000000080003e78 <usertrap>:
    80003e78:	ff010113          	addi	sp,sp,-16
    80003e7c:	00813423          	sd	s0,8(sp)
    80003e80:	01010413          	addi	s0,sp,16
    80003e84:	00813403          	ld	s0,8(sp)
    80003e88:	01010113          	addi	sp,sp,16
    80003e8c:	00008067          	ret

0000000080003e90 <usertrapret>:
    80003e90:	ff010113          	addi	sp,sp,-16
    80003e94:	00813423          	sd	s0,8(sp)
    80003e98:	01010413          	addi	s0,sp,16
    80003e9c:	00813403          	ld	s0,8(sp)
    80003ea0:	01010113          	addi	sp,sp,16
    80003ea4:	00008067          	ret

0000000080003ea8 <kerneltrap>:
    80003ea8:	fe010113          	addi	sp,sp,-32
    80003eac:	00813823          	sd	s0,16(sp)
    80003eb0:	00113c23          	sd	ra,24(sp)
    80003eb4:	00913423          	sd	s1,8(sp)
    80003eb8:	02010413          	addi	s0,sp,32
    80003ebc:	142025f3          	csrr	a1,scause
    80003ec0:	100027f3          	csrr	a5,sstatus
    80003ec4:	0027f793          	andi	a5,a5,2
    80003ec8:	10079c63          	bnez	a5,80003fe0 <kerneltrap+0x138>
    80003ecc:	142027f3          	csrr	a5,scause
    80003ed0:	0207ce63          	bltz	a5,80003f0c <kerneltrap+0x64>
    80003ed4:	00002517          	auipc	a0,0x2
    80003ed8:	3d450513          	addi	a0,a0,980 # 800062a8 <_ZZ12printIntegermE6digits+0x200>
    80003edc:	00001097          	auipc	ra,0x1
    80003ee0:	88c080e7          	jalr	-1908(ra) # 80004768 <__printf>
    80003ee4:	141025f3          	csrr	a1,sepc
    80003ee8:	14302673          	csrr	a2,stval
    80003eec:	00002517          	auipc	a0,0x2
    80003ef0:	3cc50513          	addi	a0,a0,972 # 800062b8 <_ZZ12printIntegermE6digits+0x210>
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	874080e7          	jalr	-1932(ra) # 80004768 <__printf>
    80003efc:	00002517          	auipc	a0,0x2
    80003f00:	3d450513          	addi	a0,a0,980 # 800062d0 <_ZZ12printIntegermE6digits+0x228>
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	808080e7          	jalr	-2040(ra) # 8000470c <panic>
    80003f0c:	0ff7f713          	andi	a4,a5,255
    80003f10:	00900693          	li	a3,9
    80003f14:	04d70063          	beq	a4,a3,80003f54 <kerneltrap+0xac>
    80003f18:	fff00713          	li	a4,-1
    80003f1c:	03f71713          	slli	a4,a4,0x3f
    80003f20:	00170713          	addi	a4,a4,1
    80003f24:	fae798e3          	bne	a5,a4,80003ed4 <kerneltrap+0x2c>
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	e00080e7          	jalr	-512(ra) # 80003d28 <cpuid>
    80003f30:	06050663          	beqz	a0,80003f9c <kerneltrap+0xf4>
    80003f34:	144027f3          	csrr	a5,sip
    80003f38:	ffd7f793          	andi	a5,a5,-3
    80003f3c:	14479073          	csrw	sip,a5
    80003f40:	01813083          	ld	ra,24(sp)
    80003f44:	01013403          	ld	s0,16(sp)
    80003f48:	00813483          	ld	s1,8(sp)
    80003f4c:	02010113          	addi	sp,sp,32
    80003f50:	00008067          	ret
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	3d0080e7          	jalr	976(ra) # 80004324 <plic_claim>
    80003f5c:	00a00793          	li	a5,10
    80003f60:	00050493          	mv	s1,a0
    80003f64:	06f50863          	beq	a0,a5,80003fd4 <kerneltrap+0x12c>
    80003f68:	fc050ce3          	beqz	a0,80003f40 <kerneltrap+0x98>
    80003f6c:	00050593          	mv	a1,a0
    80003f70:	00002517          	auipc	a0,0x2
    80003f74:	31850513          	addi	a0,a0,792 # 80006288 <_ZZ12printIntegermE6digits+0x1e0>
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	7f0080e7          	jalr	2032(ra) # 80004768 <__printf>
    80003f80:	01013403          	ld	s0,16(sp)
    80003f84:	01813083          	ld	ra,24(sp)
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00813483          	ld	s1,8(sp)
    80003f90:	02010113          	addi	sp,sp,32
    80003f94:	00000317          	auipc	t1,0x0
    80003f98:	3c830067          	jr	968(t1) # 8000435c <plic_complete>
    80003f9c:	00004517          	auipc	a0,0x4
    80003fa0:	73450513          	addi	a0,a0,1844 # 800086d0 <tickslock>
    80003fa4:	00001097          	auipc	ra,0x1
    80003fa8:	498080e7          	jalr	1176(ra) # 8000543c <acquire>
    80003fac:	00003717          	auipc	a4,0x3
    80003fb0:	60870713          	addi	a4,a4,1544 # 800075b4 <ticks>
    80003fb4:	00072783          	lw	a5,0(a4)
    80003fb8:	00004517          	auipc	a0,0x4
    80003fbc:	71850513          	addi	a0,a0,1816 # 800086d0 <tickslock>
    80003fc0:	0017879b          	addiw	a5,a5,1
    80003fc4:	00f72023          	sw	a5,0(a4)
    80003fc8:	00001097          	auipc	ra,0x1
    80003fcc:	540080e7          	jalr	1344(ra) # 80005508 <release>
    80003fd0:	f65ff06f          	j	80003f34 <kerneltrap+0x8c>
    80003fd4:	00001097          	auipc	ra,0x1
    80003fd8:	09c080e7          	jalr	156(ra) # 80005070 <uartintr>
    80003fdc:	fa5ff06f          	j	80003f80 <kerneltrap+0xd8>
    80003fe0:	00002517          	auipc	a0,0x2
    80003fe4:	28850513          	addi	a0,a0,648 # 80006268 <_ZZ12printIntegermE6digits+0x1c0>
    80003fe8:	00000097          	auipc	ra,0x0
    80003fec:	724080e7          	jalr	1828(ra) # 8000470c <panic>

0000000080003ff0 <clockintr>:
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00813823          	sd	s0,16(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	00113c23          	sd	ra,24(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	00004497          	auipc	s1,0x4
    80004008:	6cc48493          	addi	s1,s1,1740 # 800086d0 <tickslock>
    8000400c:	00048513          	mv	a0,s1
    80004010:	00001097          	auipc	ra,0x1
    80004014:	42c080e7          	jalr	1068(ra) # 8000543c <acquire>
    80004018:	00003717          	auipc	a4,0x3
    8000401c:	59c70713          	addi	a4,a4,1436 # 800075b4 <ticks>
    80004020:	00072783          	lw	a5,0(a4)
    80004024:	01013403          	ld	s0,16(sp)
    80004028:	01813083          	ld	ra,24(sp)
    8000402c:	00048513          	mv	a0,s1
    80004030:	0017879b          	addiw	a5,a5,1
    80004034:	00813483          	ld	s1,8(sp)
    80004038:	00f72023          	sw	a5,0(a4)
    8000403c:	02010113          	addi	sp,sp,32
    80004040:	00001317          	auipc	t1,0x1
    80004044:	4c830067          	jr	1224(t1) # 80005508 <release>

0000000080004048 <devintr>:
    80004048:	142027f3          	csrr	a5,scause
    8000404c:	00000513          	li	a0,0
    80004050:	0007c463          	bltz	a5,80004058 <devintr+0x10>
    80004054:	00008067          	ret
    80004058:	fe010113          	addi	sp,sp,-32
    8000405c:	00813823          	sd	s0,16(sp)
    80004060:	00113c23          	sd	ra,24(sp)
    80004064:	00913423          	sd	s1,8(sp)
    80004068:	02010413          	addi	s0,sp,32
    8000406c:	0ff7f713          	andi	a4,a5,255
    80004070:	00900693          	li	a3,9
    80004074:	04d70c63          	beq	a4,a3,800040cc <devintr+0x84>
    80004078:	fff00713          	li	a4,-1
    8000407c:	03f71713          	slli	a4,a4,0x3f
    80004080:	00170713          	addi	a4,a4,1
    80004084:	00e78c63          	beq	a5,a4,8000409c <devintr+0x54>
    80004088:	01813083          	ld	ra,24(sp)
    8000408c:	01013403          	ld	s0,16(sp)
    80004090:	00813483          	ld	s1,8(sp)
    80004094:	02010113          	addi	sp,sp,32
    80004098:	00008067          	ret
    8000409c:	00000097          	auipc	ra,0x0
    800040a0:	c8c080e7          	jalr	-884(ra) # 80003d28 <cpuid>
    800040a4:	06050663          	beqz	a0,80004110 <devintr+0xc8>
    800040a8:	144027f3          	csrr	a5,sip
    800040ac:	ffd7f793          	andi	a5,a5,-3
    800040b0:	14479073          	csrw	sip,a5
    800040b4:	01813083          	ld	ra,24(sp)
    800040b8:	01013403          	ld	s0,16(sp)
    800040bc:	00813483          	ld	s1,8(sp)
    800040c0:	00200513          	li	a0,2
    800040c4:	02010113          	addi	sp,sp,32
    800040c8:	00008067          	ret
    800040cc:	00000097          	auipc	ra,0x0
    800040d0:	258080e7          	jalr	600(ra) # 80004324 <plic_claim>
    800040d4:	00a00793          	li	a5,10
    800040d8:	00050493          	mv	s1,a0
    800040dc:	06f50663          	beq	a0,a5,80004148 <devintr+0x100>
    800040e0:	00100513          	li	a0,1
    800040e4:	fa0482e3          	beqz	s1,80004088 <devintr+0x40>
    800040e8:	00048593          	mv	a1,s1
    800040ec:	00002517          	auipc	a0,0x2
    800040f0:	19c50513          	addi	a0,a0,412 # 80006288 <_ZZ12printIntegermE6digits+0x1e0>
    800040f4:	00000097          	auipc	ra,0x0
    800040f8:	674080e7          	jalr	1652(ra) # 80004768 <__printf>
    800040fc:	00048513          	mv	a0,s1
    80004100:	00000097          	auipc	ra,0x0
    80004104:	25c080e7          	jalr	604(ra) # 8000435c <plic_complete>
    80004108:	00100513          	li	a0,1
    8000410c:	f7dff06f          	j	80004088 <devintr+0x40>
    80004110:	00004517          	auipc	a0,0x4
    80004114:	5c050513          	addi	a0,a0,1472 # 800086d0 <tickslock>
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	324080e7          	jalr	804(ra) # 8000543c <acquire>
    80004120:	00003717          	auipc	a4,0x3
    80004124:	49470713          	addi	a4,a4,1172 # 800075b4 <ticks>
    80004128:	00072783          	lw	a5,0(a4)
    8000412c:	00004517          	auipc	a0,0x4
    80004130:	5a450513          	addi	a0,a0,1444 # 800086d0 <tickslock>
    80004134:	0017879b          	addiw	a5,a5,1
    80004138:	00f72023          	sw	a5,0(a4)
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	3cc080e7          	jalr	972(ra) # 80005508 <release>
    80004144:	f65ff06f          	j	800040a8 <devintr+0x60>
    80004148:	00001097          	auipc	ra,0x1
    8000414c:	f28080e7          	jalr	-216(ra) # 80005070 <uartintr>
    80004150:	fadff06f          	j	800040fc <devintr+0xb4>
	...

0000000080004160 <kernelvec>:
    80004160:	f0010113          	addi	sp,sp,-256
    80004164:	00113023          	sd	ra,0(sp)
    80004168:	00213423          	sd	sp,8(sp)
    8000416c:	00313823          	sd	gp,16(sp)
    80004170:	00413c23          	sd	tp,24(sp)
    80004174:	02513023          	sd	t0,32(sp)
    80004178:	02613423          	sd	t1,40(sp)
    8000417c:	02713823          	sd	t2,48(sp)
    80004180:	02813c23          	sd	s0,56(sp)
    80004184:	04913023          	sd	s1,64(sp)
    80004188:	04a13423          	sd	a0,72(sp)
    8000418c:	04b13823          	sd	a1,80(sp)
    80004190:	04c13c23          	sd	a2,88(sp)
    80004194:	06d13023          	sd	a3,96(sp)
    80004198:	06e13423          	sd	a4,104(sp)
    8000419c:	06f13823          	sd	a5,112(sp)
    800041a0:	07013c23          	sd	a6,120(sp)
    800041a4:	09113023          	sd	a7,128(sp)
    800041a8:	09213423          	sd	s2,136(sp)
    800041ac:	09313823          	sd	s3,144(sp)
    800041b0:	09413c23          	sd	s4,152(sp)
    800041b4:	0b513023          	sd	s5,160(sp)
    800041b8:	0b613423          	sd	s6,168(sp)
    800041bc:	0b713823          	sd	s7,176(sp)
    800041c0:	0b813c23          	sd	s8,184(sp)
    800041c4:	0d913023          	sd	s9,192(sp)
    800041c8:	0da13423          	sd	s10,200(sp)
    800041cc:	0db13823          	sd	s11,208(sp)
    800041d0:	0dc13c23          	sd	t3,216(sp)
    800041d4:	0fd13023          	sd	t4,224(sp)
    800041d8:	0fe13423          	sd	t5,232(sp)
    800041dc:	0ff13823          	sd	t6,240(sp)
    800041e0:	cc9ff0ef          	jal	ra,80003ea8 <kerneltrap>
    800041e4:	00013083          	ld	ra,0(sp)
    800041e8:	00813103          	ld	sp,8(sp)
    800041ec:	01013183          	ld	gp,16(sp)
    800041f0:	02013283          	ld	t0,32(sp)
    800041f4:	02813303          	ld	t1,40(sp)
    800041f8:	03013383          	ld	t2,48(sp)
    800041fc:	03813403          	ld	s0,56(sp)
    80004200:	04013483          	ld	s1,64(sp)
    80004204:	04813503          	ld	a0,72(sp)
    80004208:	05013583          	ld	a1,80(sp)
    8000420c:	05813603          	ld	a2,88(sp)
    80004210:	06013683          	ld	a3,96(sp)
    80004214:	06813703          	ld	a4,104(sp)
    80004218:	07013783          	ld	a5,112(sp)
    8000421c:	07813803          	ld	a6,120(sp)
    80004220:	08013883          	ld	a7,128(sp)
    80004224:	08813903          	ld	s2,136(sp)
    80004228:	09013983          	ld	s3,144(sp)
    8000422c:	09813a03          	ld	s4,152(sp)
    80004230:	0a013a83          	ld	s5,160(sp)
    80004234:	0a813b03          	ld	s6,168(sp)
    80004238:	0b013b83          	ld	s7,176(sp)
    8000423c:	0b813c03          	ld	s8,184(sp)
    80004240:	0c013c83          	ld	s9,192(sp)
    80004244:	0c813d03          	ld	s10,200(sp)
    80004248:	0d013d83          	ld	s11,208(sp)
    8000424c:	0d813e03          	ld	t3,216(sp)
    80004250:	0e013e83          	ld	t4,224(sp)
    80004254:	0e813f03          	ld	t5,232(sp)
    80004258:	0f013f83          	ld	t6,240(sp)
    8000425c:	10010113          	addi	sp,sp,256
    80004260:	10200073          	sret
    80004264:	00000013          	nop
    80004268:	00000013          	nop
    8000426c:	00000013          	nop

0000000080004270 <timervec>:
    80004270:	34051573          	csrrw	a0,mscratch,a0
    80004274:	00b53023          	sd	a1,0(a0)
    80004278:	00c53423          	sd	a2,8(a0)
    8000427c:	00d53823          	sd	a3,16(a0)
    80004280:	01853583          	ld	a1,24(a0)
    80004284:	02053603          	ld	a2,32(a0)
    80004288:	0005b683          	ld	a3,0(a1)
    8000428c:	00c686b3          	add	a3,a3,a2
    80004290:	00d5b023          	sd	a3,0(a1)
    80004294:	00200593          	li	a1,2
    80004298:	14459073          	csrw	sip,a1
    8000429c:	01053683          	ld	a3,16(a0)
    800042a0:	00853603          	ld	a2,8(a0)
    800042a4:	00053583          	ld	a1,0(a0)
    800042a8:	34051573          	csrrw	a0,mscratch,a0
    800042ac:	30200073          	mret

00000000800042b0 <plicinit>:
    800042b0:	ff010113          	addi	sp,sp,-16
    800042b4:	00813423          	sd	s0,8(sp)
    800042b8:	01010413          	addi	s0,sp,16
    800042bc:	00813403          	ld	s0,8(sp)
    800042c0:	0c0007b7          	lui	a5,0xc000
    800042c4:	00100713          	li	a4,1
    800042c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800042cc:	00e7a223          	sw	a4,4(a5)
    800042d0:	01010113          	addi	sp,sp,16
    800042d4:	00008067          	ret

00000000800042d8 <plicinithart>:
    800042d8:	ff010113          	addi	sp,sp,-16
    800042dc:	00813023          	sd	s0,0(sp)
    800042e0:	00113423          	sd	ra,8(sp)
    800042e4:	01010413          	addi	s0,sp,16
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	a40080e7          	jalr	-1472(ra) # 80003d28 <cpuid>
    800042f0:	0085171b          	slliw	a4,a0,0x8
    800042f4:	0c0027b7          	lui	a5,0xc002
    800042f8:	00e787b3          	add	a5,a5,a4
    800042fc:	40200713          	li	a4,1026
    80004300:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004304:	00813083          	ld	ra,8(sp)
    80004308:	00013403          	ld	s0,0(sp)
    8000430c:	00d5151b          	slliw	a0,a0,0xd
    80004310:	0c2017b7          	lui	a5,0xc201
    80004314:	00a78533          	add	a0,a5,a0
    80004318:	00052023          	sw	zero,0(a0)
    8000431c:	01010113          	addi	sp,sp,16
    80004320:	00008067          	ret

0000000080004324 <plic_claim>:
    80004324:	ff010113          	addi	sp,sp,-16
    80004328:	00813023          	sd	s0,0(sp)
    8000432c:	00113423          	sd	ra,8(sp)
    80004330:	01010413          	addi	s0,sp,16
    80004334:	00000097          	auipc	ra,0x0
    80004338:	9f4080e7          	jalr	-1548(ra) # 80003d28 <cpuid>
    8000433c:	00813083          	ld	ra,8(sp)
    80004340:	00013403          	ld	s0,0(sp)
    80004344:	00d5151b          	slliw	a0,a0,0xd
    80004348:	0c2017b7          	lui	a5,0xc201
    8000434c:	00a78533          	add	a0,a5,a0
    80004350:	00452503          	lw	a0,4(a0)
    80004354:	01010113          	addi	sp,sp,16
    80004358:	00008067          	ret

000000008000435c <plic_complete>:
    8000435c:	fe010113          	addi	sp,sp,-32
    80004360:	00813823          	sd	s0,16(sp)
    80004364:	00913423          	sd	s1,8(sp)
    80004368:	00113c23          	sd	ra,24(sp)
    8000436c:	02010413          	addi	s0,sp,32
    80004370:	00050493          	mv	s1,a0
    80004374:	00000097          	auipc	ra,0x0
    80004378:	9b4080e7          	jalr	-1612(ra) # 80003d28 <cpuid>
    8000437c:	01813083          	ld	ra,24(sp)
    80004380:	01013403          	ld	s0,16(sp)
    80004384:	00d5179b          	slliw	a5,a0,0xd
    80004388:	0c201737          	lui	a4,0xc201
    8000438c:	00f707b3          	add	a5,a4,a5
    80004390:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004394:	00813483          	ld	s1,8(sp)
    80004398:	02010113          	addi	sp,sp,32
    8000439c:	00008067          	ret

00000000800043a0 <consolewrite>:
    800043a0:	fb010113          	addi	sp,sp,-80
    800043a4:	04813023          	sd	s0,64(sp)
    800043a8:	04113423          	sd	ra,72(sp)
    800043ac:	02913c23          	sd	s1,56(sp)
    800043b0:	03213823          	sd	s2,48(sp)
    800043b4:	03313423          	sd	s3,40(sp)
    800043b8:	03413023          	sd	s4,32(sp)
    800043bc:	01513c23          	sd	s5,24(sp)
    800043c0:	05010413          	addi	s0,sp,80
    800043c4:	06c05c63          	blez	a2,8000443c <consolewrite+0x9c>
    800043c8:	00060993          	mv	s3,a2
    800043cc:	00050a13          	mv	s4,a0
    800043d0:	00058493          	mv	s1,a1
    800043d4:	00000913          	li	s2,0
    800043d8:	fff00a93          	li	s5,-1
    800043dc:	01c0006f          	j	800043f8 <consolewrite+0x58>
    800043e0:	fbf44503          	lbu	a0,-65(s0)
    800043e4:	0019091b          	addiw	s2,s2,1
    800043e8:	00148493          	addi	s1,s1,1
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	a9c080e7          	jalr	-1380(ra) # 80004e88 <uartputc>
    800043f4:	03298063          	beq	s3,s2,80004414 <consolewrite+0x74>
    800043f8:	00048613          	mv	a2,s1
    800043fc:	00100693          	li	a3,1
    80004400:	000a0593          	mv	a1,s4
    80004404:	fbf40513          	addi	a0,s0,-65
    80004408:	00000097          	auipc	ra,0x0
    8000440c:	9d8080e7          	jalr	-1576(ra) # 80003de0 <either_copyin>
    80004410:	fd5518e3          	bne	a0,s5,800043e0 <consolewrite+0x40>
    80004414:	04813083          	ld	ra,72(sp)
    80004418:	04013403          	ld	s0,64(sp)
    8000441c:	03813483          	ld	s1,56(sp)
    80004420:	02813983          	ld	s3,40(sp)
    80004424:	02013a03          	ld	s4,32(sp)
    80004428:	01813a83          	ld	s5,24(sp)
    8000442c:	00090513          	mv	a0,s2
    80004430:	03013903          	ld	s2,48(sp)
    80004434:	05010113          	addi	sp,sp,80
    80004438:	00008067          	ret
    8000443c:	00000913          	li	s2,0
    80004440:	fd5ff06f          	j	80004414 <consolewrite+0x74>

0000000080004444 <consoleread>:
    80004444:	f9010113          	addi	sp,sp,-112
    80004448:	06813023          	sd	s0,96(sp)
    8000444c:	04913c23          	sd	s1,88(sp)
    80004450:	05213823          	sd	s2,80(sp)
    80004454:	05313423          	sd	s3,72(sp)
    80004458:	05413023          	sd	s4,64(sp)
    8000445c:	03513c23          	sd	s5,56(sp)
    80004460:	03613823          	sd	s6,48(sp)
    80004464:	03713423          	sd	s7,40(sp)
    80004468:	03813023          	sd	s8,32(sp)
    8000446c:	06113423          	sd	ra,104(sp)
    80004470:	01913c23          	sd	s9,24(sp)
    80004474:	07010413          	addi	s0,sp,112
    80004478:	00060b93          	mv	s7,a2
    8000447c:	00050913          	mv	s2,a0
    80004480:	00058c13          	mv	s8,a1
    80004484:	00060b1b          	sext.w	s6,a2
    80004488:	00004497          	auipc	s1,0x4
    8000448c:	27048493          	addi	s1,s1,624 # 800086f8 <cons>
    80004490:	00400993          	li	s3,4
    80004494:	fff00a13          	li	s4,-1
    80004498:	00a00a93          	li	s5,10
    8000449c:	05705e63          	blez	s7,800044f8 <consoleread+0xb4>
    800044a0:	09c4a703          	lw	a4,156(s1)
    800044a4:	0984a783          	lw	a5,152(s1)
    800044a8:	0007071b          	sext.w	a4,a4
    800044ac:	08e78463          	beq	a5,a4,80004534 <consoleread+0xf0>
    800044b0:	07f7f713          	andi	a4,a5,127
    800044b4:	00e48733          	add	a4,s1,a4
    800044b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800044bc:	0017869b          	addiw	a3,a5,1
    800044c0:	08d4ac23          	sw	a3,152(s1)
    800044c4:	00070c9b          	sext.w	s9,a4
    800044c8:	0b370663          	beq	a4,s3,80004574 <consoleread+0x130>
    800044cc:	00100693          	li	a3,1
    800044d0:	f9f40613          	addi	a2,s0,-97
    800044d4:	000c0593          	mv	a1,s8
    800044d8:	00090513          	mv	a0,s2
    800044dc:	f8e40fa3          	sb	a4,-97(s0)
    800044e0:	00000097          	auipc	ra,0x0
    800044e4:	8b4080e7          	jalr	-1868(ra) # 80003d94 <either_copyout>
    800044e8:	01450863          	beq	a0,s4,800044f8 <consoleread+0xb4>
    800044ec:	001c0c13          	addi	s8,s8,1
    800044f0:	fffb8b9b          	addiw	s7,s7,-1
    800044f4:	fb5c94e3          	bne	s9,s5,8000449c <consoleread+0x58>
    800044f8:	000b851b          	sext.w	a0,s7
    800044fc:	06813083          	ld	ra,104(sp)
    80004500:	06013403          	ld	s0,96(sp)
    80004504:	05813483          	ld	s1,88(sp)
    80004508:	05013903          	ld	s2,80(sp)
    8000450c:	04813983          	ld	s3,72(sp)
    80004510:	04013a03          	ld	s4,64(sp)
    80004514:	03813a83          	ld	s5,56(sp)
    80004518:	02813b83          	ld	s7,40(sp)
    8000451c:	02013c03          	ld	s8,32(sp)
    80004520:	01813c83          	ld	s9,24(sp)
    80004524:	40ab053b          	subw	a0,s6,a0
    80004528:	03013b03          	ld	s6,48(sp)
    8000452c:	07010113          	addi	sp,sp,112
    80004530:	00008067          	ret
    80004534:	00001097          	auipc	ra,0x1
    80004538:	1d8080e7          	jalr	472(ra) # 8000570c <push_on>
    8000453c:	0984a703          	lw	a4,152(s1)
    80004540:	09c4a783          	lw	a5,156(s1)
    80004544:	0007879b          	sext.w	a5,a5
    80004548:	fef70ce3          	beq	a4,a5,80004540 <consoleread+0xfc>
    8000454c:	00001097          	auipc	ra,0x1
    80004550:	234080e7          	jalr	564(ra) # 80005780 <pop_on>
    80004554:	0984a783          	lw	a5,152(s1)
    80004558:	07f7f713          	andi	a4,a5,127
    8000455c:	00e48733          	add	a4,s1,a4
    80004560:	01874703          	lbu	a4,24(a4)
    80004564:	0017869b          	addiw	a3,a5,1
    80004568:	08d4ac23          	sw	a3,152(s1)
    8000456c:	00070c9b          	sext.w	s9,a4
    80004570:	f5371ee3          	bne	a4,s3,800044cc <consoleread+0x88>
    80004574:	000b851b          	sext.w	a0,s7
    80004578:	f96bf2e3          	bgeu	s7,s6,800044fc <consoleread+0xb8>
    8000457c:	08f4ac23          	sw	a5,152(s1)
    80004580:	f7dff06f          	j	800044fc <consoleread+0xb8>

0000000080004584 <consputc>:
    80004584:	10000793          	li	a5,256
    80004588:	00f50663          	beq	a0,a5,80004594 <consputc+0x10>
    8000458c:	00001317          	auipc	t1,0x1
    80004590:	9f430067          	jr	-1548(t1) # 80004f80 <uartputc_sync>
    80004594:	ff010113          	addi	sp,sp,-16
    80004598:	00113423          	sd	ra,8(sp)
    8000459c:	00813023          	sd	s0,0(sp)
    800045a0:	01010413          	addi	s0,sp,16
    800045a4:	00800513          	li	a0,8
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	9d8080e7          	jalr	-1576(ra) # 80004f80 <uartputc_sync>
    800045b0:	02000513          	li	a0,32
    800045b4:	00001097          	auipc	ra,0x1
    800045b8:	9cc080e7          	jalr	-1588(ra) # 80004f80 <uartputc_sync>
    800045bc:	00013403          	ld	s0,0(sp)
    800045c0:	00813083          	ld	ra,8(sp)
    800045c4:	00800513          	li	a0,8
    800045c8:	01010113          	addi	sp,sp,16
    800045cc:	00001317          	auipc	t1,0x1
    800045d0:	9b430067          	jr	-1612(t1) # 80004f80 <uartputc_sync>

00000000800045d4 <consoleintr>:
    800045d4:	fe010113          	addi	sp,sp,-32
    800045d8:	00813823          	sd	s0,16(sp)
    800045dc:	00913423          	sd	s1,8(sp)
    800045e0:	01213023          	sd	s2,0(sp)
    800045e4:	00113c23          	sd	ra,24(sp)
    800045e8:	02010413          	addi	s0,sp,32
    800045ec:	00004917          	auipc	s2,0x4
    800045f0:	10c90913          	addi	s2,s2,268 # 800086f8 <cons>
    800045f4:	00050493          	mv	s1,a0
    800045f8:	00090513          	mv	a0,s2
    800045fc:	00001097          	auipc	ra,0x1
    80004600:	e40080e7          	jalr	-448(ra) # 8000543c <acquire>
    80004604:	02048c63          	beqz	s1,8000463c <consoleintr+0x68>
    80004608:	0a092783          	lw	a5,160(s2)
    8000460c:	09892703          	lw	a4,152(s2)
    80004610:	07f00693          	li	a3,127
    80004614:	40e7873b          	subw	a4,a5,a4
    80004618:	02e6e263          	bltu	a3,a4,8000463c <consoleintr+0x68>
    8000461c:	00d00713          	li	a4,13
    80004620:	04e48063          	beq	s1,a4,80004660 <consoleintr+0x8c>
    80004624:	07f7f713          	andi	a4,a5,127
    80004628:	00e90733          	add	a4,s2,a4
    8000462c:	0017879b          	addiw	a5,a5,1
    80004630:	0af92023          	sw	a5,160(s2)
    80004634:	00970c23          	sb	s1,24(a4)
    80004638:	08f92e23          	sw	a5,156(s2)
    8000463c:	01013403          	ld	s0,16(sp)
    80004640:	01813083          	ld	ra,24(sp)
    80004644:	00813483          	ld	s1,8(sp)
    80004648:	00013903          	ld	s2,0(sp)
    8000464c:	00004517          	auipc	a0,0x4
    80004650:	0ac50513          	addi	a0,a0,172 # 800086f8 <cons>
    80004654:	02010113          	addi	sp,sp,32
    80004658:	00001317          	auipc	t1,0x1
    8000465c:	eb030067          	jr	-336(t1) # 80005508 <release>
    80004660:	00a00493          	li	s1,10
    80004664:	fc1ff06f          	j	80004624 <consoleintr+0x50>

0000000080004668 <consoleinit>:
    80004668:	fe010113          	addi	sp,sp,-32
    8000466c:	00113c23          	sd	ra,24(sp)
    80004670:	00813823          	sd	s0,16(sp)
    80004674:	00913423          	sd	s1,8(sp)
    80004678:	02010413          	addi	s0,sp,32
    8000467c:	00004497          	auipc	s1,0x4
    80004680:	07c48493          	addi	s1,s1,124 # 800086f8 <cons>
    80004684:	00048513          	mv	a0,s1
    80004688:	00002597          	auipc	a1,0x2
    8000468c:	c5858593          	addi	a1,a1,-936 # 800062e0 <_ZZ12printIntegermE6digits+0x238>
    80004690:	00001097          	auipc	ra,0x1
    80004694:	d88080e7          	jalr	-632(ra) # 80005418 <initlock>
    80004698:	00000097          	auipc	ra,0x0
    8000469c:	7ac080e7          	jalr	1964(ra) # 80004e44 <uartinit>
    800046a0:	01813083          	ld	ra,24(sp)
    800046a4:	01013403          	ld	s0,16(sp)
    800046a8:	00000797          	auipc	a5,0x0
    800046ac:	d9c78793          	addi	a5,a5,-612 # 80004444 <consoleread>
    800046b0:	0af4bc23          	sd	a5,184(s1)
    800046b4:	00000797          	auipc	a5,0x0
    800046b8:	cec78793          	addi	a5,a5,-788 # 800043a0 <consolewrite>
    800046bc:	0cf4b023          	sd	a5,192(s1)
    800046c0:	00813483          	ld	s1,8(sp)
    800046c4:	02010113          	addi	sp,sp,32
    800046c8:	00008067          	ret

00000000800046cc <console_read>:
    800046cc:	ff010113          	addi	sp,sp,-16
    800046d0:	00813423          	sd	s0,8(sp)
    800046d4:	01010413          	addi	s0,sp,16
    800046d8:	00813403          	ld	s0,8(sp)
    800046dc:	00004317          	auipc	t1,0x4
    800046e0:	0d433303          	ld	t1,212(t1) # 800087b0 <devsw+0x10>
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00030067          	jr	t1

00000000800046ec <console_write>:
    800046ec:	ff010113          	addi	sp,sp,-16
    800046f0:	00813423          	sd	s0,8(sp)
    800046f4:	01010413          	addi	s0,sp,16
    800046f8:	00813403          	ld	s0,8(sp)
    800046fc:	00004317          	auipc	t1,0x4
    80004700:	0bc33303          	ld	t1,188(t1) # 800087b8 <devsw+0x18>
    80004704:	01010113          	addi	sp,sp,16
    80004708:	00030067          	jr	t1

000000008000470c <panic>:
    8000470c:	fe010113          	addi	sp,sp,-32
    80004710:	00113c23          	sd	ra,24(sp)
    80004714:	00813823          	sd	s0,16(sp)
    80004718:	00913423          	sd	s1,8(sp)
    8000471c:	02010413          	addi	s0,sp,32
    80004720:	00050493          	mv	s1,a0
    80004724:	00002517          	auipc	a0,0x2
    80004728:	bc450513          	addi	a0,a0,-1084 # 800062e8 <_ZZ12printIntegermE6digits+0x240>
    8000472c:	00004797          	auipc	a5,0x4
    80004730:	1207a623          	sw	zero,300(a5) # 80008858 <pr+0x18>
    80004734:	00000097          	auipc	ra,0x0
    80004738:	034080e7          	jalr	52(ra) # 80004768 <__printf>
    8000473c:	00048513          	mv	a0,s1
    80004740:	00000097          	auipc	ra,0x0
    80004744:	028080e7          	jalr	40(ra) # 80004768 <__printf>
    80004748:	00002517          	auipc	a0,0x2
    8000474c:	94850513          	addi	a0,a0,-1720 # 80006090 <kvmincrease+0x1c0>
    80004750:	00000097          	auipc	ra,0x0
    80004754:	018080e7          	jalr	24(ra) # 80004768 <__printf>
    80004758:	00100793          	li	a5,1
    8000475c:	00003717          	auipc	a4,0x3
    80004760:	e4f72e23          	sw	a5,-420(a4) # 800075b8 <panicked>
    80004764:	0000006f          	j	80004764 <panic+0x58>

0000000080004768 <__printf>:
    80004768:	f3010113          	addi	sp,sp,-208
    8000476c:	08813023          	sd	s0,128(sp)
    80004770:	07313423          	sd	s3,104(sp)
    80004774:	09010413          	addi	s0,sp,144
    80004778:	05813023          	sd	s8,64(sp)
    8000477c:	08113423          	sd	ra,136(sp)
    80004780:	06913c23          	sd	s1,120(sp)
    80004784:	07213823          	sd	s2,112(sp)
    80004788:	07413023          	sd	s4,96(sp)
    8000478c:	05513c23          	sd	s5,88(sp)
    80004790:	05613823          	sd	s6,80(sp)
    80004794:	05713423          	sd	s7,72(sp)
    80004798:	03913c23          	sd	s9,56(sp)
    8000479c:	03a13823          	sd	s10,48(sp)
    800047a0:	03b13423          	sd	s11,40(sp)
    800047a4:	00004317          	auipc	t1,0x4
    800047a8:	09c30313          	addi	t1,t1,156 # 80008840 <pr>
    800047ac:	01832c03          	lw	s8,24(t1)
    800047b0:	00b43423          	sd	a1,8(s0)
    800047b4:	00c43823          	sd	a2,16(s0)
    800047b8:	00d43c23          	sd	a3,24(s0)
    800047bc:	02e43023          	sd	a4,32(s0)
    800047c0:	02f43423          	sd	a5,40(s0)
    800047c4:	03043823          	sd	a6,48(s0)
    800047c8:	03143c23          	sd	a7,56(s0)
    800047cc:	00050993          	mv	s3,a0
    800047d0:	4a0c1663          	bnez	s8,80004c7c <__printf+0x514>
    800047d4:	60098c63          	beqz	s3,80004dec <__printf+0x684>
    800047d8:	0009c503          	lbu	a0,0(s3)
    800047dc:	00840793          	addi	a5,s0,8
    800047e0:	f6f43c23          	sd	a5,-136(s0)
    800047e4:	00000493          	li	s1,0
    800047e8:	22050063          	beqz	a0,80004a08 <__printf+0x2a0>
    800047ec:	00002a37          	lui	s4,0x2
    800047f0:	00018ab7          	lui	s5,0x18
    800047f4:	000f4b37          	lui	s6,0xf4
    800047f8:	00989bb7          	lui	s7,0x989
    800047fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004800:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004804:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004808:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000480c:	00148c9b          	addiw	s9,s1,1
    80004810:	02500793          	li	a5,37
    80004814:	01998933          	add	s2,s3,s9
    80004818:	38f51263          	bne	a0,a5,80004b9c <__printf+0x434>
    8000481c:	00094783          	lbu	a5,0(s2)
    80004820:	00078c9b          	sext.w	s9,a5
    80004824:	1e078263          	beqz	a5,80004a08 <__printf+0x2a0>
    80004828:	0024849b          	addiw	s1,s1,2
    8000482c:	07000713          	li	a4,112
    80004830:	00998933          	add	s2,s3,s1
    80004834:	38e78a63          	beq	a5,a4,80004bc8 <__printf+0x460>
    80004838:	20f76863          	bltu	a4,a5,80004a48 <__printf+0x2e0>
    8000483c:	42a78863          	beq	a5,a0,80004c6c <__printf+0x504>
    80004840:	06400713          	li	a4,100
    80004844:	40e79663          	bne	a5,a4,80004c50 <__printf+0x4e8>
    80004848:	f7843783          	ld	a5,-136(s0)
    8000484c:	0007a603          	lw	a2,0(a5)
    80004850:	00878793          	addi	a5,a5,8
    80004854:	f6f43c23          	sd	a5,-136(s0)
    80004858:	42064a63          	bltz	a2,80004c8c <__printf+0x524>
    8000485c:	00a00713          	li	a4,10
    80004860:	02e677bb          	remuw	a5,a2,a4
    80004864:	00002d97          	auipc	s11,0x2
    80004868:	aacd8d93          	addi	s11,s11,-1364 # 80006310 <digits>
    8000486c:	00900593          	li	a1,9
    80004870:	0006051b          	sext.w	a0,a2
    80004874:	00000c93          	li	s9,0
    80004878:	02079793          	slli	a5,a5,0x20
    8000487c:	0207d793          	srli	a5,a5,0x20
    80004880:	00fd87b3          	add	a5,s11,a5
    80004884:	0007c783          	lbu	a5,0(a5)
    80004888:	02e656bb          	divuw	a3,a2,a4
    8000488c:	f8f40023          	sb	a5,-128(s0)
    80004890:	14c5d863          	bge	a1,a2,800049e0 <__printf+0x278>
    80004894:	06300593          	li	a1,99
    80004898:	00100c93          	li	s9,1
    8000489c:	02e6f7bb          	remuw	a5,a3,a4
    800048a0:	02079793          	slli	a5,a5,0x20
    800048a4:	0207d793          	srli	a5,a5,0x20
    800048a8:	00fd87b3          	add	a5,s11,a5
    800048ac:	0007c783          	lbu	a5,0(a5)
    800048b0:	02e6d73b          	divuw	a4,a3,a4
    800048b4:	f8f400a3          	sb	a5,-127(s0)
    800048b8:	12a5f463          	bgeu	a1,a0,800049e0 <__printf+0x278>
    800048bc:	00a00693          	li	a3,10
    800048c0:	00900593          	li	a1,9
    800048c4:	02d777bb          	remuw	a5,a4,a3
    800048c8:	02079793          	slli	a5,a5,0x20
    800048cc:	0207d793          	srli	a5,a5,0x20
    800048d0:	00fd87b3          	add	a5,s11,a5
    800048d4:	0007c503          	lbu	a0,0(a5)
    800048d8:	02d757bb          	divuw	a5,a4,a3
    800048dc:	f8a40123          	sb	a0,-126(s0)
    800048e0:	48e5f263          	bgeu	a1,a4,80004d64 <__printf+0x5fc>
    800048e4:	06300513          	li	a0,99
    800048e8:	02d7f5bb          	remuw	a1,a5,a3
    800048ec:	02059593          	slli	a1,a1,0x20
    800048f0:	0205d593          	srli	a1,a1,0x20
    800048f4:	00bd85b3          	add	a1,s11,a1
    800048f8:	0005c583          	lbu	a1,0(a1)
    800048fc:	02d7d7bb          	divuw	a5,a5,a3
    80004900:	f8b401a3          	sb	a1,-125(s0)
    80004904:	48e57263          	bgeu	a0,a4,80004d88 <__printf+0x620>
    80004908:	3e700513          	li	a0,999
    8000490c:	02d7f5bb          	remuw	a1,a5,a3
    80004910:	02059593          	slli	a1,a1,0x20
    80004914:	0205d593          	srli	a1,a1,0x20
    80004918:	00bd85b3          	add	a1,s11,a1
    8000491c:	0005c583          	lbu	a1,0(a1)
    80004920:	02d7d7bb          	divuw	a5,a5,a3
    80004924:	f8b40223          	sb	a1,-124(s0)
    80004928:	46e57663          	bgeu	a0,a4,80004d94 <__printf+0x62c>
    8000492c:	02d7f5bb          	remuw	a1,a5,a3
    80004930:	02059593          	slli	a1,a1,0x20
    80004934:	0205d593          	srli	a1,a1,0x20
    80004938:	00bd85b3          	add	a1,s11,a1
    8000493c:	0005c583          	lbu	a1,0(a1)
    80004940:	02d7d7bb          	divuw	a5,a5,a3
    80004944:	f8b402a3          	sb	a1,-123(s0)
    80004948:	46ea7863          	bgeu	s4,a4,80004db8 <__printf+0x650>
    8000494c:	02d7f5bb          	remuw	a1,a5,a3
    80004950:	02059593          	slli	a1,a1,0x20
    80004954:	0205d593          	srli	a1,a1,0x20
    80004958:	00bd85b3          	add	a1,s11,a1
    8000495c:	0005c583          	lbu	a1,0(a1)
    80004960:	02d7d7bb          	divuw	a5,a5,a3
    80004964:	f8b40323          	sb	a1,-122(s0)
    80004968:	3eeaf863          	bgeu	s5,a4,80004d58 <__printf+0x5f0>
    8000496c:	02d7f5bb          	remuw	a1,a5,a3
    80004970:	02059593          	slli	a1,a1,0x20
    80004974:	0205d593          	srli	a1,a1,0x20
    80004978:	00bd85b3          	add	a1,s11,a1
    8000497c:	0005c583          	lbu	a1,0(a1)
    80004980:	02d7d7bb          	divuw	a5,a5,a3
    80004984:	f8b403a3          	sb	a1,-121(s0)
    80004988:	42eb7e63          	bgeu	s6,a4,80004dc4 <__printf+0x65c>
    8000498c:	02d7f5bb          	remuw	a1,a5,a3
    80004990:	02059593          	slli	a1,a1,0x20
    80004994:	0205d593          	srli	a1,a1,0x20
    80004998:	00bd85b3          	add	a1,s11,a1
    8000499c:	0005c583          	lbu	a1,0(a1)
    800049a0:	02d7d7bb          	divuw	a5,a5,a3
    800049a4:	f8b40423          	sb	a1,-120(s0)
    800049a8:	42ebfc63          	bgeu	s7,a4,80004de0 <__printf+0x678>
    800049ac:	02079793          	slli	a5,a5,0x20
    800049b0:	0207d793          	srli	a5,a5,0x20
    800049b4:	00fd8db3          	add	s11,s11,a5
    800049b8:	000dc703          	lbu	a4,0(s11)
    800049bc:	00a00793          	li	a5,10
    800049c0:	00900c93          	li	s9,9
    800049c4:	f8e404a3          	sb	a4,-119(s0)
    800049c8:	00065c63          	bgez	a2,800049e0 <__printf+0x278>
    800049cc:	f9040713          	addi	a4,s0,-112
    800049d0:	00f70733          	add	a4,a4,a5
    800049d4:	02d00693          	li	a3,45
    800049d8:	fed70823          	sb	a3,-16(a4)
    800049dc:	00078c93          	mv	s9,a5
    800049e0:	f8040793          	addi	a5,s0,-128
    800049e4:	01978cb3          	add	s9,a5,s9
    800049e8:	f7f40d13          	addi	s10,s0,-129
    800049ec:	000cc503          	lbu	a0,0(s9)
    800049f0:	fffc8c93          	addi	s9,s9,-1
    800049f4:	00000097          	auipc	ra,0x0
    800049f8:	b90080e7          	jalr	-1136(ra) # 80004584 <consputc>
    800049fc:	ffac98e3          	bne	s9,s10,800049ec <__printf+0x284>
    80004a00:	00094503          	lbu	a0,0(s2)
    80004a04:	e00514e3          	bnez	a0,8000480c <__printf+0xa4>
    80004a08:	1a0c1663          	bnez	s8,80004bb4 <__printf+0x44c>
    80004a0c:	08813083          	ld	ra,136(sp)
    80004a10:	08013403          	ld	s0,128(sp)
    80004a14:	07813483          	ld	s1,120(sp)
    80004a18:	07013903          	ld	s2,112(sp)
    80004a1c:	06813983          	ld	s3,104(sp)
    80004a20:	06013a03          	ld	s4,96(sp)
    80004a24:	05813a83          	ld	s5,88(sp)
    80004a28:	05013b03          	ld	s6,80(sp)
    80004a2c:	04813b83          	ld	s7,72(sp)
    80004a30:	04013c03          	ld	s8,64(sp)
    80004a34:	03813c83          	ld	s9,56(sp)
    80004a38:	03013d03          	ld	s10,48(sp)
    80004a3c:	02813d83          	ld	s11,40(sp)
    80004a40:	0d010113          	addi	sp,sp,208
    80004a44:	00008067          	ret
    80004a48:	07300713          	li	a4,115
    80004a4c:	1ce78a63          	beq	a5,a4,80004c20 <__printf+0x4b8>
    80004a50:	07800713          	li	a4,120
    80004a54:	1ee79e63          	bne	a5,a4,80004c50 <__printf+0x4e8>
    80004a58:	f7843783          	ld	a5,-136(s0)
    80004a5c:	0007a703          	lw	a4,0(a5)
    80004a60:	00878793          	addi	a5,a5,8
    80004a64:	f6f43c23          	sd	a5,-136(s0)
    80004a68:	28074263          	bltz	a4,80004cec <__printf+0x584>
    80004a6c:	00002d97          	auipc	s11,0x2
    80004a70:	8a4d8d93          	addi	s11,s11,-1884 # 80006310 <digits>
    80004a74:	00f77793          	andi	a5,a4,15
    80004a78:	00fd87b3          	add	a5,s11,a5
    80004a7c:	0007c683          	lbu	a3,0(a5)
    80004a80:	00f00613          	li	a2,15
    80004a84:	0007079b          	sext.w	a5,a4
    80004a88:	f8d40023          	sb	a3,-128(s0)
    80004a8c:	0047559b          	srliw	a1,a4,0x4
    80004a90:	0047569b          	srliw	a3,a4,0x4
    80004a94:	00000c93          	li	s9,0
    80004a98:	0ee65063          	bge	a2,a4,80004b78 <__printf+0x410>
    80004a9c:	00f6f693          	andi	a3,a3,15
    80004aa0:	00dd86b3          	add	a3,s11,a3
    80004aa4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004aa8:	0087d79b          	srliw	a5,a5,0x8
    80004aac:	00100c93          	li	s9,1
    80004ab0:	f8d400a3          	sb	a3,-127(s0)
    80004ab4:	0cb67263          	bgeu	a2,a1,80004b78 <__printf+0x410>
    80004ab8:	00f7f693          	andi	a3,a5,15
    80004abc:	00dd86b3          	add	a3,s11,a3
    80004ac0:	0006c583          	lbu	a1,0(a3)
    80004ac4:	00f00613          	li	a2,15
    80004ac8:	0047d69b          	srliw	a3,a5,0x4
    80004acc:	f8b40123          	sb	a1,-126(s0)
    80004ad0:	0047d593          	srli	a1,a5,0x4
    80004ad4:	28f67e63          	bgeu	a2,a5,80004d70 <__printf+0x608>
    80004ad8:	00f6f693          	andi	a3,a3,15
    80004adc:	00dd86b3          	add	a3,s11,a3
    80004ae0:	0006c503          	lbu	a0,0(a3)
    80004ae4:	0087d813          	srli	a6,a5,0x8
    80004ae8:	0087d69b          	srliw	a3,a5,0x8
    80004aec:	f8a401a3          	sb	a0,-125(s0)
    80004af0:	28b67663          	bgeu	a2,a1,80004d7c <__printf+0x614>
    80004af4:	00f6f693          	andi	a3,a3,15
    80004af8:	00dd86b3          	add	a3,s11,a3
    80004afc:	0006c583          	lbu	a1,0(a3)
    80004b00:	00c7d513          	srli	a0,a5,0xc
    80004b04:	00c7d69b          	srliw	a3,a5,0xc
    80004b08:	f8b40223          	sb	a1,-124(s0)
    80004b0c:	29067a63          	bgeu	a2,a6,80004da0 <__printf+0x638>
    80004b10:	00f6f693          	andi	a3,a3,15
    80004b14:	00dd86b3          	add	a3,s11,a3
    80004b18:	0006c583          	lbu	a1,0(a3)
    80004b1c:	0107d813          	srli	a6,a5,0x10
    80004b20:	0107d69b          	srliw	a3,a5,0x10
    80004b24:	f8b402a3          	sb	a1,-123(s0)
    80004b28:	28a67263          	bgeu	a2,a0,80004dac <__printf+0x644>
    80004b2c:	00f6f693          	andi	a3,a3,15
    80004b30:	00dd86b3          	add	a3,s11,a3
    80004b34:	0006c683          	lbu	a3,0(a3)
    80004b38:	0147d79b          	srliw	a5,a5,0x14
    80004b3c:	f8d40323          	sb	a3,-122(s0)
    80004b40:	21067663          	bgeu	a2,a6,80004d4c <__printf+0x5e4>
    80004b44:	02079793          	slli	a5,a5,0x20
    80004b48:	0207d793          	srli	a5,a5,0x20
    80004b4c:	00fd8db3          	add	s11,s11,a5
    80004b50:	000dc683          	lbu	a3,0(s11)
    80004b54:	00800793          	li	a5,8
    80004b58:	00700c93          	li	s9,7
    80004b5c:	f8d403a3          	sb	a3,-121(s0)
    80004b60:	00075c63          	bgez	a4,80004b78 <__printf+0x410>
    80004b64:	f9040713          	addi	a4,s0,-112
    80004b68:	00f70733          	add	a4,a4,a5
    80004b6c:	02d00693          	li	a3,45
    80004b70:	fed70823          	sb	a3,-16(a4)
    80004b74:	00078c93          	mv	s9,a5
    80004b78:	f8040793          	addi	a5,s0,-128
    80004b7c:	01978cb3          	add	s9,a5,s9
    80004b80:	f7f40d13          	addi	s10,s0,-129
    80004b84:	000cc503          	lbu	a0,0(s9)
    80004b88:	fffc8c93          	addi	s9,s9,-1
    80004b8c:	00000097          	auipc	ra,0x0
    80004b90:	9f8080e7          	jalr	-1544(ra) # 80004584 <consputc>
    80004b94:	ff9d18e3          	bne	s10,s9,80004b84 <__printf+0x41c>
    80004b98:	0100006f          	j	80004ba8 <__printf+0x440>
    80004b9c:	00000097          	auipc	ra,0x0
    80004ba0:	9e8080e7          	jalr	-1560(ra) # 80004584 <consputc>
    80004ba4:	000c8493          	mv	s1,s9
    80004ba8:	00094503          	lbu	a0,0(s2)
    80004bac:	c60510e3          	bnez	a0,8000480c <__printf+0xa4>
    80004bb0:	e40c0ee3          	beqz	s8,80004a0c <__printf+0x2a4>
    80004bb4:	00004517          	auipc	a0,0x4
    80004bb8:	c8c50513          	addi	a0,a0,-884 # 80008840 <pr>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	94c080e7          	jalr	-1716(ra) # 80005508 <release>
    80004bc4:	e49ff06f          	j	80004a0c <__printf+0x2a4>
    80004bc8:	f7843783          	ld	a5,-136(s0)
    80004bcc:	03000513          	li	a0,48
    80004bd0:	01000d13          	li	s10,16
    80004bd4:	00878713          	addi	a4,a5,8
    80004bd8:	0007bc83          	ld	s9,0(a5)
    80004bdc:	f6e43c23          	sd	a4,-136(s0)
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	9a4080e7          	jalr	-1628(ra) # 80004584 <consputc>
    80004be8:	07800513          	li	a0,120
    80004bec:	00000097          	auipc	ra,0x0
    80004bf0:	998080e7          	jalr	-1640(ra) # 80004584 <consputc>
    80004bf4:	00001d97          	auipc	s11,0x1
    80004bf8:	71cd8d93          	addi	s11,s11,1820 # 80006310 <digits>
    80004bfc:	03ccd793          	srli	a5,s9,0x3c
    80004c00:	00fd87b3          	add	a5,s11,a5
    80004c04:	0007c503          	lbu	a0,0(a5)
    80004c08:	fffd0d1b          	addiw	s10,s10,-1
    80004c0c:	004c9c93          	slli	s9,s9,0x4
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	974080e7          	jalr	-1676(ra) # 80004584 <consputc>
    80004c18:	fe0d12e3          	bnez	s10,80004bfc <__printf+0x494>
    80004c1c:	f8dff06f          	j	80004ba8 <__printf+0x440>
    80004c20:	f7843783          	ld	a5,-136(s0)
    80004c24:	0007bc83          	ld	s9,0(a5)
    80004c28:	00878793          	addi	a5,a5,8
    80004c2c:	f6f43c23          	sd	a5,-136(s0)
    80004c30:	000c9a63          	bnez	s9,80004c44 <__printf+0x4dc>
    80004c34:	1080006f          	j	80004d3c <__printf+0x5d4>
    80004c38:	001c8c93          	addi	s9,s9,1
    80004c3c:	00000097          	auipc	ra,0x0
    80004c40:	948080e7          	jalr	-1720(ra) # 80004584 <consputc>
    80004c44:	000cc503          	lbu	a0,0(s9)
    80004c48:	fe0518e3          	bnez	a0,80004c38 <__printf+0x4d0>
    80004c4c:	f5dff06f          	j	80004ba8 <__printf+0x440>
    80004c50:	02500513          	li	a0,37
    80004c54:	00000097          	auipc	ra,0x0
    80004c58:	930080e7          	jalr	-1744(ra) # 80004584 <consputc>
    80004c5c:	000c8513          	mv	a0,s9
    80004c60:	00000097          	auipc	ra,0x0
    80004c64:	924080e7          	jalr	-1756(ra) # 80004584 <consputc>
    80004c68:	f41ff06f          	j	80004ba8 <__printf+0x440>
    80004c6c:	02500513          	li	a0,37
    80004c70:	00000097          	auipc	ra,0x0
    80004c74:	914080e7          	jalr	-1772(ra) # 80004584 <consputc>
    80004c78:	f31ff06f          	j	80004ba8 <__printf+0x440>
    80004c7c:	00030513          	mv	a0,t1
    80004c80:	00000097          	auipc	ra,0x0
    80004c84:	7bc080e7          	jalr	1980(ra) # 8000543c <acquire>
    80004c88:	b4dff06f          	j	800047d4 <__printf+0x6c>
    80004c8c:	40c0053b          	negw	a0,a2
    80004c90:	00a00713          	li	a4,10
    80004c94:	02e576bb          	remuw	a3,a0,a4
    80004c98:	00001d97          	auipc	s11,0x1
    80004c9c:	678d8d93          	addi	s11,s11,1656 # 80006310 <digits>
    80004ca0:	ff700593          	li	a1,-9
    80004ca4:	02069693          	slli	a3,a3,0x20
    80004ca8:	0206d693          	srli	a3,a3,0x20
    80004cac:	00dd86b3          	add	a3,s11,a3
    80004cb0:	0006c683          	lbu	a3,0(a3)
    80004cb4:	02e557bb          	divuw	a5,a0,a4
    80004cb8:	f8d40023          	sb	a3,-128(s0)
    80004cbc:	10b65e63          	bge	a2,a1,80004dd8 <__printf+0x670>
    80004cc0:	06300593          	li	a1,99
    80004cc4:	02e7f6bb          	remuw	a3,a5,a4
    80004cc8:	02069693          	slli	a3,a3,0x20
    80004ccc:	0206d693          	srli	a3,a3,0x20
    80004cd0:	00dd86b3          	add	a3,s11,a3
    80004cd4:	0006c683          	lbu	a3,0(a3)
    80004cd8:	02e7d73b          	divuw	a4,a5,a4
    80004cdc:	00200793          	li	a5,2
    80004ce0:	f8d400a3          	sb	a3,-127(s0)
    80004ce4:	bca5ece3          	bltu	a1,a0,800048bc <__printf+0x154>
    80004ce8:	ce5ff06f          	j	800049cc <__printf+0x264>
    80004cec:	40e007bb          	negw	a5,a4
    80004cf0:	00001d97          	auipc	s11,0x1
    80004cf4:	620d8d93          	addi	s11,s11,1568 # 80006310 <digits>
    80004cf8:	00f7f693          	andi	a3,a5,15
    80004cfc:	00dd86b3          	add	a3,s11,a3
    80004d00:	0006c583          	lbu	a1,0(a3)
    80004d04:	ff100613          	li	a2,-15
    80004d08:	0047d69b          	srliw	a3,a5,0x4
    80004d0c:	f8b40023          	sb	a1,-128(s0)
    80004d10:	0047d59b          	srliw	a1,a5,0x4
    80004d14:	0ac75e63          	bge	a4,a2,80004dd0 <__printf+0x668>
    80004d18:	00f6f693          	andi	a3,a3,15
    80004d1c:	00dd86b3          	add	a3,s11,a3
    80004d20:	0006c603          	lbu	a2,0(a3)
    80004d24:	00f00693          	li	a3,15
    80004d28:	0087d79b          	srliw	a5,a5,0x8
    80004d2c:	f8c400a3          	sb	a2,-127(s0)
    80004d30:	d8b6e4e3          	bltu	a3,a1,80004ab8 <__printf+0x350>
    80004d34:	00200793          	li	a5,2
    80004d38:	e2dff06f          	j	80004b64 <__printf+0x3fc>
    80004d3c:	00001c97          	auipc	s9,0x1
    80004d40:	5b4c8c93          	addi	s9,s9,1460 # 800062f0 <_ZZ12printIntegermE6digits+0x248>
    80004d44:	02800513          	li	a0,40
    80004d48:	ef1ff06f          	j	80004c38 <__printf+0x4d0>
    80004d4c:	00700793          	li	a5,7
    80004d50:	00600c93          	li	s9,6
    80004d54:	e0dff06f          	j	80004b60 <__printf+0x3f8>
    80004d58:	00700793          	li	a5,7
    80004d5c:	00600c93          	li	s9,6
    80004d60:	c69ff06f          	j	800049c8 <__printf+0x260>
    80004d64:	00300793          	li	a5,3
    80004d68:	00200c93          	li	s9,2
    80004d6c:	c5dff06f          	j	800049c8 <__printf+0x260>
    80004d70:	00300793          	li	a5,3
    80004d74:	00200c93          	li	s9,2
    80004d78:	de9ff06f          	j	80004b60 <__printf+0x3f8>
    80004d7c:	00400793          	li	a5,4
    80004d80:	00300c93          	li	s9,3
    80004d84:	dddff06f          	j	80004b60 <__printf+0x3f8>
    80004d88:	00400793          	li	a5,4
    80004d8c:	00300c93          	li	s9,3
    80004d90:	c39ff06f          	j	800049c8 <__printf+0x260>
    80004d94:	00500793          	li	a5,5
    80004d98:	00400c93          	li	s9,4
    80004d9c:	c2dff06f          	j	800049c8 <__printf+0x260>
    80004da0:	00500793          	li	a5,5
    80004da4:	00400c93          	li	s9,4
    80004da8:	db9ff06f          	j	80004b60 <__printf+0x3f8>
    80004dac:	00600793          	li	a5,6
    80004db0:	00500c93          	li	s9,5
    80004db4:	dadff06f          	j	80004b60 <__printf+0x3f8>
    80004db8:	00600793          	li	a5,6
    80004dbc:	00500c93          	li	s9,5
    80004dc0:	c09ff06f          	j	800049c8 <__printf+0x260>
    80004dc4:	00800793          	li	a5,8
    80004dc8:	00700c93          	li	s9,7
    80004dcc:	bfdff06f          	j	800049c8 <__printf+0x260>
    80004dd0:	00100793          	li	a5,1
    80004dd4:	d91ff06f          	j	80004b64 <__printf+0x3fc>
    80004dd8:	00100793          	li	a5,1
    80004ddc:	bf1ff06f          	j	800049cc <__printf+0x264>
    80004de0:	00900793          	li	a5,9
    80004de4:	00800c93          	li	s9,8
    80004de8:	be1ff06f          	j	800049c8 <__printf+0x260>
    80004dec:	00001517          	auipc	a0,0x1
    80004df0:	50c50513          	addi	a0,a0,1292 # 800062f8 <_ZZ12printIntegermE6digits+0x250>
    80004df4:	00000097          	auipc	ra,0x0
    80004df8:	918080e7          	jalr	-1768(ra) # 8000470c <panic>

0000000080004dfc <printfinit>:
    80004dfc:	fe010113          	addi	sp,sp,-32
    80004e00:	00813823          	sd	s0,16(sp)
    80004e04:	00913423          	sd	s1,8(sp)
    80004e08:	00113c23          	sd	ra,24(sp)
    80004e0c:	02010413          	addi	s0,sp,32
    80004e10:	00004497          	auipc	s1,0x4
    80004e14:	a3048493          	addi	s1,s1,-1488 # 80008840 <pr>
    80004e18:	00048513          	mv	a0,s1
    80004e1c:	00001597          	auipc	a1,0x1
    80004e20:	4ec58593          	addi	a1,a1,1260 # 80006308 <_ZZ12printIntegermE6digits+0x260>
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	5f4080e7          	jalr	1524(ra) # 80005418 <initlock>
    80004e2c:	01813083          	ld	ra,24(sp)
    80004e30:	01013403          	ld	s0,16(sp)
    80004e34:	0004ac23          	sw	zero,24(s1)
    80004e38:	00813483          	ld	s1,8(sp)
    80004e3c:	02010113          	addi	sp,sp,32
    80004e40:	00008067          	ret

0000000080004e44 <uartinit>:
    80004e44:	ff010113          	addi	sp,sp,-16
    80004e48:	00813423          	sd	s0,8(sp)
    80004e4c:	01010413          	addi	s0,sp,16
    80004e50:	100007b7          	lui	a5,0x10000
    80004e54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004e58:	f8000713          	li	a4,-128
    80004e5c:	00e781a3          	sb	a4,3(a5)
    80004e60:	00300713          	li	a4,3
    80004e64:	00e78023          	sb	a4,0(a5)
    80004e68:	000780a3          	sb	zero,1(a5)
    80004e6c:	00e781a3          	sb	a4,3(a5)
    80004e70:	00700693          	li	a3,7
    80004e74:	00d78123          	sb	a3,2(a5)
    80004e78:	00e780a3          	sb	a4,1(a5)
    80004e7c:	00813403          	ld	s0,8(sp)
    80004e80:	01010113          	addi	sp,sp,16
    80004e84:	00008067          	ret

0000000080004e88 <uartputc>:
    80004e88:	00002797          	auipc	a5,0x2
    80004e8c:	7307a783          	lw	a5,1840(a5) # 800075b8 <panicked>
    80004e90:	00078463          	beqz	a5,80004e98 <uartputc+0x10>
    80004e94:	0000006f          	j	80004e94 <uartputc+0xc>
    80004e98:	fd010113          	addi	sp,sp,-48
    80004e9c:	02813023          	sd	s0,32(sp)
    80004ea0:	00913c23          	sd	s1,24(sp)
    80004ea4:	01213823          	sd	s2,16(sp)
    80004ea8:	01313423          	sd	s3,8(sp)
    80004eac:	02113423          	sd	ra,40(sp)
    80004eb0:	03010413          	addi	s0,sp,48
    80004eb4:	00002917          	auipc	s2,0x2
    80004eb8:	70c90913          	addi	s2,s2,1804 # 800075c0 <uart_tx_r>
    80004ebc:	00093783          	ld	a5,0(s2)
    80004ec0:	00002497          	auipc	s1,0x2
    80004ec4:	70848493          	addi	s1,s1,1800 # 800075c8 <uart_tx_w>
    80004ec8:	0004b703          	ld	a4,0(s1)
    80004ecc:	02078693          	addi	a3,a5,32
    80004ed0:	00050993          	mv	s3,a0
    80004ed4:	02e69c63          	bne	a3,a4,80004f0c <uartputc+0x84>
    80004ed8:	00001097          	auipc	ra,0x1
    80004edc:	834080e7          	jalr	-1996(ra) # 8000570c <push_on>
    80004ee0:	00093783          	ld	a5,0(s2)
    80004ee4:	0004b703          	ld	a4,0(s1)
    80004ee8:	02078793          	addi	a5,a5,32
    80004eec:	00e79463          	bne	a5,a4,80004ef4 <uartputc+0x6c>
    80004ef0:	0000006f          	j	80004ef0 <uartputc+0x68>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	88c080e7          	jalr	-1908(ra) # 80005780 <pop_on>
    80004efc:	00093783          	ld	a5,0(s2)
    80004f00:	0004b703          	ld	a4,0(s1)
    80004f04:	02078693          	addi	a3,a5,32
    80004f08:	fce688e3          	beq	a3,a4,80004ed8 <uartputc+0x50>
    80004f0c:	01f77693          	andi	a3,a4,31
    80004f10:	00004597          	auipc	a1,0x4
    80004f14:	95058593          	addi	a1,a1,-1712 # 80008860 <uart_tx_buf>
    80004f18:	00d586b3          	add	a3,a1,a3
    80004f1c:	00170713          	addi	a4,a4,1
    80004f20:	01368023          	sb	s3,0(a3)
    80004f24:	00e4b023          	sd	a4,0(s1)
    80004f28:	10000637          	lui	a2,0x10000
    80004f2c:	02f71063          	bne	a4,a5,80004f4c <uartputc+0xc4>
    80004f30:	0340006f          	j	80004f64 <uartputc+0xdc>
    80004f34:	00074703          	lbu	a4,0(a4)
    80004f38:	00f93023          	sd	a5,0(s2)
    80004f3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004f40:	00093783          	ld	a5,0(s2)
    80004f44:	0004b703          	ld	a4,0(s1)
    80004f48:	00f70e63          	beq	a4,a5,80004f64 <uartputc+0xdc>
    80004f4c:	00564683          	lbu	a3,5(a2)
    80004f50:	01f7f713          	andi	a4,a5,31
    80004f54:	00e58733          	add	a4,a1,a4
    80004f58:	0206f693          	andi	a3,a3,32
    80004f5c:	00178793          	addi	a5,a5,1
    80004f60:	fc069ae3          	bnez	a3,80004f34 <uartputc+0xac>
    80004f64:	02813083          	ld	ra,40(sp)
    80004f68:	02013403          	ld	s0,32(sp)
    80004f6c:	01813483          	ld	s1,24(sp)
    80004f70:	01013903          	ld	s2,16(sp)
    80004f74:	00813983          	ld	s3,8(sp)
    80004f78:	03010113          	addi	sp,sp,48
    80004f7c:	00008067          	ret

0000000080004f80 <uartputc_sync>:
    80004f80:	ff010113          	addi	sp,sp,-16
    80004f84:	00813423          	sd	s0,8(sp)
    80004f88:	01010413          	addi	s0,sp,16
    80004f8c:	00002717          	auipc	a4,0x2
    80004f90:	62c72703          	lw	a4,1580(a4) # 800075b8 <panicked>
    80004f94:	02071663          	bnez	a4,80004fc0 <uartputc_sync+0x40>
    80004f98:	00050793          	mv	a5,a0
    80004f9c:	100006b7          	lui	a3,0x10000
    80004fa0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004fa4:	02077713          	andi	a4,a4,32
    80004fa8:	fe070ce3          	beqz	a4,80004fa0 <uartputc_sync+0x20>
    80004fac:	0ff7f793          	andi	a5,a5,255
    80004fb0:	00f68023          	sb	a5,0(a3)
    80004fb4:	00813403          	ld	s0,8(sp)
    80004fb8:	01010113          	addi	sp,sp,16
    80004fbc:	00008067          	ret
    80004fc0:	0000006f          	j	80004fc0 <uartputc_sync+0x40>

0000000080004fc4 <uartstart>:
    80004fc4:	ff010113          	addi	sp,sp,-16
    80004fc8:	00813423          	sd	s0,8(sp)
    80004fcc:	01010413          	addi	s0,sp,16
    80004fd0:	00002617          	auipc	a2,0x2
    80004fd4:	5f060613          	addi	a2,a2,1520 # 800075c0 <uart_tx_r>
    80004fd8:	00002517          	auipc	a0,0x2
    80004fdc:	5f050513          	addi	a0,a0,1520 # 800075c8 <uart_tx_w>
    80004fe0:	00063783          	ld	a5,0(a2)
    80004fe4:	00053703          	ld	a4,0(a0)
    80004fe8:	04f70263          	beq	a4,a5,8000502c <uartstart+0x68>
    80004fec:	100005b7          	lui	a1,0x10000
    80004ff0:	00004817          	auipc	a6,0x4
    80004ff4:	87080813          	addi	a6,a6,-1936 # 80008860 <uart_tx_buf>
    80004ff8:	01c0006f          	j	80005014 <uartstart+0x50>
    80004ffc:	0006c703          	lbu	a4,0(a3)
    80005000:	00f63023          	sd	a5,0(a2)
    80005004:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005008:	00063783          	ld	a5,0(a2)
    8000500c:	00053703          	ld	a4,0(a0)
    80005010:	00f70e63          	beq	a4,a5,8000502c <uartstart+0x68>
    80005014:	01f7f713          	andi	a4,a5,31
    80005018:	00e806b3          	add	a3,a6,a4
    8000501c:	0055c703          	lbu	a4,5(a1)
    80005020:	00178793          	addi	a5,a5,1
    80005024:	02077713          	andi	a4,a4,32
    80005028:	fc071ae3          	bnez	a4,80004ffc <uartstart+0x38>
    8000502c:	00813403          	ld	s0,8(sp)
    80005030:	01010113          	addi	sp,sp,16
    80005034:	00008067          	ret

0000000080005038 <uartgetc>:
    80005038:	ff010113          	addi	sp,sp,-16
    8000503c:	00813423          	sd	s0,8(sp)
    80005040:	01010413          	addi	s0,sp,16
    80005044:	10000737          	lui	a4,0x10000
    80005048:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000504c:	0017f793          	andi	a5,a5,1
    80005050:	00078c63          	beqz	a5,80005068 <uartgetc+0x30>
    80005054:	00074503          	lbu	a0,0(a4)
    80005058:	0ff57513          	andi	a0,a0,255
    8000505c:	00813403          	ld	s0,8(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret
    80005068:	fff00513          	li	a0,-1
    8000506c:	ff1ff06f          	j	8000505c <uartgetc+0x24>

0000000080005070 <uartintr>:
    80005070:	100007b7          	lui	a5,0x10000
    80005074:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005078:	0017f793          	andi	a5,a5,1
    8000507c:	0a078463          	beqz	a5,80005124 <uartintr+0xb4>
    80005080:	fe010113          	addi	sp,sp,-32
    80005084:	00813823          	sd	s0,16(sp)
    80005088:	00913423          	sd	s1,8(sp)
    8000508c:	00113c23          	sd	ra,24(sp)
    80005090:	02010413          	addi	s0,sp,32
    80005094:	100004b7          	lui	s1,0x10000
    80005098:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000509c:	0ff57513          	andi	a0,a0,255
    800050a0:	fffff097          	auipc	ra,0xfffff
    800050a4:	534080e7          	jalr	1332(ra) # 800045d4 <consoleintr>
    800050a8:	0054c783          	lbu	a5,5(s1)
    800050ac:	0017f793          	andi	a5,a5,1
    800050b0:	fe0794e3          	bnez	a5,80005098 <uartintr+0x28>
    800050b4:	00002617          	auipc	a2,0x2
    800050b8:	50c60613          	addi	a2,a2,1292 # 800075c0 <uart_tx_r>
    800050bc:	00002517          	auipc	a0,0x2
    800050c0:	50c50513          	addi	a0,a0,1292 # 800075c8 <uart_tx_w>
    800050c4:	00063783          	ld	a5,0(a2)
    800050c8:	00053703          	ld	a4,0(a0)
    800050cc:	04f70263          	beq	a4,a5,80005110 <uartintr+0xa0>
    800050d0:	100005b7          	lui	a1,0x10000
    800050d4:	00003817          	auipc	a6,0x3
    800050d8:	78c80813          	addi	a6,a6,1932 # 80008860 <uart_tx_buf>
    800050dc:	01c0006f          	j	800050f8 <uartintr+0x88>
    800050e0:	0006c703          	lbu	a4,0(a3)
    800050e4:	00f63023          	sd	a5,0(a2)
    800050e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800050ec:	00063783          	ld	a5,0(a2)
    800050f0:	00053703          	ld	a4,0(a0)
    800050f4:	00f70e63          	beq	a4,a5,80005110 <uartintr+0xa0>
    800050f8:	01f7f713          	andi	a4,a5,31
    800050fc:	00e806b3          	add	a3,a6,a4
    80005100:	0055c703          	lbu	a4,5(a1)
    80005104:	00178793          	addi	a5,a5,1
    80005108:	02077713          	andi	a4,a4,32
    8000510c:	fc071ae3          	bnez	a4,800050e0 <uartintr+0x70>
    80005110:	01813083          	ld	ra,24(sp)
    80005114:	01013403          	ld	s0,16(sp)
    80005118:	00813483          	ld	s1,8(sp)
    8000511c:	02010113          	addi	sp,sp,32
    80005120:	00008067          	ret
    80005124:	00002617          	auipc	a2,0x2
    80005128:	49c60613          	addi	a2,a2,1180 # 800075c0 <uart_tx_r>
    8000512c:	00002517          	auipc	a0,0x2
    80005130:	49c50513          	addi	a0,a0,1180 # 800075c8 <uart_tx_w>
    80005134:	00063783          	ld	a5,0(a2)
    80005138:	00053703          	ld	a4,0(a0)
    8000513c:	04f70263          	beq	a4,a5,80005180 <uartintr+0x110>
    80005140:	100005b7          	lui	a1,0x10000
    80005144:	00003817          	auipc	a6,0x3
    80005148:	71c80813          	addi	a6,a6,1820 # 80008860 <uart_tx_buf>
    8000514c:	01c0006f          	j	80005168 <uartintr+0xf8>
    80005150:	0006c703          	lbu	a4,0(a3)
    80005154:	00f63023          	sd	a5,0(a2)
    80005158:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000515c:	00063783          	ld	a5,0(a2)
    80005160:	00053703          	ld	a4,0(a0)
    80005164:	02f70063          	beq	a4,a5,80005184 <uartintr+0x114>
    80005168:	01f7f713          	andi	a4,a5,31
    8000516c:	00e806b3          	add	a3,a6,a4
    80005170:	0055c703          	lbu	a4,5(a1)
    80005174:	00178793          	addi	a5,a5,1
    80005178:	02077713          	andi	a4,a4,32
    8000517c:	fc071ae3          	bnez	a4,80005150 <uartintr+0xe0>
    80005180:	00008067          	ret
    80005184:	00008067          	ret

0000000080005188 <kinit>:
    80005188:	fc010113          	addi	sp,sp,-64
    8000518c:	02913423          	sd	s1,40(sp)
    80005190:	fffff7b7          	lui	a5,0xfffff
    80005194:	00004497          	auipc	s1,0x4
    80005198:	6fb48493          	addi	s1,s1,1787 # 8000988f <end+0xfff>
    8000519c:	02813823          	sd	s0,48(sp)
    800051a0:	01313c23          	sd	s3,24(sp)
    800051a4:	00f4f4b3          	and	s1,s1,a5
    800051a8:	02113c23          	sd	ra,56(sp)
    800051ac:	03213023          	sd	s2,32(sp)
    800051b0:	01413823          	sd	s4,16(sp)
    800051b4:	01513423          	sd	s5,8(sp)
    800051b8:	04010413          	addi	s0,sp,64
    800051bc:	000017b7          	lui	a5,0x1
    800051c0:	01100993          	li	s3,17
    800051c4:	00f487b3          	add	a5,s1,a5
    800051c8:	01b99993          	slli	s3,s3,0x1b
    800051cc:	06f9e063          	bltu	s3,a5,8000522c <kinit+0xa4>
    800051d0:	00003a97          	auipc	s5,0x3
    800051d4:	6c0a8a93          	addi	s5,s5,1728 # 80008890 <end>
    800051d8:	0754ec63          	bltu	s1,s5,80005250 <kinit+0xc8>
    800051dc:	0734fa63          	bgeu	s1,s3,80005250 <kinit+0xc8>
    800051e0:	00088a37          	lui	s4,0x88
    800051e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800051e8:	00002917          	auipc	s2,0x2
    800051ec:	3e890913          	addi	s2,s2,1000 # 800075d0 <kmem>
    800051f0:	00ca1a13          	slli	s4,s4,0xc
    800051f4:	0140006f          	j	80005208 <kinit+0x80>
    800051f8:	000017b7          	lui	a5,0x1
    800051fc:	00f484b3          	add	s1,s1,a5
    80005200:	0554e863          	bltu	s1,s5,80005250 <kinit+0xc8>
    80005204:	0534f663          	bgeu	s1,s3,80005250 <kinit+0xc8>
    80005208:	00001637          	lui	a2,0x1
    8000520c:	00100593          	li	a1,1
    80005210:	00048513          	mv	a0,s1
    80005214:	00000097          	auipc	ra,0x0
    80005218:	5e4080e7          	jalr	1508(ra) # 800057f8 <__memset>
    8000521c:	00093783          	ld	a5,0(s2)
    80005220:	00f4b023          	sd	a5,0(s1)
    80005224:	00993023          	sd	s1,0(s2)
    80005228:	fd4498e3          	bne	s1,s4,800051f8 <kinit+0x70>
    8000522c:	03813083          	ld	ra,56(sp)
    80005230:	03013403          	ld	s0,48(sp)
    80005234:	02813483          	ld	s1,40(sp)
    80005238:	02013903          	ld	s2,32(sp)
    8000523c:	01813983          	ld	s3,24(sp)
    80005240:	01013a03          	ld	s4,16(sp)
    80005244:	00813a83          	ld	s5,8(sp)
    80005248:	04010113          	addi	sp,sp,64
    8000524c:	00008067          	ret
    80005250:	00001517          	auipc	a0,0x1
    80005254:	0d850513          	addi	a0,a0,216 # 80006328 <digits+0x18>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	4b4080e7          	jalr	1204(ra) # 8000470c <panic>

0000000080005260 <freerange>:
    80005260:	fc010113          	addi	sp,sp,-64
    80005264:	000017b7          	lui	a5,0x1
    80005268:	02913423          	sd	s1,40(sp)
    8000526c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005270:	009504b3          	add	s1,a0,s1
    80005274:	fffff537          	lui	a0,0xfffff
    80005278:	02813823          	sd	s0,48(sp)
    8000527c:	02113c23          	sd	ra,56(sp)
    80005280:	03213023          	sd	s2,32(sp)
    80005284:	01313c23          	sd	s3,24(sp)
    80005288:	01413823          	sd	s4,16(sp)
    8000528c:	01513423          	sd	s5,8(sp)
    80005290:	01613023          	sd	s6,0(sp)
    80005294:	04010413          	addi	s0,sp,64
    80005298:	00a4f4b3          	and	s1,s1,a0
    8000529c:	00f487b3          	add	a5,s1,a5
    800052a0:	06f5e463          	bltu	a1,a5,80005308 <freerange+0xa8>
    800052a4:	00003a97          	auipc	s5,0x3
    800052a8:	5eca8a93          	addi	s5,s5,1516 # 80008890 <end>
    800052ac:	0954e263          	bltu	s1,s5,80005330 <freerange+0xd0>
    800052b0:	01100993          	li	s3,17
    800052b4:	01b99993          	slli	s3,s3,0x1b
    800052b8:	0734fc63          	bgeu	s1,s3,80005330 <freerange+0xd0>
    800052bc:	00058a13          	mv	s4,a1
    800052c0:	00002917          	auipc	s2,0x2
    800052c4:	31090913          	addi	s2,s2,784 # 800075d0 <kmem>
    800052c8:	00002b37          	lui	s6,0x2
    800052cc:	0140006f          	j	800052e0 <freerange+0x80>
    800052d0:	000017b7          	lui	a5,0x1
    800052d4:	00f484b3          	add	s1,s1,a5
    800052d8:	0554ec63          	bltu	s1,s5,80005330 <freerange+0xd0>
    800052dc:	0534fa63          	bgeu	s1,s3,80005330 <freerange+0xd0>
    800052e0:	00001637          	lui	a2,0x1
    800052e4:	00100593          	li	a1,1
    800052e8:	00048513          	mv	a0,s1
    800052ec:	00000097          	auipc	ra,0x0
    800052f0:	50c080e7          	jalr	1292(ra) # 800057f8 <__memset>
    800052f4:	00093703          	ld	a4,0(s2)
    800052f8:	016487b3          	add	a5,s1,s6
    800052fc:	00e4b023          	sd	a4,0(s1)
    80005300:	00993023          	sd	s1,0(s2)
    80005304:	fcfa76e3          	bgeu	s4,a5,800052d0 <freerange+0x70>
    80005308:	03813083          	ld	ra,56(sp)
    8000530c:	03013403          	ld	s0,48(sp)
    80005310:	02813483          	ld	s1,40(sp)
    80005314:	02013903          	ld	s2,32(sp)
    80005318:	01813983          	ld	s3,24(sp)
    8000531c:	01013a03          	ld	s4,16(sp)
    80005320:	00813a83          	ld	s5,8(sp)
    80005324:	00013b03          	ld	s6,0(sp)
    80005328:	04010113          	addi	sp,sp,64
    8000532c:	00008067          	ret
    80005330:	00001517          	auipc	a0,0x1
    80005334:	ff850513          	addi	a0,a0,-8 # 80006328 <digits+0x18>
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	3d4080e7          	jalr	980(ra) # 8000470c <panic>

0000000080005340 <kfree>:
    80005340:	fe010113          	addi	sp,sp,-32
    80005344:	00813823          	sd	s0,16(sp)
    80005348:	00113c23          	sd	ra,24(sp)
    8000534c:	00913423          	sd	s1,8(sp)
    80005350:	02010413          	addi	s0,sp,32
    80005354:	03451793          	slli	a5,a0,0x34
    80005358:	04079c63          	bnez	a5,800053b0 <kfree+0x70>
    8000535c:	00003797          	auipc	a5,0x3
    80005360:	53478793          	addi	a5,a5,1332 # 80008890 <end>
    80005364:	00050493          	mv	s1,a0
    80005368:	04f56463          	bltu	a0,a5,800053b0 <kfree+0x70>
    8000536c:	01100793          	li	a5,17
    80005370:	01b79793          	slli	a5,a5,0x1b
    80005374:	02f57e63          	bgeu	a0,a5,800053b0 <kfree+0x70>
    80005378:	00001637          	lui	a2,0x1
    8000537c:	00100593          	li	a1,1
    80005380:	00000097          	auipc	ra,0x0
    80005384:	478080e7          	jalr	1144(ra) # 800057f8 <__memset>
    80005388:	00002797          	auipc	a5,0x2
    8000538c:	24878793          	addi	a5,a5,584 # 800075d0 <kmem>
    80005390:	0007b703          	ld	a4,0(a5)
    80005394:	01813083          	ld	ra,24(sp)
    80005398:	01013403          	ld	s0,16(sp)
    8000539c:	00e4b023          	sd	a4,0(s1)
    800053a0:	0097b023          	sd	s1,0(a5)
    800053a4:	00813483          	ld	s1,8(sp)
    800053a8:	02010113          	addi	sp,sp,32
    800053ac:	00008067          	ret
    800053b0:	00001517          	auipc	a0,0x1
    800053b4:	f7850513          	addi	a0,a0,-136 # 80006328 <digits+0x18>
    800053b8:	fffff097          	auipc	ra,0xfffff
    800053bc:	354080e7          	jalr	852(ra) # 8000470c <panic>

00000000800053c0 <kalloc>:
    800053c0:	fe010113          	addi	sp,sp,-32
    800053c4:	00813823          	sd	s0,16(sp)
    800053c8:	00913423          	sd	s1,8(sp)
    800053cc:	00113c23          	sd	ra,24(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	00002797          	auipc	a5,0x2
    800053d8:	1fc78793          	addi	a5,a5,508 # 800075d0 <kmem>
    800053dc:	0007b483          	ld	s1,0(a5)
    800053e0:	02048063          	beqz	s1,80005400 <kalloc+0x40>
    800053e4:	0004b703          	ld	a4,0(s1)
    800053e8:	00001637          	lui	a2,0x1
    800053ec:	00500593          	li	a1,5
    800053f0:	00048513          	mv	a0,s1
    800053f4:	00e7b023          	sd	a4,0(a5)
    800053f8:	00000097          	auipc	ra,0x0
    800053fc:	400080e7          	jalr	1024(ra) # 800057f8 <__memset>
    80005400:	01813083          	ld	ra,24(sp)
    80005404:	01013403          	ld	s0,16(sp)
    80005408:	00048513          	mv	a0,s1
    8000540c:	00813483          	ld	s1,8(sp)
    80005410:	02010113          	addi	sp,sp,32
    80005414:	00008067          	ret

0000000080005418 <initlock>:
    80005418:	ff010113          	addi	sp,sp,-16
    8000541c:	00813423          	sd	s0,8(sp)
    80005420:	01010413          	addi	s0,sp,16
    80005424:	00813403          	ld	s0,8(sp)
    80005428:	00b53423          	sd	a1,8(a0)
    8000542c:	00052023          	sw	zero,0(a0)
    80005430:	00053823          	sd	zero,16(a0)
    80005434:	01010113          	addi	sp,sp,16
    80005438:	00008067          	ret

000000008000543c <acquire>:
    8000543c:	fe010113          	addi	sp,sp,-32
    80005440:	00813823          	sd	s0,16(sp)
    80005444:	00913423          	sd	s1,8(sp)
    80005448:	00113c23          	sd	ra,24(sp)
    8000544c:	01213023          	sd	s2,0(sp)
    80005450:	02010413          	addi	s0,sp,32
    80005454:	00050493          	mv	s1,a0
    80005458:	10002973          	csrr	s2,sstatus
    8000545c:	100027f3          	csrr	a5,sstatus
    80005460:	ffd7f793          	andi	a5,a5,-3
    80005464:	10079073          	csrw	sstatus,a5
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	8e0080e7          	jalr	-1824(ra) # 80003d48 <mycpu>
    80005470:	07852783          	lw	a5,120(a0)
    80005474:	06078e63          	beqz	a5,800054f0 <acquire+0xb4>
    80005478:	fffff097          	auipc	ra,0xfffff
    8000547c:	8d0080e7          	jalr	-1840(ra) # 80003d48 <mycpu>
    80005480:	07852783          	lw	a5,120(a0)
    80005484:	0004a703          	lw	a4,0(s1)
    80005488:	0017879b          	addiw	a5,a5,1
    8000548c:	06f52c23          	sw	a5,120(a0)
    80005490:	04071063          	bnez	a4,800054d0 <acquire+0x94>
    80005494:	00100713          	li	a4,1
    80005498:	00070793          	mv	a5,a4
    8000549c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800054a0:	0007879b          	sext.w	a5,a5
    800054a4:	fe079ae3          	bnez	a5,80005498 <acquire+0x5c>
    800054a8:	0ff0000f          	fence
    800054ac:	fffff097          	auipc	ra,0xfffff
    800054b0:	89c080e7          	jalr	-1892(ra) # 80003d48 <mycpu>
    800054b4:	01813083          	ld	ra,24(sp)
    800054b8:	01013403          	ld	s0,16(sp)
    800054bc:	00a4b823          	sd	a0,16(s1)
    800054c0:	00013903          	ld	s2,0(sp)
    800054c4:	00813483          	ld	s1,8(sp)
    800054c8:	02010113          	addi	sp,sp,32
    800054cc:	00008067          	ret
    800054d0:	0104b903          	ld	s2,16(s1)
    800054d4:	fffff097          	auipc	ra,0xfffff
    800054d8:	874080e7          	jalr	-1932(ra) # 80003d48 <mycpu>
    800054dc:	faa91ce3          	bne	s2,a0,80005494 <acquire+0x58>
    800054e0:	00001517          	auipc	a0,0x1
    800054e4:	e5050513          	addi	a0,a0,-432 # 80006330 <digits+0x20>
    800054e8:	fffff097          	auipc	ra,0xfffff
    800054ec:	224080e7          	jalr	548(ra) # 8000470c <panic>
    800054f0:	00195913          	srli	s2,s2,0x1
    800054f4:	fffff097          	auipc	ra,0xfffff
    800054f8:	854080e7          	jalr	-1964(ra) # 80003d48 <mycpu>
    800054fc:	00197913          	andi	s2,s2,1
    80005500:	07252e23          	sw	s2,124(a0)
    80005504:	f75ff06f          	j	80005478 <acquire+0x3c>

0000000080005508 <release>:
    80005508:	fe010113          	addi	sp,sp,-32
    8000550c:	00813823          	sd	s0,16(sp)
    80005510:	00113c23          	sd	ra,24(sp)
    80005514:	00913423          	sd	s1,8(sp)
    80005518:	01213023          	sd	s2,0(sp)
    8000551c:	02010413          	addi	s0,sp,32
    80005520:	00052783          	lw	a5,0(a0)
    80005524:	00079a63          	bnez	a5,80005538 <release+0x30>
    80005528:	00001517          	auipc	a0,0x1
    8000552c:	e1050513          	addi	a0,a0,-496 # 80006338 <digits+0x28>
    80005530:	fffff097          	auipc	ra,0xfffff
    80005534:	1dc080e7          	jalr	476(ra) # 8000470c <panic>
    80005538:	01053903          	ld	s2,16(a0)
    8000553c:	00050493          	mv	s1,a0
    80005540:	fffff097          	auipc	ra,0xfffff
    80005544:	808080e7          	jalr	-2040(ra) # 80003d48 <mycpu>
    80005548:	fea910e3          	bne	s2,a0,80005528 <release+0x20>
    8000554c:	0004b823          	sd	zero,16(s1)
    80005550:	0ff0000f          	fence
    80005554:	0f50000f          	fence	iorw,ow
    80005558:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000555c:	ffffe097          	auipc	ra,0xffffe
    80005560:	7ec080e7          	jalr	2028(ra) # 80003d48 <mycpu>
    80005564:	100027f3          	csrr	a5,sstatus
    80005568:	0027f793          	andi	a5,a5,2
    8000556c:	04079a63          	bnez	a5,800055c0 <release+0xb8>
    80005570:	07852783          	lw	a5,120(a0)
    80005574:	02f05e63          	blez	a5,800055b0 <release+0xa8>
    80005578:	fff7871b          	addiw	a4,a5,-1
    8000557c:	06e52c23          	sw	a4,120(a0)
    80005580:	00071c63          	bnez	a4,80005598 <release+0x90>
    80005584:	07c52783          	lw	a5,124(a0)
    80005588:	00078863          	beqz	a5,80005598 <release+0x90>
    8000558c:	100027f3          	csrr	a5,sstatus
    80005590:	0027e793          	ori	a5,a5,2
    80005594:	10079073          	csrw	sstatus,a5
    80005598:	01813083          	ld	ra,24(sp)
    8000559c:	01013403          	ld	s0,16(sp)
    800055a0:	00813483          	ld	s1,8(sp)
    800055a4:	00013903          	ld	s2,0(sp)
    800055a8:	02010113          	addi	sp,sp,32
    800055ac:	00008067          	ret
    800055b0:	00001517          	auipc	a0,0x1
    800055b4:	da850513          	addi	a0,a0,-600 # 80006358 <digits+0x48>
    800055b8:	fffff097          	auipc	ra,0xfffff
    800055bc:	154080e7          	jalr	340(ra) # 8000470c <panic>
    800055c0:	00001517          	auipc	a0,0x1
    800055c4:	d8050513          	addi	a0,a0,-640 # 80006340 <digits+0x30>
    800055c8:	fffff097          	auipc	ra,0xfffff
    800055cc:	144080e7          	jalr	324(ra) # 8000470c <panic>

00000000800055d0 <holding>:
    800055d0:	00052783          	lw	a5,0(a0)
    800055d4:	00079663          	bnez	a5,800055e0 <holding+0x10>
    800055d8:	00000513          	li	a0,0
    800055dc:	00008067          	ret
    800055e0:	fe010113          	addi	sp,sp,-32
    800055e4:	00813823          	sd	s0,16(sp)
    800055e8:	00913423          	sd	s1,8(sp)
    800055ec:	00113c23          	sd	ra,24(sp)
    800055f0:	02010413          	addi	s0,sp,32
    800055f4:	01053483          	ld	s1,16(a0)
    800055f8:	ffffe097          	auipc	ra,0xffffe
    800055fc:	750080e7          	jalr	1872(ra) # 80003d48 <mycpu>
    80005600:	01813083          	ld	ra,24(sp)
    80005604:	01013403          	ld	s0,16(sp)
    80005608:	40a48533          	sub	a0,s1,a0
    8000560c:	00153513          	seqz	a0,a0
    80005610:	00813483          	ld	s1,8(sp)
    80005614:	02010113          	addi	sp,sp,32
    80005618:	00008067          	ret

000000008000561c <push_off>:
    8000561c:	fe010113          	addi	sp,sp,-32
    80005620:	00813823          	sd	s0,16(sp)
    80005624:	00113c23          	sd	ra,24(sp)
    80005628:	00913423          	sd	s1,8(sp)
    8000562c:	02010413          	addi	s0,sp,32
    80005630:	100024f3          	csrr	s1,sstatus
    80005634:	100027f3          	csrr	a5,sstatus
    80005638:	ffd7f793          	andi	a5,a5,-3
    8000563c:	10079073          	csrw	sstatus,a5
    80005640:	ffffe097          	auipc	ra,0xffffe
    80005644:	708080e7          	jalr	1800(ra) # 80003d48 <mycpu>
    80005648:	07852783          	lw	a5,120(a0)
    8000564c:	02078663          	beqz	a5,80005678 <push_off+0x5c>
    80005650:	ffffe097          	auipc	ra,0xffffe
    80005654:	6f8080e7          	jalr	1784(ra) # 80003d48 <mycpu>
    80005658:	07852783          	lw	a5,120(a0)
    8000565c:	01813083          	ld	ra,24(sp)
    80005660:	01013403          	ld	s0,16(sp)
    80005664:	0017879b          	addiw	a5,a5,1
    80005668:	06f52c23          	sw	a5,120(a0)
    8000566c:	00813483          	ld	s1,8(sp)
    80005670:	02010113          	addi	sp,sp,32
    80005674:	00008067          	ret
    80005678:	0014d493          	srli	s1,s1,0x1
    8000567c:	ffffe097          	auipc	ra,0xffffe
    80005680:	6cc080e7          	jalr	1740(ra) # 80003d48 <mycpu>
    80005684:	0014f493          	andi	s1,s1,1
    80005688:	06952e23          	sw	s1,124(a0)
    8000568c:	fc5ff06f          	j	80005650 <push_off+0x34>

0000000080005690 <pop_off>:
    80005690:	ff010113          	addi	sp,sp,-16
    80005694:	00813023          	sd	s0,0(sp)
    80005698:	00113423          	sd	ra,8(sp)
    8000569c:	01010413          	addi	s0,sp,16
    800056a0:	ffffe097          	auipc	ra,0xffffe
    800056a4:	6a8080e7          	jalr	1704(ra) # 80003d48 <mycpu>
    800056a8:	100027f3          	csrr	a5,sstatus
    800056ac:	0027f793          	andi	a5,a5,2
    800056b0:	04079663          	bnez	a5,800056fc <pop_off+0x6c>
    800056b4:	07852783          	lw	a5,120(a0)
    800056b8:	02f05a63          	blez	a5,800056ec <pop_off+0x5c>
    800056bc:	fff7871b          	addiw	a4,a5,-1
    800056c0:	06e52c23          	sw	a4,120(a0)
    800056c4:	00071c63          	bnez	a4,800056dc <pop_off+0x4c>
    800056c8:	07c52783          	lw	a5,124(a0)
    800056cc:	00078863          	beqz	a5,800056dc <pop_off+0x4c>
    800056d0:	100027f3          	csrr	a5,sstatus
    800056d4:	0027e793          	ori	a5,a5,2
    800056d8:	10079073          	csrw	sstatus,a5
    800056dc:	00813083          	ld	ra,8(sp)
    800056e0:	00013403          	ld	s0,0(sp)
    800056e4:	01010113          	addi	sp,sp,16
    800056e8:	00008067          	ret
    800056ec:	00001517          	auipc	a0,0x1
    800056f0:	c6c50513          	addi	a0,a0,-916 # 80006358 <digits+0x48>
    800056f4:	fffff097          	auipc	ra,0xfffff
    800056f8:	018080e7          	jalr	24(ra) # 8000470c <panic>
    800056fc:	00001517          	auipc	a0,0x1
    80005700:	c4450513          	addi	a0,a0,-956 # 80006340 <digits+0x30>
    80005704:	fffff097          	auipc	ra,0xfffff
    80005708:	008080e7          	jalr	8(ra) # 8000470c <panic>

000000008000570c <push_on>:
    8000570c:	fe010113          	addi	sp,sp,-32
    80005710:	00813823          	sd	s0,16(sp)
    80005714:	00113c23          	sd	ra,24(sp)
    80005718:	00913423          	sd	s1,8(sp)
    8000571c:	02010413          	addi	s0,sp,32
    80005720:	100024f3          	csrr	s1,sstatus
    80005724:	100027f3          	csrr	a5,sstatus
    80005728:	0027e793          	ori	a5,a5,2
    8000572c:	10079073          	csrw	sstatus,a5
    80005730:	ffffe097          	auipc	ra,0xffffe
    80005734:	618080e7          	jalr	1560(ra) # 80003d48 <mycpu>
    80005738:	07852783          	lw	a5,120(a0)
    8000573c:	02078663          	beqz	a5,80005768 <push_on+0x5c>
    80005740:	ffffe097          	auipc	ra,0xffffe
    80005744:	608080e7          	jalr	1544(ra) # 80003d48 <mycpu>
    80005748:	07852783          	lw	a5,120(a0)
    8000574c:	01813083          	ld	ra,24(sp)
    80005750:	01013403          	ld	s0,16(sp)
    80005754:	0017879b          	addiw	a5,a5,1
    80005758:	06f52c23          	sw	a5,120(a0)
    8000575c:	00813483          	ld	s1,8(sp)
    80005760:	02010113          	addi	sp,sp,32
    80005764:	00008067          	ret
    80005768:	0014d493          	srli	s1,s1,0x1
    8000576c:	ffffe097          	auipc	ra,0xffffe
    80005770:	5dc080e7          	jalr	1500(ra) # 80003d48 <mycpu>
    80005774:	0014f493          	andi	s1,s1,1
    80005778:	06952e23          	sw	s1,124(a0)
    8000577c:	fc5ff06f          	j	80005740 <push_on+0x34>

0000000080005780 <pop_on>:
    80005780:	ff010113          	addi	sp,sp,-16
    80005784:	00813023          	sd	s0,0(sp)
    80005788:	00113423          	sd	ra,8(sp)
    8000578c:	01010413          	addi	s0,sp,16
    80005790:	ffffe097          	auipc	ra,0xffffe
    80005794:	5b8080e7          	jalr	1464(ra) # 80003d48 <mycpu>
    80005798:	100027f3          	csrr	a5,sstatus
    8000579c:	0027f793          	andi	a5,a5,2
    800057a0:	04078463          	beqz	a5,800057e8 <pop_on+0x68>
    800057a4:	07852783          	lw	a5,120(a0)
    800057a8:	02f05863          	blez	a5,800057d8 <pop_on+0x58>
    800057ac:	fff7879b          	addiw	a5,a5,-1
    800057b0:	06f52c23          	sw	a5,120(a0)
    800057b4:	07853783          	ld	a5,120(a0)
    800057b8:	00079863          	bnez	a5,800057c8 <pop_on+0x48>
    800057bc:	100027f3          	csrr	a5,sstatus
    800057c0:	ffd7f793          	andi	a5,a5,-3
    800057c4:	10079073          	csrw	sstatus,a5
    800057c8:	00813083          	ld	ra,8(sp)
    800057cc:	00013403          	ld	s0,0(sp)
    800057d0:	01010113          	addi	sp,sp,16
    800057d4:	00008067          	ret
    800057d8:	00001517          	auipc	a0,0x1
    800057dc:	ba850513          	addi	a0,a0,-1112 # 80006380 <digits+0x70>
    800057e0:	fffff097          	auipc	ra,0xfffff
    800057e4:	f2c080e7          	jalr	-212(ra) # 8000470c <panic>
    800057e8:	00001517          	auipc	a0,0x1
    800057ec:	b7850513          	addi	a0,a0,-1160 # 80006360 <digits+0x50>
    800057f0:	fffff097          	auipc	ra,0xfffff
    800057f4:	f1c080e7          	jalr	-228(ra) # 8000470c <panic>

00000000800057f8 <__memset>:
    800057f8:	ff010113          	addi	sp,sp,-16
    800057fc:	00813423          	sd	s0,8(sp)
    80005800:	01010413          	addi	s0,sp,16
    80005804:	1a060e63          	beqz	a2,800059c0 <__memset+0x1c8>
    80005808:	40a007b3          	neg	a5,a0
    8000580c:	0077f793          	andi	a5,a5,7
    80005810:	00778693          	addi	a3,a5,7
    80005814:	00b00813          	li	a6,11
    80005818:	0ff5f593          	andi	a1,a1,255
    8000581c:	fff6071b          	addiw	a4,a2,-1
    80005820:	1b06e663          	bltu	a3,a6,800059cc <__memset+0x1d4>
    80005824:	1cd76463          	bltu	a4,a3,800059ec <__memset+0x1f4>
    80005828:	1a078e63          	beqz	a5,800059e4 <__memset+0x1ec>
    8000582c:	00b50023          	sb	a1,0(a0)
    80005830:	00100713          	li	a4,1
    80005834:	1ae78463          	beq	a5,a4,800059dc <__memset+0x1e4>
    80005838:	00b500a3          	sb	a1,1(a0)
    8000583c:	00200713          	li	a4,2
    80005840:	1ae78a63          	beq	a5,a4,800059f4 <__memset+0x1fc>
    80005844:	00b50123          	sb	a1,2(a0)
    80005848:	00300713          	li	a4,3
    8000584c:	18e78463          	beq	a5,a4,800059d4 <__memset+0x1dc>
    80005850:	00b501a3          	sb	a1,3(a0)
    80005854:	00400713          	li	a4,4
    80005858:	1ae78263          	beq	a5,a4,800059fc <__memset+0x204>
    8000585c:	00b50223          	sb	a1,4(a0)
    80005860:	00500713          	li	a4,5
    80005864:	1ae78063          	beq	a5,a4,80005a04 <__memset+0x20c>
    80005868:	00b502a3          	sb	a1,5(a0)
    8000586c:	00700713          	li	a4,7
    80005870:	18e79e63          	bne	a5,a4,80005a0c <__memset+0x214>
    80005874:	00b50323          	sb	a1,6(a0)
    80005878:	00700e93          	li	t4,7
    8000587c:	00859713          	slli	a4,a1,0x8
    80005880:	00e5e733          	or	a4,a1,a4
    80005884:	01059e13          	slli	t3,a1,0x10
    80005888:	01c76e33          	or	t3,a4,t3
    8000588c:	01859313          	slli	t1,a1,0x18
    80005890:	006e6333          	or	t1,t3,t1
    80005894:	02059893          	slli	a7,a1,0x20
    80005898:	40f60e3b          	subw	t3,a2,a5
    8000589c:	011368b3          	or	a7,t1,a7
    800058a0:	02859813          	slli	a6,a1,0x28
    800058a4:	0108e833          	or	a6,a7,a6
    800058a8:	03059693          	slli	a3,a1,0x30
    800058ac:	003e589b          	srliw	a7,t3,0x3
    800058b0:	00d866b3          	or	a3,a6,a3
    800058b4:	03859713          	slli	a4,a1,0x38
    800058b8:	00389813          	slli	a6,a7,0x3
    800058bc:	00f507b3          	add	a5,a0,a5
    800058c0:	00e6e733          	or	a4,a3,a4
    800058c4:	000e089b          	sext.w	a7,t3
    800058c8:	00f806b3          	add	a3,a6,a5
    800058cc:	00e7b023          	sd	a4,0(a5)
    800058d0:	00878793          	addi	a5,a5,8
    800058d4:	fed79ce3          	bne	a5,a3,800058cc <__memset+0xd4>
    800058d8:	ff8e7793          	andi	a5,t3,-8
    800058dc:	0007871b          	sext.w	a4,a5
    800058e0:	01d787bb          	addw	a5,a5,t4
    800058e4:	0ce88e63          	beq	a7,a4,800059c0 <__memset+0x1c8>
    800058e8:	00f50733          	add	a4,a0,a5
    800058ec:	00b70023          	sb	a1,0(a4)
    800058f0:	0017871b          	addiw	a4,a5,1
    800058f4:	0cc77663          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00b70023          	sb	a1,0(a4)
    80005900:	0027871b          	addiw	a4,a5,2
    80005904:	0ac77e63          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005908:	00e50733          	add	a4,a0,a4
    8000590c:	00b70023          	sb	a1,0(a4)
    80005910:	0037871b          	addiw	a4,a5,3
    80005914:	0ac77663          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005918:	00e50733          	add	a4,a0,a4
    8000591c:	00b70023          	sb	a1,0(a4)
    80005920:	0047871b          	addiw	a4,a5,4
    80005924:	08c77e63          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005928:	00e50733          	add	a4,a0,a4
    8000592c:	00b70023          	sb	a1,0(a4)
    80005930:	0057871b          	addiw	a4,a5,5
    80005934:	08c77663          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005938:	00e50733          	add	a4,a0,a4
    8000593c:	00b70023          	sb	a1,0(a4)
    80005940:	0067871b          	addiw	a4,a5,6
    80005944:	06c77e63          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005948:	00e50733          	add	a4,a0,a4
    8000594c:	00b70023          	sb	a1,0(a4)
    80005950:	0077871b          	addiw	a4,a5,7
    80005954:	06c77663          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005958:	00e50733          	add	a4,a0,a4
    8000595c:	00b70023          	sb	a1,0(a4)
    80005960:	0087871b          	addiw	a4,a5,8
    80005964:	04c77e63          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005968:	00e50733          	add	a4,a0,a4
    8000596c:	00b70023          	sb	a1,0(a4)
    80005970:	0097871b          	addiw	a4,a5,9
    80005974:	04c77663          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005978:	00e50733          	add	a4,a0,a4
    8000597c:	00b70023          	sb	a1,0(a4)
    80005980:	00a7871b          	addiw	a4,a5,10
    80005984:	02c77e63          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005988:	00e50733          	add	a4,a0,a4
    8000598c:	00b70023          	sb	a1,0(a4)
    80005990:	00b7871b          	addiw	a4,a5,11
    80005994:	02c77663          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    80005998:	00e50733          	add	a4,a0,a4
    8000599c:	00b70023          	sb	a1,0(a4)
    800059a0:	00c7871b          	addiw	a4,a5,12
    800059a4:	00c77e63          	bgeu	a4,a2,800059c0 <__memset+0x1c8>
    800059a8:	00e50733          	add	a4,a0,a4
    800059ac:	00b70023          	sb	a1,0(a4)
    800059b0:	00d7879b          	addiw	a5,a5,13
    800059b4:	00c7f663          	bgeu	a5,a2,800059c0 <__memset+0x1c8>
    800059b8:	00f507b3          	add	a5,a0,a5
    800059bc:	00b78023          	sb	a1,0(a5)
    800059c0:	00813403          	ld	s0,8(sp)
    800059c4:	01010113          	addi	sp,sp,16
    800059c8:	00008067          	ret
    800059cc:	00b00693          	li	a3,11
    800059d0:	e55ff06f          	j	80005824 <__memset+0x2c>
    800059d4:	00300e93          	li	t4,3
    800059d8:	ea5ff06f          	j	8000587c <__memset+0x84>
    800059dc:	00100e93          	li	t4,1
    800059e0:	e9dff06f          	j	8000587c <__memset+0x84>
    800059e4:	00000e93          	li	t4,0
    800059e8:	e95ff06f          	j	8000587c <__memset+0x84>
    800059ec:	00000793          	li	a5,0
    800059f0:	ef9ff06f          	j	800058e8 <__memset+0xf0>
    800059f4:	00200e93          	li	t4,2
    800059f8:	e85ff06f          	j	8000587c <__memset+0x84>
    800059fc:	00400e93          	li	t4,4
    80005a00:	e7dff06f          	j	8000587c <__memset+0x84>
    80005a04:	00500e93          	li	t4,5
    80005a08:	e75ff06f          	j	8000587c <__memset+0x84>
    80005a0c:	00600e93          	li	t4,6
    80005a10:	e6dff06f          	j	8000587c <__memset+0x84>

0000000080005a14 <__memmove>:
    80005a14:	ff010113          	addi	sp,sp,-16
    80005a18:	00813423          	sd	s0,8(sp)
    80005a1c:	01010413          	addi	s0,sp,16
    80005a20:	0e060863          	beqz	a2,80005b10 <__memmove+0xfc>
    80005a24:	fff6069b          	addiw	a3,a2,-1
    80005a28:	0006881b          	sext.w	a6,a3
    80005a2c:	0ea5e863          	bltu	a1,a0,80005b1c <__memmove+0x108>
    80005a30:	00758713          	addi	a4,a1,7
    80005a34:	00a5e7b3          	or	a5,a1,a0
    80005a38:	40a70733          	sub	a4,a4,a0
    80005a3c:	0077f793          	andi	a5,a5,7
    80005a40:	00f73713          	sltiu	a4,a4,15
    80005a44:	00174713          	xori	a4,a4,1
    80005a48:	0017b793          	seqz	a5,a5
    80005a4c:	00e7f7b3          	and	a5,a5,a4
    80005a50:	10078863          	beqz	a5,80005b60 <__memmove+0x14c>
    80005a54:	00900793          	li	a5,9
    80005a58:	1107f463          	bgeu	a5,a6,80005b60 <__memmove+0x14c>
    80005a5c:	0036581b          	srliw	a6,a2,0x3
    80005a60:	fff8081b          	addiw	a6,a6,-1
    80005a64:	02081813          	slli	a6,a6,0x20
    80005a68:	01d85893          	srli	a7,a6,0x1d
    80005a6c:	00858813          	addi	a6,a1,8
    80005a70:	00058793          	mv	a5,a1
    80005a74:	00050713          	mv	a4,a0
    80005a78:	01088833          	add	a6,a7,a6
    80005a7c:	0007b883          	ld	a7,0(a5)
    80005a80:	00878793          	addi	a5,a5,8
    80005a84:	00870713          	addi	a4,a4,8
    80005a88:	ff173c23          	sd	a7,-8(a4)
    80005a8c:	ff0798e3          	bne	a5,a6,80005a7c <__memmove+0x68>
    80005a90:	ff867713          	andi	a4,a2,-8
    80005a94:	02071793          	slli	a5,a4,0x20
    80005a98:	0207d793          	srli	a5,a5,0x20
    80005a9c:	00f585b3          	add	a1,a1,a5
    80005aa0:	40e686bb          	subw	a3,a3,a4
    80005aa4:	00f507b3          	add	a5,a0,a5
    80005aa8:	06e60463          	beq	a2,a4,80005b10 <__memmove+0xfc>
    80005aac:	0005c703          	lbu	a4,0(a1)
    80005ab0:	00e78023          	sb	a4,0(a5)
    80005ab4:	04068e63          	beqz	a3,80005b10 <__memmove+0xfc>
    80005ab8:	0015c603          	lbu	a2,1(a1)
    80005abc:	00100713          	li	a4,1
    80005ac0:	00c780a3          	sb	a2,1(a5)
    80005ac4:	04e68663          	beq	a3,a4,80005b10 <__memmove+0xfc>
    80005ac8:	0025c603          	lbu	a2,2(a1)
    80005acc:	00200713          	li	a4,2
    80005ad0:	00c78123          	sb	a2,2(a5)
    80005ad4:	02e68e63          	beq	a3,a4,80005b10 <__memmove+0xfc>
    80005ad8:	0035c603          	lbu	a2,3(a1)
    80005adc:	00300713          	li	a4,3
    80005ae0:	00c781a3          	sb	a2,3(a5)
    80005ae4:	02e68663          	beq	a3,a4,80005b10 <__memmove+0xfc>
    80005ae8:	0045c603          	lbu	a2,4(a1)
    80005aec:	00400713          	li	a4,4
    80005af0:	00c78223          	sb	a2,4(a5)
    80005af4:	00e68e63          	beq	a3,a4,80005b10 <__memmove+0xfc>
    80005af8:	0055c603          	lbu	a2,5(a1)
    80005afc:	00500713          	li	a4,5
    80005b00:	00c782a3          	sb	a2,5(a5)
    80005b04:	00e68663          	beq	a3,a4,80005b10 <__memmove+0xfc>
    80005b08:	0065c703          	lbu	a4,6(a1)
    80005b0c:	00e78323          	sb	a4,6(a5)
    80005b10:	00813403          	ld	s0,8(sp)
    80005b14:	01010113          	addi	sp,sp,16
    80005b18:	00008067          	ret
    80005b1c:	02061713          	slli	a4,a2,0x20
    80005b20:	02075713          	srli	a4,a4,0x20
    80005b24:	00e587b3          	add	a5,a1,a4
    80005b28:	f0f574e3          	bgeu	a0,a5,80005a30 <__memmove+0x1c>
    80005b2c:	02069613          	slli	a2,a3,0x20
    80005b30:	02065613          	srli	a2,a2,0x20
    80005b34:	fff64613          	not	a2,a2
    80005b38:	00e50733          	add	a4,a0,a4
    80005b3c:	00c78633          	add	a2,a5,a2
    80005b40:	fff7c683          	lbu	a3,-1(a5)
    80005b44:	fff78793          	addi	a5,a5,-1
    80005b48:	fff70713          	addi	a4,a4,-1
    80005b4c:	00d70023          	sb	a3,0(a4)
    80005b50:	fec798e3          	bne	a5,a2,80005b40 <__memmove+0x12c>
    80005b54:	00813403          	ld	s0,8(sp)
    80005b58:	01010113          	addi	sp,sp,16
    80005b5c:	00008067          	ret
    80005b60:	02069713          	slli	a4,a3,0x20
    80005b64:	02075713          	srli	a4,a4,0x20
    80005b68:	00170713          	addi	a4,a4,1
    80005b6c:	00e50733          	add	a4,a0,a4
    80005b70:	00050793          	mv	a5,a0
    80005b74:	0005c683          	lbu	a3,0(a1)
    80005b78:	00178793          	addi	a5,a5,1
    80005b7c:	00158593          	addi	a1,a1,1
    80005b80:	fed78fa3          	sb	a3,-1(a5)
    80005b84:	fee798e3          	bne	a5,a4,80005b74 <__memmove+0x160>
    80005b88:	f89ff06f          	j	80005b10 <__memmove+0xfc>

0000000080005b8c <__mem_free>:
    80005b8c:	ff010113          	addi	sp,sp,-16
    80005b90:	00813423          	sd	s0,8(sp)
    80005b94:	01010413          	addi	s0,sp,16
    80005b98:	00002597          	auipc	a1,0x2
    80005b9c:	a4058593          	addi	a1,a1,-1472 # 800075d8 <freep>
    80005ba0:	0005b783          	ld	a5,0(a1)
    80005ba4:	ff050693          	addi	a3,a0,-16
    80005ba8:	0007b703          	ld	a4,0(a5)
    80005bac:	00d7fc63          	bgeu	a5,a3,80005bc4 <__mem_free+0x38>
    80005bb0:	00e6ee63          	bltu	a3,a4,80005bcc <__mem_free+0x40>
    80005bb4:	00e7fc63          	bgeu	a5,a4,80005bcc <__mem_free+0x40>
    80005bb8:	00070793          	mv	a5,a4
    80005bbc:	0007b703          	ld	a4,0(a5)
    80005bc0:	fed7e8e3          	bltu	a5,a3,80005bb0 <__mem_free+0x24>
    80005bc4:	fee7eae3          	bltu	a5,a4,80005bb8 <__mem_free+0x2c>
    80005bc8:	fee6f8e3          	bgeu	a3,a4,80005bb8 <__mem_free+0x2c>
    80005bcc:	ff852803          	lw	a6,-8(a0)
    80005bd0:	02081613          	slli	a2,a6,0x20
    80005bd4:	01c65613          	srli	a2,a2,0x1c
    80005bd8:	00c68633          	add	a2,a3,a2
    80005bdc:	02c70a63          	beq	a4,a2,80005c10 <__mem_free+0x84>
    80005be0:	fee53823          	sd	a4,-16(a0)
    80005be4:	0087a503          	lw	a0,8(a5)
    80005be8:	02051613          	slli	a2,a0,0x20
    80005bec:	01c65613          	srli	a2,a2,0x1c
    80005bf0:	00c78633          	add	a2,a5,a2
    80005bf4:	04c68263          	beq	a3,a2,80005c38 <__mem_free+0xac>
    80005bf8:	00813403          	ld	s0,8(sp)
    80005bfc:	00d7b023          	sd	a3,0(a5)
    80005c00:	00f5b023          	sd	a5,0(a1)
    80005c04:	00000513          	li	a0,0
    80005c08:	01010113          	addi	sp,sp,16
    80005c0c:	00008067          	ret
    80005c10:	00872603          	lw	a2,8(a4)
    80005c14:	00073703          	ld	a4,0(a4)
    80005c18:	0106083b          	addw	a6,a2,a6
    80005c1c:	ff052c23          	sw	a6,-8(a0)
    80005c20:	fee53823          	sd	a4,-16(a0)
    80005c24:	0087a503          	lw	a0,8(a5)
    80005c28:	02051613          	slli	a2,a0,0x20
    80005c2c:	01c65613          	srli	a2,a2,0x1c
    80005c30:	00c78633          	add	a2,a5,a2
    80005c34:	fcc692e3          	bne	a3,a2,80005bf8 <__mem_free+0x6c>
    80005c38:	00813403          	ld	s0,8(sp)
    80005c3c:	0105053b          	addw	a0,a0,a6
    80005c40:	00a7a423          	sw	a0,8(a5)
    80005c44:	00e7b023          	sd	a4,0(a5)
    80005c48:	00f5b023          	sd	a5,0(a1)
    80005c4c:	00000513          	li	a0,0
    80005c50:	01010113          	addi	sp,sp,16
    80005c54:	00008067          	ret

0000000080005c58 <__mem_alloc>:
    80005c58:	fc010113          	addi	sp,sp,-64
    80005c5c:	02813823          	sd	s0,48(sp)
    80005c60:	02913423          	sd	s1,40(sp)
    80005c64:	03213023          	sd	s2,32(sp)
    80005c68:	01513423          	sd	s5,8(sp)
    80005c6c:	02113c23          	sd	ra,56(sp)
    80005c70:	01313c23          	sd	s3,24(sp)
    80005c74:	01413823          	sd	s4,16(sp)
    80005c78:	01613023          	sd	s6,0(sp)
    80005c7c:	04010413          	addi	s0,sp,64
    80005c80:	00002a97          	auipc	s5,0x2
    80005c84:	958a8a93          	addi	s5,s5,-1704 # 800075d8 <freep>
    80005c88:	00f50913          	addi	s2,a0,15
    80005c8c:	000ab683          	ld	a3,0(s5)
    80005c90:	00495913          	srli	s2,s2,0x4
    80005c94:	0019049b          	addiw	s1,s2,1
    80005c98:	00048913          	mv	s2,s1
    80005c9c:	0c068c63          	beqz	a3,80005d74 <__mem_alloc+0x11c>
    80005ca0:	0006b503          	ld	a0,0(a3)
    80005ca4:	00852703          	lw	a4,8(a0)
    80005ca8:	10977063          	bgeu	a4,s1,80005da8 <__mem_alloc+0x150>
    80005cac:	000017b7          	lui	a5,0x1
    80005cb0:	0009099b          	sext.w	s3,s2
    80005cb4:	0af4e863          	bltu	s1,a5,80005d64 <__mem_alloc+0x10c>
    80005cb8:	02099a13          	slli	s4,s3,0x20
    80005cbc:	01ca5a13          	srli	s4,s4,0x1c
    80005cc0:	fff00b13          	li	s6,-1
    80005cc4:	0100006f          	j	80005cd4 <__mem_alloc+0x7c>
    80005cc8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80005ccc:	00852703          	lw	a4,8(a0)
    80005cd0:	04977463          	bgeu	a4,s1,80005d18 <__mem_alloc+0xc0>
    80005cd4:	00050793          	mv	a5,a0
    80005cd8:	fea698e3          	bne	a3,a0,80005cc8 <__mem_alloc+0x70>
    80005cdc:	000a0513          	mv	a0,s4
    80005ce0:	00000097          	auipc	ra,0x0
    80005ce4:	1f0080e7          	jalr	496(ra) # 80005ed0 <kvmincrease>
    80005ce8:	00050793          	mv	a5,a0
    80005cec:	01050513          	addi	a0,a0,16
    80005cf0:	07678e63          	beq	a5,s6,80005d6c <__mem_alloc+0x114>
    80005cf4:	0137a423          	sw	s3,8(a5)
    80005cf8:	00000097          	auipc	ra,0x0
    80005cfc:	e94080e7          	jalr	-364(ra) # 80005b8c <__mem_free>
    80005d00:	000ab783          	ld	a5,0(s5)
    80005d04:	06078463          	beqz	a5,80005d6c <__mem_alloc+0x114>
    80005d08:	0007b503          	ld	a0,0(a5)
    80005d0c:	00078693          	mv	a3,a5
    80005d10:	00852703          	lw	a4,8(a0)
    80005d14:	fc9760e3          	bltu	a4,s1,80005cd4 <__mem_alloc+0x7c>
    80005d18:	08e48263          	beq	s1,a4,80005d9c <__mem_alloc+0x144>
    80005d1c:	4127073b          	subw	a4,a4,s2
    80005d20:	02071693          	slli	a3,a4,0x20
    80005d24:	01c6d693          	srli	a3,a3,0x1c
    80005d28:	00e52423          	sw	a4,8(a0)
    80005d2c:	00d50533          	add	a0,a0,a3
    80005d30:	01252423          	sw	s2,8(a0)
    80005d34:	00fab023          	sd	a5,0(s5)
    80005d38:	01050513          	addi	a0,a0,16
    80005d3c:	03813083          	ld	ra,56(sp)
    80005d40:	03013403          	ld	s0,48(sp)
    80005d44:	02813483          	ld	s1,40(sp)
    80005d48:	02013903          	ld	s2,32(sp)
    80005d4c:	01813983          	ld	s3,24(sp)
    80005d50:	01013a03          	ld	s4,16(sp)
    80005d54:	00813a83          	ld	s5,8(sp)
    80005d58:	00013b03          	ld	s6,0(sp)
    80005d5c:	04010113          	addi	sp,sp,64
    80005d60:	00008067          	ret
    80005d64:	000019b7          	lui	s3,0x1
    80005d68:	f51ff06f          	j	80005cb8 <__mem_alloc+0x60>
    80005d6c:	00000513          	li	a0,0
    80005d70:	fcdff06f          	j	80005d3c <__mem_alloc+0xe4>
    80005d74:	00003797          	auipc	a5,0x3
    80005d78:	b0c78793          	addi	a5,a5,-1268 # 80008880 <base>
    80005d7c:	00078513          	mv	a0,a5
    80005d80:	00fab023          	sd	a5,0(s5)
    80005d84:	00f7b023          	sd	a5,0(a5)
    80005d88:	00000713          	li	a4,0
    80005d8c:	00003797          	auipc	a5,0x3
    80005d90:	ae07ae23          	sw	zero,-1284(a5) # 80008888 <base+0x8>
    80005d94:	00050693          	mv	a3,a0
    80005d98:	f11ff06f          	j	80005ca8 <__mem_alloc+0x50>
    80005d9c:	00053703          	ld	a4,0(a0)
    80005da0:	00e7b023          	sd	a4,0(a5)
    80005da4:	f91ff06f          	j	80005d34 <__mem_alloc+0xdc>
    80005da8:	00068793          	mv	a5,a3
    80005dac:	f6dff06f          	j	80005d18 <__mem_alloc+0xc0>

0000000080005db0 <__putc>:
    80005db0:	fe010113          	addi	sp,sp,-32
    80005db4:	00813823          	sd	s0,16(sp)
    80005db8:	00113c23          	sd	ra,24(sp)
    80005dbc:	02010413          	addi	s0,sp,32
    80005dc0:	00050793          	mv	a5,a0
    80005dc4:	fef40593          	addi	a1,s0,-17
    80005dc8:	00100613          	li	a2,1
    80005dcc:	00000513          	li	a0,0
    80005dd0:	fef407a3          	sb	a5,-17(s0)
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	918080e7          	jalr	-1768(ra) # 800046ec <console_write>
    80005ddc:	01813083          	ld	ra,24(sp)
    80005de0:	01013403          	ld	s0,16(sp)
    80005de4:	02010113          	addi	sp,sp,32
    80005de8:	00008067          	ret

0000000080005dec <__getc>:
    80005dec:	fe010113          	addi	sp,sp,-32
    80005df0:	00813823          	sd	s0,16(sp)
    80005df4:	00113c23          	sd	ra,24(sp)
    80005df8:	02010413          	addi	s0,sp,32
    80005dfc:	fe840593          	addi	a1,s0,-24
    80005e00:	00100613          	li	a2,1
    80005e04:	00000513          	li	a0,0
    80005e08:	fffff097          	auipc	ra,0xfffff
    80005e0c:	8c4080e7          	jalr	-1852(ra) # 800046cc <console_read>
    80005e10:	fe844503          	lbu	a0,-24(s0)
    80005e14:	01813083          	ld	ra,24(sp)
    80005e18:	01013403          	ld	s0,16(sp)
    80005e1c:	02010113          	addi	sp,sp,32
    80005e20:	00008067          	ret

0000000080005e24 <console_handler>:
    80005e24:	fe010113          	addi	sp,sp,-32
    80005e28:	00813823          	sd	s0,16(sp)
    80005e2c:	00113c23          	sd	ra,24(sp)
    80005e30:	00913423          	sd	s1,8(sp)
    80005e34:	02010413          	addi	s0,sp,32
    80005e38:	14202773          	csrr	a4,scause
    80005e3c:	100027f3          	csrr	a5,sstatus
    80005e40:	0027f793          	andi	a5,a5,2
    80005e44:	06079e63          	bnez	a5,80005ec0 <console_handler+0x9c>
    80005e48:	00074c63          	bltz	a4,80005e60 <console_handler+0x3c>
    80005e4c:	01813083          	ld	ra,24(sp)
    80005e50:	01013403          	ld	s0,16(sp)
    80005e54:	00813483          	ld	s1,8(sp)
    80005e58:	02010113          	addi	sp,sp,32
    80005e5c:	00008067          	ret
    80005e60:	0ff77713          	andi	a4,a4,255
    80005e64:	00900793          	li	a5,9
    80005e68:	fef712e3          	bne	a4,a5,80005e4c <console_handler+0x28>
    80005e6c:	ffffe097          	auipc	ra,0xffffe
    80005e70:	4b8080e7          	jalr	1208(ra) # 80004324 <plic_claim>
    80005e74:	00a00793          	li	a5,10
    80005e78:	00050493          	mv	s1,a0
    80005e7c:	02f50c63          	beq	a0,a5,80005eb4 <console_handler+0x90>
    80005e80:	fc0506e3          	beqz	a0,80005e4c <console_handler+0x28>
    80005e84:	00050593          	mv	a1,a0
    80005e88:	00000517          	auipc	a0,0x0
    80005e8c:	40050513          	addi	a0,a0,1024 # 80006288 <_ZZ12printIntegermE6digits+0x1e0>
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	8d8080e7          	jalr	-1832(ra) # 80004768 <__printf>
    80005e98:	01013403          	ld	s0,16(sp)
    80005e9c:	01813083          	ld	ra,24(sp)
    80005ea0:	00048513          	mv	a0,s1
    80005ea4:	00813483          	ld	s1,8(sp)
    80005ea8:	02010113          	addi	sp,sp,32
    80005eac:	ffffe317          	auipc	t1,0xffffe
    80005eb0:	4b030067          	jr	1200(t1) # 8000435c <plic_complete>
    80005eb4:	fffff097          	auipc	ra,0xfffff
    80005eb8:	1bc080e7          	jalr	444(ra) # 80005070 <uartintr>
    80005ebc:	fddff06f          	j	80005e98 <console_handler+0x74>
    80005ec0:	00000517          	auipc	a0,0x0
    80005ec4:	4c850513          	addi	a0,a0,1224 # 80006388 <digits+0x78>
    80005ec8:	fffff097          	auipc	ra,0xfffff
    80005ecc:	844080e7          	jalr	-1980(ra) # 8000470c <panic>

0000000080005ed0 <kvmincrease>:
    80005ed0:	fe010113          	addi	sp,sp,-32
    80005ed4:	01213023          	sd	s2,0(sp)
    80005ed8:	00001937          	lui	s2,0x1
    80005edc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005ee0:	00813823          	sd	s0,16(sp)
    80005ee4:	00113c23          	sd	ra,24(sp)
    80005ee8:	00913423          	sd	s1,8(sp)
    80005eec:	02010413          	addi	s0,sp,32
    80005ef0:	01250933          	add	s2,a0,s2
    80005ef4:	00c95913          	srli	s2,s2,0xc
    80005ef8:	02090863          	beqz	s2,80005f28 <kvmincrease+0x58>
    80005efc:	00000493          	li	s1,0
    80005f00:	00148493          	addi	s1,s1,1
    80005f04:	fffff097          	auipc	ra,0xfffff
    80005f08:	4bc080e7          	jalr	1212(ra) # 800053c0 <kalloc>
    80005f0c:	fe991ae3          	bne	s2,s1,80005f00 <kvmincrease+0x30>
    80005f10:	01813083          	ld	ra,24(sp)
    80005f14:	01013403          	ld	s0,16(sp)
    80005f18:	00813483          	ld	s1,8(sp)
    80005f1c:	00013903          	ld	s2,0(sp)
    80005f20:	02010113          	addi	sp,sp,32
    80005f24:	00008067          	ret
    80005f28:	01813083          	ld	ra,24(sp)
    80005f2c:	01013403          	ld	s0,16(sp)
    80005f30:	00813483          	ld	s1,8(sp)
    80005f34:	00013903          	ld	s2,0(sp)
    80005f38:	00000513          	li	a0,0
    80005f3c:	02010113          	addi	sp,sp,32
    80005f40:	00008067          	ret
	...
