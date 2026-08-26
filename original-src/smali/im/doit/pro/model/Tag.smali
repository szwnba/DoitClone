.class public Lim/doit/pro/model/Tag;
.super Lim/doit/pro/model/BaseEntity;
.source "Tag.java"


# static fields
.field private static final serialVersionUID:J = -0x28206116cebdfe0eL


# instance fields
.field private deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/model/Tag;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lim/doit/pro/model/Tag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 31
    iput-object p1, p0, Lim/doit/pro/model/Tag;->deleted:Ljava/util/Calendar;

    .line 32
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lim/doit/pro/model/Tag;->name:Ljava/lang/String;

    .line 24
    return-void
.end method
