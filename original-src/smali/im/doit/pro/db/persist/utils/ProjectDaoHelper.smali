.class public Lim/doit/pro/db/persist/utils/ProjectDaoHelper;
.super Ljava/lang/Object;
.source "ProjectDaoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseCustomFilterContexts(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 8
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sb"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 174
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 177
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 179
    const-string v4, "context"

    invoke-virtual {p2, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 200
    .end local v0    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local v0    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "id":Ljava/lang/String;
    :cond_1
    const-string v4, "context"

    invoke-virtual {p2, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 184
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v3, "inConditionTmp":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "inCondition":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v4, "context"

    invoke-virtual {p2, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->in(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    const-string v4, " OR "

    invoke-virtual {p2, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    const-string v5, "context"

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 197
    :cond_4
    const-string v4, ")"

    invoke-virtual {p2, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 186
    .end local v2    # "inCondition":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .restart local v1    # "id":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private parseCustomFilterEnd(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 7
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sb"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 155
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getEndAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getEndAt()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxStartAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 158
    .local v4, "minDate":J
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxEndAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 159
    .local v2, "maxDate":J
    const-string v1, "end_at"

    invoke-virtual {p2, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v6, "end_at"

    invoke-virtual {v1, v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 161
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "maxDate":J
    .end local v4    # "minDate":J
    :cond_0
    return-void
.end method

.method private parseCustomFilterStart(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 7
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 146
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStartAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStartAt()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxStartAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 149
    .local v4, "minDate":J
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxEndAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 150
    .local v2, "maxDate":J
    const-string v1, "start_at"

    invoke-virtual {p2, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v6, "start_at"

    invoke-virtual {v1, v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 152
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "maxDate":J
    .end local v4    # "minDate":J
    :cond_0
    return-void
.end method

.method private parseCustomFilterWithStatus(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 3
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sb"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "completed"

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v0, "completed"

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0
.end method


# virtual methods
.method public byGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 79
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 80
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 81
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 82
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 83
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 84
    return-object v0
.end method

.method public byTaskContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public completed()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 48
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 49
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 50
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 51
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 52
    return-object v0
.end method

.method public completedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 89
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 90
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 91
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 92
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 93
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 94
    return-object v0
.end method

.method public getFilterClause(Lim/doit/pro/model/Filter;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getAssignTo()Lim/doit/pro/model/FilterAssignTo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 111
    :cond_1
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 112
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "archived"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "trashed"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 113
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "inactive"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 114
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->parseCustomFilterWithStatus(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 115
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->parseCustomFilterStart(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 116
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->parseCustomFilterEnd(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 117
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->parseCustomFilterContexts(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    goto :goto_0
.end method

.method public getSearchByKeyClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "getSearchByKeyClause keys and values invalid."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_0
    new-instance v2, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 131
    .local v2, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 132
    array-length v1, p1

    .line 133
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 134
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 135
    const-string v3, "("

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lt v0, v3, :cond_2

    .line 139
    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 140
    const-string v3, ")"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 142
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 137
    .restart local v0    # "i":I
    :cond_2
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public inactive()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 65
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 66
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "inactive"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 67
    return-object v0
.end method

.method public notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 25
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 26
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 27
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 28
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 29
    return-object v0
.end method

.method public notDeadByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public scheduled()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    .local v0, "minStartAt":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 39
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "start_at"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    return-object v1
.end method

.method public someday()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "inactive"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "start_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public tomorrow()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/ProjectDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "start_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrowMills()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "start_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrowMills()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public trash()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 57
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 58
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 59
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 60
    return-object v0
.end method

.method public trashedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 99
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 100
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 101
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 102
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 103
    return-object v0
.end method
