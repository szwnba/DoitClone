.class public Lim/doit/pro/model/SubTask;
.super Lim/doit/pro/model/BaseTimestampsEntity;
.source "SubTask.java"


# static fields
.field private static final serialVersionUID:J = -0x738d818484bbc7faL


# instance fields
.field private hidden:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private repeatNo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeat_no"
    .end annotation
.end field

.field private task:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lim/doit/pro/model/BaseTimestampsEntity;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "taskUUID"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Lim/doit/pro/model/BaseTimestampsEntity;-><init>()V

    .line 34
    iput-object p1, p0, Lim/doit/pro/model/SubTask;->task:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lim/doit/pro/model/SubTask;->repeatNo:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public convertToTask(Ljava/lang/String;)Lim/doit/pro/model/Task;
    .locals 4
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lim/doit/pro/model/Task;

    invoke-direct {v0}, Lim/doit/pro/model/Task;-><init>()V

    .line 91
    .local v0, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lim/doit/pro/model/SubTask;->getTitle()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0009

    invoke-static {v3}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lim/doit/pro/utils/StringUtils;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setTitle(Ljava/lang/String;)V

    .line 94
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 95
    invoke-virtual {p0}, Lim/doit/pro/model/SubTask;->getCompleted()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setCompleted(Ljava/util/Calendar;)V

    .line 96
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lim/doit/pro/model/SubTask;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/Task;->setFromSubTask(Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method public getHidden()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lim/doit/pro/model/SubTask;->hidden:Ljava/util/Calendar;

    return-object v0
.end method

.method public getRepeatNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/model/SubTask;->repeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lim/doit/pro/model/SubTask;->task:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskUniqUuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lim/doit/pro/model/SubTask;->task:Ljava/lang/String;

    .line 76
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lim/doit/pro/model/SubTask;->repeatNo:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/model/SubTask;->repeatNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/model/SubTask;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setHidden(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "hidden"    # Ljava/util/Calendar;

    .prologue
    .line 70
    iput-object p1, p0, Lim/doit/pro/model/SubTask;->hidden:Ljava/util/Calendar;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/SubTask;->setChanged(Z)V

    .line 72
    return-void
.end method

.method public setRepeatNo(Ljava/lang/String;)V
    .locals 1
    .param p1, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lim/doit/pro/model/SubTask;->repeatNo:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/SubTask;->setChanged(Z)V

    .line 63
    return-void
.end method

.method public setTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lim/doit/pro/model/SubTask;->task:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/SubTask;->setChanged(Z)V

    .line 54
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/model/SubTask;->title:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/SubTask;->setChanged(Z)V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubTask [title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/model/SubTask;->getPos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->task:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->hidden:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lim/doit/pro/model/SubTask;->completed:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->trashed:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", archived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->archived:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->deleted:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->created:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/SubTask;->updated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/SubTask;->usn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
