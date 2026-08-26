.class public Lim/doit/pro/model/RepeaterMonthlyDate;
.super Ljava/lang/Object;
.source "RepeaterMonthlyDate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x315215d8e58e7a14L


# instance fields
.field private dayOfMonth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day_of_month"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lim/doit/pro/model/RepeaterMonthlyDate;->dayOfMonth:I

    return v0
.end method

.method public setDayOfMonth(I)V
    .locals 0
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 24
    iput p1, p0, Lim/doit/pro/model/RepeaterMonthlyDate;->dayOfMonth:I

    .line 25
    return-void
.end method
