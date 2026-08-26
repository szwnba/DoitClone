.class public Lim/doit/pro/model/BaseEntity;
.super Ljava/lang/Object;
.source "BaseEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x450a8c0ba3cd9c77L


# instance fields
.field protected created:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isChanged:Z

.field private transient mDataChangeListener:Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;

.field protected updated:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected usn:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field protected uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreated()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lim/doit/pro/model/BaseEntity;->created:Ljava/util/Calendar;

    return-object v0
.end method

.method public getUniqUuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "repeatNo":Ljava/lang/String;
    instance-of v2, p0, Lim/doit/pro/model/Task;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 52
    check-cast v2, Lim/doit/pro/model/Task;

    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    instance-of v2, p0, Lim/doit/pro/model/TaskReviewInfo;

    if-eqz v2, :cond_1

    move-object v2, p0

    .line 55
    check-cast v2, Lim/doit/pro/model/TaskReviewInfo;

    invoke-virtual {v2}, Lim/doit/pro/model/TaskReviewInfo;->getRepeatNo()Ljava/lang/String;

    move-result-object v1

    .line 57
    :cond_1
    iget-object v0, p0, Lim/doit/pro/model/BaseEntity;->uuid:Ljava/lang/String;

    .line 58
    .local v0, "id":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_2
    return-object v0
.end method

.method public getUpdated()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lim/doit/pro/model/BaseEntity;->updated:Ljava/util/Calendar;

    return-object v0
.end method

.method public getUsn()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lim/doit/pro/model/BaseEntity;->usn:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lim/doit/pro/model/BaseEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lim/doit/pro/model/BaseEntity;->isChanged:Z

    return v0
.end method

.method public setChanged(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lim/doit/pro/model/BaseEntity;->isChanged:Z

    .line 44
    iget-object v0, p0, Lim/doit/pro/model/BaseEntity;->mDataChangeListener:Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lim/doit/pro/model/BaseEntity;->mDataChangeListener:Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;

    invoke-interface {v0, p1}, Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;->onChange(Z)V

    .line 47
    :cond_0
    return-void
.end method

.method public setCreated(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "created"    # Ljava/util/Calendar;

    .prologue
    .line 78
    iput-object p1, p0, Lim/doit/pro/model/BaseEntity;->created:Ljava/util/Calendar;

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/BaseEntity;->setChanged(Z)V

    .line 80
    return-void
.end method

.method public setOnDataChangeListener(Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;

    .prologue
    .line 30
    iput-object p1, p0, Lim/doit/pro/model/BaseEntity;->mDataChangeListener:Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;

    .line 31
    return-void
.end method

.method public setUpdated(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "updated"    # Ljava/util/Calendar;

    .prologue
    .line 87
    iput-object p1, p0, Lim/doit/pro/model/BaseEntity;->updated:Ljava/util/Calendar;

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/BaseEntity;->setChanged(Z)V

    .line 89
    return-void
.end method

.method public setUsn(J)V
    .locals 1
    .param p1, "usn"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lim/doit/pro/model/BaseEntity;->usn:J

    .line 97
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lim/doit/pro/model/BaseEntity;->uuid:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/BaseEntity;->setChanged(Z)V

    .line 71
    return-void
.end method
