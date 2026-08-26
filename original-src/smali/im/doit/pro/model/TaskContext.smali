.class public Lim/doit/pro/model/TaskContext;
.super Lim/doit/pro/model/BaseEntityWithPos;
.source "TaskContext.java"


# static fields
.field private static final serialVersionUID:J = -0x5ddf6948d0ad67L


# instance fields
.field private deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private groupBy:Lim/doit/pro/model/enums/GroupByType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_by"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithPos;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lim/doit/pro/model/TaskContext;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getGroupBy()Lim/doit/pro/model/enums/GroupByType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/model/TaskContext;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/model/TaskContext;->deleted:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 30
    iput-object p1, p0, Lim/doit/pro/model/TaskContext;->deleted:Ljava/util/Calendar;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/TaskContext;->setChanged(Z)V

    .line 32
    return-void
.end method

.method public setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V
    .locals 1
    .param p1, "groupBy"    # Lim/doit/pro/model/enums/GroupByType;

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/model/TaskContext;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/TaskContext;->setChanged(Z)V

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskContext [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/TaskContext;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskContext;->deleted:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskContext;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskContext;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskContext;->created:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/TaskContext;->updated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/TaskContext;->usn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
