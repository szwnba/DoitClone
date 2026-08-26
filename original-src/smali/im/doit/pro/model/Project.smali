.class public Lim/doit/pro/model/Project;
.super Lim/doit/pro/model/BaseEntityWithTimestamps;
.source "Project.java"


# static fields
.field private static final serialVersionUID:J = 0x29a5ff6901d69ed1L


# instance fields
.field private activeNotice:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "active_notice"
    .end annotation
.end field

.field private context:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private contextName:Ljava/lang/String;

.field private endAt:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_at"
    .end annotation
.end field

.field private fromTask:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from_task"
    .end annotation
.end field

.field private goal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private goalName:Ljava/lang/String;

.field private groupBy:Lim/doit/pro/model/enums/GroupByType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_by"
    .end annotation
.end field

.field private jsonMedias:Ljava/lang/String;

.field private medias:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private repeatNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeat_no"
    .end annotation
.end field

.field private startAt:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_at"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithTimestamps;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/model/Project;->activeNotice:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lim/doit/pro/model/Task;)V
    .locals 9
    .param p1, "task"    # Lim/doit/pro/model/Task;

    .prologue
    const/4 v8, 0x1

    .line 67
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithTimestamps;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setUuid(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v8}, Lim/doit/pro/model/Project;->setActiveNotice(Z)V

    .line 70
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setNotes(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getComments()Ljava/util/ArrayList;

    move-result-object v1

    .line 73
    .local v1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskComment;>;"
    invoke-static {v1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 75
    const-string v5, ""

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setNotes(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setNotes(Ljava/lang/String;)V

    .line 80
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v3

    .line 81
    .local v3, "myself":Lim/doit/pro/model/User;
    const/4 v2, 0x0

    .line 82
    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 95
    .end local v2    # "i":I
    .end local v3    # "myself":Lim/doit/pro/model/User;
    :cond_2
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setStartAt(Ljava/util/Calendar;)V

    .line 96
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setEndAt(Ljava/util/Calendar;)V

    .line 97
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setFromTask(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setRepeatNo(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getContext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setContext(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getGoal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setGoal(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isSomeday()Z

    move-result v5

    if-nez v5, :cond_3

    .line 102
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    .line 103
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v6

    .line 102
    invoke-static {v5, v6, v8}, Lim/doit/pro/utils/DateUtils;->after(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v5

    .line 103
    if-eqz v5, :cond_6

    .line 104
    :cond_3
    const-string v5, "inactive"

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    .line 108
    :goto_1
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getJsonMedias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setJsonMedias(Ljava/lang/String;)V

    .line 109
    return-void

    .line 82
    .restart local v2    # "i":I
    .restart local v3    # "myself":Lim/doit/pro/model/User;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskComment;

    .line 83
    .local v0, "comment":Lim/doit/pro/model/TaskComment;
    if-eqz v2, :cond_5

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lim/doit/pro/model/Project;->setNotes(Ljava/lang/String;)V

    .line 86
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lim/doit/pro/model/TaskComment;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lim/doit/pro/model/Project;->setNotes(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 88
    .local v4, "postTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Lim/doit/pro/model/TaskComment;->getUpdated()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getNotes()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 90
    invoke-virtual {v3}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lim/doit/pro/model/TaskComment;->getAuthorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 91
    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->formatDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {p0, v6}, Lim/doit/pro/model/Project;->setNotes(Ljava/lang/String;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 106
    .end local v0    # "comment":Lim/doit/pro/model/TaskComment;
    .end local v2    # "i":I
    .end local v3    # "myself":Lim/doit/pro/model/User;
    .end local v4    # "postTime":Ljava/util/Calendar;
    :cond_6
    const-string v5, "active"

    invoke-virtual {p0, v5}, Lim/doit/pro/model/Project;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lim/doit/pro/model/Project;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getContextName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lim/doit/pro/model/Project;->contextName:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Project;->context:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 195
    iget-object v2, p0, Lim/doit/pro/model/Project;->context:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskContext;

    .line 196
    .local v0, "taskContext":Lim/doit/pro/model/TaskContext;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/model/Project;->contextName:Ljava/lang/String;

    .line 200
    .end local v0    # "taskContext":Lim/doit/pro/model/TaskContext;
    :cond_0
    iget-object v1, p0, Lim/doit/pro/model/Project;->contextName:Ljava/lang/String;

    return-object v1
.end method

.method public getEndAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/model/Project;->endAt:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEvernoteList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    const/4 v1, 0x0

    .line 223
    :cond_0
    return-object v1

    .line 217
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getMedias()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Media;

    .line 219
    .local v0, "item":Lim/doit/pro/model/Media;
    const-string v3, "evernote"

    invoke-virtual {v0}, Lim/doit/pro/model/Media;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFromTask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lim/doit/pro/model/Project;->fromTask:Ljava/lang/String;

    return-object v0
.end method

.method public getGoal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lim/doit/pro/model/Project;->goal:Ljava/lang/String;

    return-object v0
.end method

.method public getGoalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    iget-object v1, p0, Lim/doit/pro/model/Project;->goalName:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Project;->goal:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v2, p0, Lim/doit/pro/model/Project;->goal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 206
    .local v0, "goal":Lim/doit/pro/model/Goal;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/model/Project;->goalName:Ljava/lang/String;

    .line 210
    .end local v0    # "goal":Lim/doit/pro/model/Goal;
    :cond_0
    iget-object v1, p0, Lim/doit/pro/model/Project;->goalName:Ljava/lang/String;

    return-object v1
.end method

.method public getGroupBy()Lim/doit/pro/model/enums/GroupByType;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lim/doit/pro/model/Project;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public getJsonMedias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lim/doit/pro/model/Project;->jsonMedias:Ljava/lang/String;

    return-object v0
.end method

.method public getMedias()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lim/doit/pro/model/Project;->medias:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Project;->jsonMedias:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    .line 229
    iget-object v2, p0, Lim/doit/pro/model/Project;->jsonMedias:Ljava/lang/String;

    const-class v3, [Lim/doit/pro/model/Media;

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/doit/pro/model/Media;

    .line 228
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lim/doit/pro/model/Project;->medias:Ljava/util/ArrayList;

    .line 231
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Project;->medias:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRepeatNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lim/doit/pro/model/Project;->repeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getStartAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lim/doit/pro/model/Project;->status:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 281
    const-string v0, "active"

    iget-object v1, p0, Lim/doit/pro/model/Project;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isActiveNotice()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lim/doit/pro/model/Project;->activeNotice:Z

    return v0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isNotDead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isArchived()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isTrashed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInactive()Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "inactive"

    iget-object v1, p0, Lim/doit/pro/model/Project;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNext()Z
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotDead()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lim/doit/pro/model/Project;->deleted:Ljava/util/Calendar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Project;->archived:Ljava/util/Calendar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Project;->trashed:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lim/doit/pro/model/Project;->completed:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotEditable()Z
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSchedule()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    .line 304
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v2

    .line 303
    invoke-static {v1, v2, v0}, Lim/doit/pro/utils/DateUtils;->after(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    .line 304
    if-nez v1, :cond_1

    .line 303
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSomeday()Z
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isInactive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToday()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTomorrow()Z
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 294
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrowMills()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 295
    iget-object v0, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrowMills()J

    move-result-wide v2

    .line 292
    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveNotice(Z)V
    .locals 1
    .param p1, "activeNotice"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lim/doit/pro/model/Project;->activeNotice:Z

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 190
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lim/doit/pro/model/Project;->context:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/Project;->contextName:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 146
    return-void
.end method

.method public setEndAt(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "endAt"    # Ljava/util/Calendar;

    .prologue
    .line 134
    iput-object p1, p0, Lim/doit/pro/model/Project;->endAt:Ljava/util/Calendar;

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 136
    return-void
.end method

.method public setFromTask(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromTask"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lim/doit/pro/model/Project;->fromTask:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setGoal(Ljava/lang/String;)V
    .locals 1
    .param p1, "goal"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lim/doit/pro/model/Project;->goal:Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/Project;->goalName:Ljava/lang/String;

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 156
    return-void
.end method

.method public setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V
    .locals 1
    .param p1, "groupBy"    # Lim/doit/pro/model/enums/GroupByType;

    .prologue
    .line 163
    iput-object p1, p0, Lim/doit/pro/model/Project;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 165
    return-void
.end method

.method public setJsonMedias(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonMedias"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lim/doit/pro/model/Project;->jsonMedias:Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/Project;->medias:Ljava/util/ArrayList;

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 252
    return-void
.end method

.method public setMedias(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    iput-object p1, p0, Lim/doit/pro/model/Project;->medias:Ljava/util/ArrayList;

    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setJsonMedias(Ljava/lang/String;)V

    .line 241
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 242
    return-void

    .line 239
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setJsonMedias(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRepeatNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lim/doit/pro/model/Project;->repeatNo:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setStartAt(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 125
    iput-object p1, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 127
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lim/doit/pro/model/Project;->status:Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setChanged(Z)V

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Project [status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/Project;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->startAt:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string v1, ", endAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->endAt:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", goal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lim/doit/pro/model/Project;->goal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->fromTask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    const-string v1, ", repeatNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/doit/pro/model/Project;->activeNotice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", note="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->completed:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->trashed:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, ", archived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->archived:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->deleted:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lim/doit/pro/model/Project;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->created:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Project;->updated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string v1, ", usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/Project;->usn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAfterStartAtChange(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "oriStartAt"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x1

    .line 321
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    .line 323
    .local v0, "endAt":Ljava/util/Calendar;
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_2

    .line 324
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    .line 325
    if-eqz v1, :cond_2

    .line 326
    const/4 v0, 0x0

    .line 332
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lim/doit/pro/model/Project;->setEndAt(Ljava/util/Calendar;)V

    .line 334
    .end local v0    # "endAt":Ljava/util/Calendar;
    :cond_1
    return-void

    .line 327
    .restart local v0    # "endAt":Ljava/util/Calendar;
    :cond_2
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getEndAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method
