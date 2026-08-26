.class public Lim/doit/pro/model/ResponseErrorResult;
.super Ljava/lang/Object;
.source "ResponseErrorResult.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private data:Lim/doit/pro/model/ResponseErrorData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lim/doit/pro/model/ResponseErrorResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lim/doit/pro/model/ResponseErrorData;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/model/ResponseErrorResult;->data:Lim/doit/pro/model/ResponseErrorData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lim/doit/pro/model/ResponseErrorResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/model/ResponseErrorResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lim/doit/pro/model/ResponseErrorResult;->code:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setData(Lim/doit/pro/model/ResponseErrorData;)V
    .locals 0
    .param p1, "data"    # Lim/doit/pro/model/ResponseErrorData;

    .prologue
    .line 45
    iput-object p1, p0, Lim/doit/pro/model/ResponseErrorResult;->data:Lim/doit/pro/model/ResponseErrorData;

    .line 46
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lim/doit/pro/model/ResponseErrorResult;->message:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lim/doit/pro/model/ResponseErrorResult;->type:Ljava/lang/String;

    .line 38
    return-void
.end method
