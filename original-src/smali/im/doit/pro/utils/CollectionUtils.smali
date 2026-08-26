.class public Lim/doit/pro/utils/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "list1":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "list2":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 23
    goto :goto_0

    .line 25
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "item":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 28
    goto :goto_0

    .end local v0    # "item":Ljava/lang/Object;
    :cond_5
    move v1, v2

    .line 33
    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {p0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const/4 v3, 0x0

    .line 49
    :goto_0
    return-object v3

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 41
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, "item":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 43
    const/4 v1, 0x0

    .line 47
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
