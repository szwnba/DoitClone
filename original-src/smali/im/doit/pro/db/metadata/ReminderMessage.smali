.class public Lim/doit/pro/db/metadata/ReminderMessage;
.super Ljava/lang/Object;
.source "ReminderMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EXTRA_ALLDAY:Ljava/lang/String; = "im.doit.domain.allday"

.field private static final EXTRA_ENDAT:Ljava/lang/String; = "im.doit.domain.end_at"

.field private static final EXTRA_NOTIFY_ID:Ljava/lang/String; = "im.doit.domain.notify_id"

.field private static final EXTRA_REPEAT_NO:Ljava/lang/String; = "im.doit.domain.repeat_no"

.field private static final EXTRA_STARTAT:Ljava/lang/String; = "im.doit.domain.start_at"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "im.doit.domain.title"

.field private static final EXTRA_UUID:Ljava/lang/String; = "im.doit.domain.uuid"

.field private static final PREFIX:Ljava/lang/String; = "im.doit.domain."

.field private static final serialVersionUID:J = 0x613e7c1f8e7dff74L


# instance fields
.field public allDay:Z

.field public checkDate:J

.field public endAt:J

.field private notify:Z

.field public notifyId:I

.field public reminderTime:J

.field public repeatNo:Ljava/lang/String;

.field public startAt:J

.field public title:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notify:Z

    .line 71
    const-string v0, "im.doit.domain.notify_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notifyId:I

    .line 72
    const-string v0, "im.doit.domain.title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->title:Ljava/lang/String;

    .line 73
    const-string v0, "im.doit.domain.repeat_no"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    .line 74
    const-string v0, "im.doit.domain.start_at"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->startAt:J

    .line 75
    const-string v0, "im.doit.domain.uuid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    .line 76
    const-string v0, "im.doit.domain.end_at"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->endAt:J

    .line 77
    const-string v0, "im.doit.domain.allday"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->allDay:Z

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lim/doit/pro/model/Task;I)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "task"    # Lim/doit/pro/model/Task;
    .param p3, "notifyId"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notify:Z

    .line 61
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->title:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v0

    iput-wide v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->startAt:J

    .line 63
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v0

    iput-wide v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->endAt:J

    .line 64
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    .line 65
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    .line 66
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->allDay:Z

    .line 67
    iput p3, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notifyId:I

    .line 68
    return-void
.end method

.method public constructor <init>(Lim/doit/pro/model/Task;Ljava/util/Calendar;JI)V
    .locals 3
    .param p1, "task"    # Lim/doit/pro/model/Task;
    .param p2, "checkDate"    # Ljava/util/Calendar;
    .param p3, "reminderTime"    # J
    .param p5, "notifyId"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notify:Z

    .line 49
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->title:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v0

    iput-wide v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->startAt:J

    .line 51
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->convertToLong(Ljava/util/Calendar;)J

    move-result-wide v0

    iput-wide v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->endAt:J

    .line 52
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v0

    iput-boolean v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->allDay:Z

    .line 55
    iput p5, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notifyId:I

    .line 56
    iput-wide p3, p0, Lim/doit/pro/db/metadata/ReminderMessage;->reminderTime:J

    .line 57
    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->checkDate:J

    .line 58
    return-void

    .line 57
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notify:Z

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "im.doit.domain.title"

    iget-object v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "im.doit.domain.start_at"

    iget-wide v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->startAt:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    const-string v1, "im.doit.domain.uuid"

    iget-object v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "im.doit.domain.repeat_no"

    iget-object v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "im.doit.domain.end_at"

    iget-wide v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->endAt:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string v1, "im.doit.domain.allday"

    iget-boolean v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->allDay:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    const-string v1, "im.doit.domain.notify_id"

    iget v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notifyId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReminderMessage [title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/db/metadata/ReminderMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->startAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/db/metadata/ReminderMessage;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/db/metadata/ReminderMessage;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->endAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, ", allDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/doit/pro/db/metadata/ReminderMessage;->allDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reminderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->reminderTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/db/metadata/ReminderMessage;->checkDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lim/doit/pro/db/metadata/ReminderMessage;->notify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
