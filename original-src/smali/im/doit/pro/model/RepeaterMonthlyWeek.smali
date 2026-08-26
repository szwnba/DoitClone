.class public Lim/doit/pro/model/RepeaterMonthlyWeek;
.super Ljava/lang/Object;
.source "RepeaterMonthlyWeek.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f1fd78f3ef37310L


# instance fields
.field private dayOfWeek:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day_of_week"
    .end annotation
.end field

.field private week:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
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
.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lim/doit/pro/model/RepeaterMonthlyWeek;->dayOfWeek:I

    return v0
.end method

.method public getWeek()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lim/doit/pro/model/RepeaterMonthlyWeek;->week:I

    return v0
.end method

.method public setDayOfWeek(I)V
    .locals 0
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 34
    iput p1, p0, Lim/doit/pro/model/RepeaterMonthlyWeek;->dayOfWeek:I

    .line 35
    return-void
.end method

.method public setWeek(I)V
    .locals 0
    .param p1, "week"    # I

    .prologue
    .line 26
    iput p1, p0, Lim/doit/pro/model/RepeaterMonthlyWeek;->week:I

    .line 27
    return-void
.end method
