.class public Lim/doit/pro/model/Box;
.super Lim/doit/pro/model/BaseEntity;
.source "Box.java"


# static fields
.field private static final serialVersionUID:J = -0x330258d1713b46fdL


# instance fields
.field private countOverdue:I

.field private countTotal:I

.field private groupBy:Lim/doit/pro/model/enums/GroupByType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_by"
    .end annotation
.end field

.field private hidden:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private iconResId:I

.field private nameResId:I

.field private showOne:Z

.field private type:Lim/doit/pro/model/enums/BoxType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/model/Box;->showOne:Z

    .line 37
    return-void
.end method

.method public constructor <init>(ILim/doit/pro/model/enums/BoxType;)V
    .locals 1
    .param p1, "name"    # I
    .param p2, "type"    # Lim/doit/pro/model/enums/BoxType;

    .prologue
    .line 39
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/model/Box;->showOne:Z

    .line 40
    iput p1, p0, Lim/doit/pro/model/Box;->nameResId:I

    .line 41
    iput-object p2, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    .line 42
    return-void
.end method


# virtual methods
.method public getCountOverdue()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lim/doit/pro/model/Box;->countOverdue:I

    return v0
.end method

.method public getCountTotal()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lim/doit/pro/model/Box;->countTotal:I

    return v0
.end method

.method public getGroupBy()Lim/doit/pro/model/enums/GroupByType;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lim/doit/pro/model/Box;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public getHidden()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lim/doit/pro/model/Box;->hidden:Ljava/util/Calendar;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lim/doit/pro/model/Box;->iconResId:I

    return v0
.end method

.method public getNameResId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lim/doit/pro/model/Box;->nameResId:I

    return v0
.end method

.method public getType()Lim/doit/pro/model/enums/BoxType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->completed:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContexts()Z
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->contexts:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDoitNow()Z
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->doitnow:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFilters()Z
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->filters:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGoals()Z
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->goals:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/model/Box;->hidden:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInbox()Z
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->inbox:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNext()Z
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProjects()Z
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->projects:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScheduled()Z
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->scheduled:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowOne()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lim/doit/pro/model/Box;->showOne:Z

    return v0
.end method

.method public isSomeday()Z
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->someday:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isToday()Z
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTomorrow()Z
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTrash()Z
    .locals 2

    .prologue
    .line 175
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->trash:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWaiting()Z
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lim/doit/pro/model/enums/BoxType;->waiting:Lim/doit/pro/model/enums/BoxType;

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCountOverdue(I)V
    .locals 0
    .param p1, "countOverdue"    # I

    .prologue
    .line 96
    iput p1, p0, Lim/doit/pro/model/Box;->countOverdue:I

    .line 97
    return-void
.end method

.method public setCountTotal(I)V
    .locals 0
    .param p1, "countTotal"    # I

    .prologue
    .line 104
    iput p1, p0, Lim/doit/pro/model/Box;->countTotal:I

    .line 105
    return-void
.end method

.method public setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V
    .locals 0
    .param p1, "groupBy"    # Lim/doit/pro/model/enums/GroupByType;

    .prologue
    .line 57
    iput-object p1, p0, Lim/doit/pro/model/Box;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    .line 58
    return-void
.end method

.method public setHidden(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "hidden"    # Ljava/util/Calendar;

    .prologue
    .line 65
    iput-object p1, p0, Lim/doit/pro/model/Box;->hidden:Ljava/util/Calendar;

    .line 66
    return-void
.end method

.method public setIconResId(I)V
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 80
    iput p1, p0, Lim/doit/pro/model/Box;->iconResId:I

    .line 81
    return-void
.end method

.method public setNameResId(I)V
    .locals 0
    .param p1, "nameResId"    # I

    .prologue
    .line 88
    iput p1, p0, Lim/doit/pro/model/Box;->nameResId:I

    .line 89
    return-void
.end method

.method public setShowOne(Z)V
    .locals 0
    .param p1, "showOne"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lim/doit/pro/model/Box;->showOne:Z

    .line 113
    return-void
.end method

.method public setType(Lim/doit/pro/model/enums/BoxType;)V
    .locals 0
    .param p1, "type"    # Lim/doit/pro/model/enums/BoxType;

    .prologue
    .line 49
    iput-object p1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Box [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/Box;->type:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Box;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Box;->hidden:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/model/Box;->iconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/model/Box;->nameResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string v1, ", countOverdue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/model/Box;->countOverdue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/model/Box;->countTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showOne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/doit/pro/model/Box;->showOne:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Box;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lim/doit/pro/model/Box;->created:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Box;->updated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/Box;->usn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
