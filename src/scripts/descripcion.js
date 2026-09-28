import gsap from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';

gsap.registerPlugin(ScrollTrigger);

const elements = ['#desc-p1', '#desc-p2', '#desc-p3', '#desc-cta', '#desc-stat1', '#desc-stat2', '#desc-stat3']
  .map(id => document.querySelector(id))
  .filter(Boolean);

gsap.set(elements, { opacity: 0, y: 30 });

ScrollTrigger.create({
  trigger: '#descripcion',
  start: 'top 75%',
  onEnter: () => {
    gsap.to(elements, {
      opacity: 1,
      y: 0,
      duration: 0.7,
      ease: 'power2.out',
      stagger: 0.12,
    });
  },
  onLeaveBack: () => {
    gsap.set(elements, { opacity: 0, y: 30 });
  },
});
