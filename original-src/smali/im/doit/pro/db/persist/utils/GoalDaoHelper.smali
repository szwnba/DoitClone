.class public Lim/doit/pro/db/persist/utils/GoalDaoHelper;
.super Ljava/lang/Object;
.source "GoalDaoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 21
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 22
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 23
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 24
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 25
    return-object v0
.end method

.method public getSearchByKeyClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "getSearchByKeyClause keys and values invalid."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_0
    new-instance v2, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 46
    .local v2, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 47
    array-length v1, p1

    .line 48
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 49
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 50
    const-string v3, "("

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lt v0, v3, :cond_2

    .line 54
    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 55
    const-string v3, ")"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 57
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 52
    .restart local v0    # "i":I
    :cond_2
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 12
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 13
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 14
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 15
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 16
    return-object v0
.end method

.method public trash()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 30
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 31
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 32
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 33
    return-object v0
.end method
