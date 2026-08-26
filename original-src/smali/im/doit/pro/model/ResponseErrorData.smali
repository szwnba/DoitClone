.class public Lim/doit/pro/model/ResponseErrorData;
.super Ljava/lang/Object;
.source "ResponseErrorData.java"


# instance fields
.field private usn:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsn()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lim/doit/pro/model/ResponseErrorData;->usn:J

    return-wide v0
.end method

.method public setUsn(J)V
    .locals 1
    .param p1, "usn"    # J

    .prologue
    .line 15
    iput-wide p1, p0, Lim/doit/pro/model/ResponseErrorData;->usn:J

    .line 16
    return-void
.end method
