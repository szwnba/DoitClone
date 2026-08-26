.class public Lim/doit/pro/ui/model/GrouperForListView;
.super Lim/doit/pro/model/BaseEntityWithPos;
.source "GrouperForListView.java"


# static fields
.field private static final serialVersionUID:J = -0x45d398652bf39c1L


# instance fields
.field private fold:Z

.field private key:Ljava/lang/String;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithPos;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "totalCount"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fold"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithPos;-><init>()V

    .line 21
    iput-object p1, p0, Lim/doit/pro/ui/model/GrouperForListView;->name:Ljava/lang/String;

    .line 22
    iput p2, p0, Lim/doit/pro/ui/model/GrouperForListView;->totalCount:I

    .line 23
    iput-object p3, p0, Lim/doit/pro/ui/model/GrouperForListView;->key:Ljava/lang/String;

    .line 24
    iput-boolean p4, p0, Lim/doit/pro/ui/model/GrouperForListView;->fold:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/model/GrouperForListView;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lim/doit/pro/ui/model/GrouperForListView;->totalCount:I

    return v0
.end method

.method public isFold()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lim/doit/pro/ui/model/GrouperForListView;->fold:Z

    return v0
.end method

.method public setFold(Z)V
    .locals 0
    .param p1, "fold"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lim/doit/pro/ui/model/GrouperForListView;->fold:Z

    .line 41
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .line 32
    iput p1, p0, Lim/doit/pro/ui/model/GrouperForListView;->totalCount:I

    .line 33
    return-void
.end method
