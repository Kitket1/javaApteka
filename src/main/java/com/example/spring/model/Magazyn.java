package com.example.spring.model;

public class Magazyn {
    private Integer id;
    private Integer l1;
    private Integer l2;
    private Integer l3;
    private Integer l4;
    private Integer l5;
    private Integer l6;
    private Integer l7;
    private Integer l8;
    private Integer l9;
    private Integer koszt;



    public Magazyn(Integer id, Integer l1, Integer l2, Integer l3, Integer l4, Integer l5, Integer l6, Integer l7, Integer l8, Integer l9, Integer koszt) {
        this.id = id;
        this.l1 = l1;
        this.l2 = l2;
        this.l3 = l3;
        this.l4 = l4;
        this.l5 = l5;
        this.l6 = l6;
        this.l7 = l7;
        this.l8 = l8;
        this.l9 = l9;
        this.koszt = 0;
    }

    public Integer getKoszt(){
        return koszt;
    }

    public void setKoszt(Integer koszt){
        this.koszt = koszt;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getL1() {
        return l1;
    }

    public void setL1(Integer l1) {
        this.l1 = l1;
    }

    public Integer getL2() {
        return l2;
    }

    public void setL2(Integer l2) {
        this.l2 = l2;
    }

    public Integer getL3() {
        return l3;
    }

    public void setL3(Integer l3) {
        this.l3 = l3;
    }

    public Integer getL4() {
        return l4;
    }

    public void setL4(Integer l4) {
        this.l4 = l4;
    }

    public Integer getL5() {
        return l5;
    }

    public void setL5(Integer l5) {
        this.l5 = l5;
    }

    public Integer getL6() {
        return l6;
    }

    public void setL6(Integer l6) {
        this.l6 = l6;
    }

    public Integer getL7() {
        return l7;
    }

    public void setL7(Integer l7) {
        this.l7 = l7;
    }

    public Integer getL8() {
        return l8;
    }

    public void setL8(Integer l8) {
        this.l8 = l8;
    }

    public Integer getL9() {
        return l9;
    }

    public void setL9(Integer l9) {
        this.l9 = l9;
    }
}
