.class public Lim/doit/pro/ui/model/TagFilter;
.super Lim/doit/pro/model/BaseEntityWithPos;
.source "TagFilter.java"


# static fields
.field private static final serialVersionUID:J = 0x2cfc838be6bdf5b1L


# instance fields
.field private isUntagged:Z

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithPos;-><init>()V

    return-void
.end method


# virtual methods
.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lim/doit/pro/ui/model/TagFilter;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isUntagged()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lim/doit/pro/ui/model/TagFilter;->isUntagged:Z

    return v0
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lim/doit/pro/ui/model/TagFilter;->tags:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public setUntagged(Z)V
    .locals 0
    .param p1, "isUntagged"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lim/doit/pro/ui/model/TagFilter;->isUntagged:Z

    .line 30
    return-void
.end method
