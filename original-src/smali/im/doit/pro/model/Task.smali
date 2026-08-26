.class public Lim/doit/pro/model/Task;
.super Lim/doit/pro/model/BaseEntityWithTimestamps;
.source "Task.java"


# static fields
.field private static final serialVersionUID:J = -0x19879faafc1e543dL


# instance fields
.field private allDay:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "all_day"
    .end annotation
.end field

.field private assignment:Lim/doit/pro/model/Assignment;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assignment"
    .end annotation
.end field

.field private attribute:Lim/doit/pro/model/enums/Attribute;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskComment;",
            ">;"
        }
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

.field private estimatedTime:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "estimated_time"
    .end annotation
.end field

.field private fromSubTask:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from_subtask"
    .end annotation
.end field

.field private goal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private goalName:Ljava/lang/String;

.field private hidden:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private jsonAssignment:Ljava/lang/String;

.field private jsonLocalAttachments:Ljava/lang/String;

.field private jsonMedias:Ljava/lang/String;

.field private jsonReminders:Ljava/lang/String;

.field private jsonRepeater:Ljava/lang/String;

.field private jsonTags:Ljava/lang/String;

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

.field private now:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private priority:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private project:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private projectName:Ljava/lang/String;

.field private reminders:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reminders"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
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

.field private repeater:Lim/doit/pro/model/Repeater;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeater"
    .end annotation
.end field

.field private sendOrigin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "send_origin"
    .end annotation
.end field

.field private sender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private senderEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_email"
    .end annotation
.end field

.field private sentAt:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sent_at"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private spentTime:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spent_time"
    .end annotation
.end field

.field private startAt:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_at"
    .end annotation
.end field

.field private subTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntityWithTimestamps;-><init>()V

    return-void
.end method

.method private deepCloneReminders(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "diffDay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    const/4 v1, 0x0

    .line 788
    :cond_0
    return-object v1

    .line 784
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v1, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Reminder;

    .line 786
    .local v0, "item":Lim/doit/pro/model/Reminder;
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Reminder;->deepClone(I)Lim/doit/pro/model/Reminder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deepCloneTags()Ljava/util/ArrayList;
    .locals 4
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
    .line 770
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    const/4 v1, 0x0

    .line 777
    :cond_0
    return-object v1

    .line 773
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v1, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 775
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addComments(Lim/doit/pro/model/TaskComment;)V
    .locals 1
    .param p1, "comment"    # Lim/doit/pro/model/TaskComment;

    .prologue
    .line 612
    iget-object v0, p0, Lim/doit/pro/model/Task;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/model/Task;->comments:Ljava/util/ArrayList;

    .line 615
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    return-void
.end method

.method public clearSomethingBeforeSendTask()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 762
    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setRepeater(Lim/doit/pro/model/Repeater;)V

    .line 763
    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 764
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getAttribute()Lim/doit/pro/model/enums/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 767
    :cond_0
    return-void
.end method

.method public deepClone()Lim/doit/pro/model/Task;
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->deepCloneForBuildRepeaterInstance(I)Lim/doit/pro/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public deepCloneForBuildRepeaterInstance(I)Lim/doit/pro/model/Task;
    .locals 3
    .param p1, "diffDay"    # I

    .prologue
    const/4 v2, 0x5

    .line 726
    new-instance v0, Lim/doit/pro/model/Task;

    invoke-direct {v0}, Lim/doit/pro/model/Task;-><init>()V

    .line 727
    .local v0, "task":Lim/doit/pro/model/Task;
    iget-object v1, p0, Lim/doit/pro/model/Task;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setUuid(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lim/doit/pro/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setTitle(Ljava/lang/String;)V

    .line 729
    iget-object v1, p0, Lim/doit/pro/model/Task;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V

    .line 730
    iget-boolean v1, p0, Lim/doit/pro/model/Task;->allDay:Z

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setAllDay(Z)V

    .line 731
    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 732
    iget-object v1, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 733
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 736
    :cond_0
    iget-object v1, p0, Lim/doit/pro/model/Task;->endAt:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setEndAt(Ljava/util/Calendar;)V

    .line 737
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 740
    :cond_1
    iget v1, p0, Lim/doit/pro/model/Task;->priority:I

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setPriority(I)V

    .line 741
    iget-object v1, p0, Lim/doit/pro/model/Task;->project:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 742
    iget-object v1, p0, Lim/doit/pro/model/Task;->goal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lim/doit/pro/model/Task;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setContext(Ljava/lang/String;)V

    .line 744
    iget-object v1, p0, Lim/doit/pro/model/Task;->completed:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setCompleted(Ljava/util/Calendar;)V

    .line 745
    iget-object v1, p0, Lim/doit/pro/model/Task;->trashed:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setTrashed(Ljava/util/Calendar;)V

    .line 746
    iget-object v1, p0, Lim/doit/pro/model/Task;->archived:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setArchived(Ljava/util/Calendar;)V

    .line 747
    iget-object v1, p0, Lim/doit/pro/model/Task;->hidden:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setHidden(Ljava/util/Calendar;)V

    .line 748
    iget-object v1, p0, Lim/doit/pro/model/Task;->deleted:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setDeleted(Ljava/util/Calendar;)V

    .line 749
    invoke-direct {p0}, Lim/doit/pro/model/Task;->deepCloneTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setTags(Ljava/util/ArrayList;)V

    .line 750
    invoke-direct {p0, p1}, Lim/doit/pro/model/Task;->deepCloneReminders(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setReminders(Ljava/util/ArrayList;)V

    .line 751
    iget-object v1, p0, Lim/doit/pro/model/Task;->sentAt:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setSentAt(Ljava/util/Calendar;)V

    .line 752
    iget v1, p0, Lim/doit/pro/model/Task;->estimatedTime:I

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setEstimatedTime(I)V

    .line 753
    iget-object v1, p0, Lim/doit/pro/model/Task;->jsonMedias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Task;->setJsonMedias(Ljava/lang/String;)V

    .line 754
    return-object v0
.end method

.method public getAssignment()Lim/doit/pro/model/Assignment;
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lim/doit/pro/model/Task;->assignment:Lim/doit/pro/model/Assignment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonAssignment:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Task;->jsonAssignment:Ljava/lang/String;

    const-class v2, Lim/doit/pro/model/Assignment;

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Assignment;

    iput-object v0, p0, Lim/doit/pro/model/Task;->assignment:Lim/doit/pro/model/Assignment;

    .line 420
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->assignment:Lim/doit/pro/model/Assignment;

    return-object v0
.end method

.method public getAttribute()Lim/doit/pro/model/enums/Attribute;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    return-object v0
.end method

.method public getComments()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lim/doit/pro/model/Task;->comments:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    iget-object v1, p0, Lim/doit/pro/model/Task;->uuid:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/model/Task;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/db/persist/TaskCommentDao;->findByTask(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/model/Task;->comments:Ljava/util/ArrayList;

    .line 608
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->comments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lim/doit/pro/model/Task;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getContextName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 544
    iget-object v1, p0, Lim/doit/pro/model/Task;->context:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Task;->contextName:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    iget-object v2, p0, Lim/doit/pro/model/Task;->context:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/TaskContext;

    .line 546
    .local v0, "taskContextObj":Lim/doit/pro/model/TaskContext;
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lim/doit/pro/model/TaskContext;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/model/Task;->contextName:Ljava/lang/String;

    .line 550
    .end local v0    # "taskContextObj":Lim/doit/pro/model/TaskContext;
    :cond_0
    iget-object v1, p0, Lim/doit/pro/model/Task;->contextName:Ljava/lang/String;

    return-object v1
.end method

.method public getEndAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lim/doit/pro/model/Task;->endAt:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEstimatedTime()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lim/doit/pro/model/Task;->estimatedTime:I

    return v0
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
    .line 475
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getMedias()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    const/4 v1, 0x0

    .line 484
    :cond_0
    return-object v1

    .line 478
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getMedias()Ljava/util/ArrayList;

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

    .line 480
    .local v0, "item":Lim/doit/pro/model/Media;
    const-string v3, "evernote"

    invoke-virtual {v0}, Lim/doit/pro/model/Media;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFromSubTask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lim/doit/pro/model/Task;->fromSubTask:Ljava/lang/String;

    return-object v0
.end method

.method public getGoal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lim/doit/pro/model/Task;->goal:Ljava/lang/String;

    return-object v0
.end method

.method public getGoalName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lim/doit/pro/model/Task;->goal:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Task;->goalName:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    iget-object v2, p0, Lim/doit/pro/model/Task;->goal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Goal;

    .line 556
    .local v0, "goalObj":Lim/doit/pro/model/Goal;
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lim/doit/pro/model/Goal;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/model/Task;->goalName:Ljava/lang/String;

    .line 560
    .end local v0    # "goalObj":Lim/doit/pro/model/Goal;
    :cond_0
    iget-object v1, p0, Lim/doit/pro/model/Task;->goalName:Ljava/lang/String;

    return-object v1
.end method

.method public getHidden()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lim/doit/pro/model/Task;->hidden:Ljava/util/Calendar;

    return-object v0
.end method

.method public getJsonAssignment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonAssignment:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonLocalAttachments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonLocalAttachments:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonMedias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonMedias:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonReminders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonReminders:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonRepeater()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonRepeater:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonTags:Ljava/lang/String;

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
    .line 468
    iget-object v0, p0, Lim/doit/pro/model/Task;->medias:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonMedias:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    iget-object v2, p0, Lim/doit/pro/model/Task;->jsonMedias:Ljava/lang/String;

    const-class v3, [Lim/doit/pro/model/Media;

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/doit/pro/model/Media;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lim/doit/pro/model/Task;->medias:Ljava/util/ArrayList;

    .line 471
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->medias:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lim/doit/pro/model/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lim/doit/pro/model/Task;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lim/doit/pro/model/Task;->priority:I

    return v0
.end method

.method public getProject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lim/doit/pro/model/Task;->project:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 534
    iget-object v1, p0, Lim/doit/pro/model/Task;->project:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Task;->projectName:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    iget-object v2, p0, Lim/doit/pro/model/Task;->project:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 536
    .local v0, "projectObj":Lim/doit/pro/model/Project;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/model/Task;->projectName:Ljava/lang/String;

    .line 540
    .end local v0    # "projectObj":Lim/doit/pro/model/Project;
    :cond_0
    iget-object v1, p0, Lim/doit/pro/model/Task;->projectName:Ljava/lang/String;

    return-object v1
.end method

.method public getReminders()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lim/doit/pro/model/Task;->reminders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonReminders:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    iget-object v2, p0, Lim/doit/pro/model/Task;->jsonReminders:Ljava/lang/String;

    const-class v3, [Lim/doit/pro/model/Reminder;

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lim/doit/pro/model/Reminder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lim/doit/pro/model/Task;->reminders:Ljava/util/ArrayList;

    .line 437
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->reminders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRepeatNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lim/doit/pro/model/Task;->repeatNo:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeater()Lim/doit/pro/model/Repeater;
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lim/doit/pro/model/Task;->repeater:Lim/doit/pro/model/Repeater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonRepeater:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/Task;->jsonRepeater:Ljava/lang/String;

    const-class v2, Lim/doit/pro/model/Repeater;

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Repeater;

    iput-object v0, p0, Lim/doit/pro/model/Task;->repeater:Lim/doit/pro/model/Repeater;

    .line 403
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->repeater:Lim/doit/pro/model/Repeater;

    return-object v0
.end method

.method public getSendOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lim/doit/pro/model/Task;->sendOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lim/doit/pro/model/Task;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lim/doit/pro/model/Task;->senderEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getSentAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lim/doit/pro/model/Task;->sentAt:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lim/doit/pro/model/Task;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSpentTime()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lim/doit/pro/model/Task;->spentTime:I

    return v0
.end method

.method public getStartAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSubTasks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lim/doit/pro/model/Task;->subTasks:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    iget-object v1, p0, Lim/doit/pro/model/Task;->uuid:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/model/Task;->repeatNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/db/persist/SubTaskDao;->findByTask(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/model/Task;->subTasks:Ljava/util/ArrayList;

    .line 622
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->subTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 4
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
    .line 451
    iget-object v0, p0, Lim/doit/pro/model/Task;->tags:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonTags:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    iget-object v2, p0, Lim/doit/pro/model/Task;->jsonTags:Ljava/lang/String;

    const-class v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lim/doit/pro/model/Task;->tags:Ljava/util/ArrayList;

    .line 454
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/Task;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lim/doit/pro/model/Task;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasRepeater()Z
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lim/doit/pro/model/Task;->allDay:Z

    return v0
.end method

.method public isAssignment()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 510
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 511
    .local v1, "isAssignment":Z
    :goto_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getAssignment()Lim/doit/pro/model/Assignment;

    move-result-object v0

    .line 512
    .local v0, "assignment":Lim/doit/pro/model/Assignment;
    if-nez v0, :cond_2

    .line 518
    :cond_0
    :goto_1
    return v2

    .end local v0    # "assignment":Lim/doit/pro/model/Assignment;
    .end local v1    # "isAssignment":Z
    :cond_1
    move v1, v2

    .line 510
    goto :goto_0

    .line 515
    .restart local v0    # "assignment":Lim/doit/pro/model/Assignment;
    .restart local v1    # "isAssignment":Z
    :cond_2
    invoke-virtual {v0}, Lim/doit/pro/model/Assignment;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 518
    goto :goto_1
.end method

.method public isCanSendTask()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lim/doit/pro/model/Task;->title:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isNotDead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCannotSendTask()Z
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isCanSendTask()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDead()Z
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isNotDead()Z

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
    .line 635
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isTrashed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isArchived()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isNotDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getHidden()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInbox()Z
    .locals 2

    .prologue
    .line 564
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNext()Z
    .locals 2

    .prologue
    .line 572
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNotDead()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lim/doit/pro/model/Task;->deleted:Ljava/util/Calendar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->hidden:Ljava/util/Calendar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->archived:Ljava/util/Calendar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->trashed:Ljava/util/Calendar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->completed:Ljava/util/Calendar;

    if-nez v0, :cond_0

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
    .line 639
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNotHidden()Z
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNow()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lim/doit/pro/model/Task;->now:Z

    return v0
.end method

.method public isRepeat()Z
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->hasRepeater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeaterEditable()Z
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isNotDead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->repeatNo:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduled()Z
    .locals 3

    .prologue
    .line 581
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isRepeat()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    iget-boolean v2, p0, Lim/doit/pro/model/Task;->allDay:Z

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->after(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSent()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lim/doit/pro/model/Task;->sender:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->senderEmail:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSomeday()Z
    .locals 2

    .prologue
    .line 585
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->noplan:Lim/doit/pro/model/enums/Attribute;

    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isToday()Z
    .locals 3

    .prologue
    .line 568
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->notRepeater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v1

    iget-boolean v2, p0, Lim/doit/pro/model/Task;->allDay:Z

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTomorrow()Z
    .locals 3

    .prologue
    .line 576
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->notRepeater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    iget-boolean v2, p0, Lim/doit/pro/model/Task;->allDay:Z

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->afterOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    iget-boolean v2, p0, Lim/doit/pro/model/Task;->allDay:Z

    invoke-static {v0, v1, v2}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaiting()Z
    .locals 2

    .prologue
    .line 589
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    iget-object v1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWaitingMyself()Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/Task;->jsonAssignment:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notRepeater()Z
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAllDay(Z)V
    .locals 1
    .param p1, "allDay"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lim/doit/pro/model/Task;->allDay:Z

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 159
    return-void
.end method

.method public setAssignment(Lim/doit/pro/model/Assignment;)V
    .locals 1
    .param p1, "assignment"    # Lim/doit/pro/model/Assignment;

    .prologue
    .line 424
    iput-object p1, p0, Lim/doit/pro/model/Task;->assignment:Lim/doit/pro/model/Assignment;

    .line 425
    if-nez p1, :cond_0

    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonAssignment(Ljava/lang/String;)V

    .line 430
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 431
    return-void

    .line 428
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonAssignment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAttribute(Lim/doit/pro/model/enums/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lim/doit/pro/model/enums/Attribute;

    .prologue
    .line 148
    iput-object p1, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 150
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lim/doit/pro/model/Task;->context:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/Task;->contextName:Ljava/lang/String;

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 211
    return-void
.end method

.method public setEndAt(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "endAt"    # Ljava/util/Calendar;

    .prologue
    .line 175
    iput-object p1, p0, Lim/doit/pro/model/Task;->endAt:Ljava/util/Calendar;

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 177
    return-void
.end method

.method public setEstimatedTime(I)V
    .locals 1
    .param p1, "estimatedTime"    # I

    .prologue
    .line 377
    iput p1, p0, Lim/doit/pro/model/Task;->estimatedTime:I

    .line 378
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 379
    return-void
.end method

.method public setFromSubTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "fromSubTask"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lim/doit/pro/model/Task;->fromSubTask:Ljava/lang/String;

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 270
    return-void
.end method

.method public setGoal(Ljava/lang/String;)V
    .locals 2
    .param p1, "goal"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 218
    iput-object p1, p0, Lim/doit/pro/model/Task;->goal:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lim/doit/pro/model/Task;->goalName:Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, v1}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 226
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 227
    return-void
.end method

.method public setHidden(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "hidden"    # Ljava/util/Calendar;

    .prologue
    .line 313
    iput-object p1, p0, Lim/doit/pro/model/Task;->hidden:Ljava/util/Calendar;

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 315
    return-void
.end method

.method public setJsonAssignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonAssignment"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lim/doit/pro/model/Task;->jsonAssignment:Ljava/lang/String;

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 333
    return-void
.end method

.method public setJsonLocalAttachments(Ljava/lang/String;)V
    .locals 1
    .param p1, "localAttachments"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lim/doit/pro/model/Task;->jsonLocalAttachments:Ljava/lang/String;

    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 360
    return-void
.end method

.method public setJsonMedias(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonMedias"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lim/doit/pro/model/Task;->jsonMedias:Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/Task;->medias:Ljava/util/ArrayList;

    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 370
    return-void
.end method

.method public setJsonReminders(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonReminders"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lim/doit/pro/model/Task;->jsonReminders:Ljava/lang/String;

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 342
    return-void
.end method

.method public setJsonRepeater(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonRepeater"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lim/doit/pro/model/Task;->jsonRepeater:Ljava/lang/String;

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 324
    return-void
.end method

.method public setJsonTags(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonTags"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lim/doit/pro/model/Task;->jsonTags:Ljava/lang/String;

    .line 350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 351
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
    .line 488
    .local p1, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Media;>;"
    iput-object p1, p0, Lim/doit/pro/model/Task;->medias:Ljava/util/ArrayList;

    .line 489
    if-nez p1, :cond_0

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonMedias(Ljava/lang/String;)V

    .line 494
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 495
    return-void

    .line 492
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonMedias(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lim/doit/pro/model/Task;->title:Ljava/lang/String;

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 123
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 1
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lim/doit/pro/model/Task;->notes:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 141
    return-void
.end method

.method public setNow(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lim/doit/pro/model/Task;->now:Z

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 261
    return-void
.end method

.method public setPriority(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 250
    iput p1, p0, Lim/doit/pro/model/Task;->priority:I

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 252
    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .locals 2
    .param p1, "project"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 234
    iput-object p1, p0, Lim/doit/pro/model/Task;->project:Ljava/lang/String;

    .line 235
    iput-object v1, p0, Lim/doit/pro/model/Task;->projectName:Ljava/lang/String;

    .line 236
    invoke-static {p1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0, v1}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 242
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 243
    return-void
.end method

.method public setReminders(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    iput-object p1, p0, Lim/doit/pro/model/Task;->reminders:Ljava/util/ArrayList;

    .line 442
    if-nez p1, :cond_0

    .line 443
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonReminders(Ljava/lang/String;)V

    .line 447
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 448
    return-void

    .line 445
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonReminders(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRepeatNo(Ljava/lang/String;)V
    .locals 1
    .param p1, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lim/doit/pro/model/Task;->repeatNo:Ljava/lang/String;

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 132
    return-void
.end method

.method public setRepeater(Lim/doit/pro/model/Repeater;)V
    .locals 1
    .param p1, "repeater"    # Lim/doit/pro/model/Repeater;

    .prologue
    .line 407
    iput-object p1, p0, Lim/doit/pro/model/Task;->repeater:Lim/doit/pro/model/Repeater;

    .line 408
    if-nez p1, :cond_0

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonRepeater(Ljava/lang/String;)V

    .line 413
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 414
    return-void

    .line 411
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonRepeater(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSendOrigin(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendOrigin"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lim/doit/pro/model/Task;->sendOrigin:Ljava/lang/String;

    .line 396
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 397
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lim/doit/pro/model/Task;->sender:Ljava/lang/String;

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 279
    return-void
.end method

.method public setSenderEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "senderEmail"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lim/doit/pro/model/Task;->senderEmail:Ljava/lang/String;

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 288
    return-void
.end method

.method public setSentAt(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "sentAt"    # Ljava/util/Calendar;

    .prologue
    .line 304
    iput-object p1, p0, Lim/doit/pro/model/Task;->sentAt:Ljava/util/Calendar;

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 306
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lim/doit/pro/model/Task;->source:Ljava/lang/String;

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 297
    return-void
.end method

.method public setSpentTime(I)V
    .locals 1
    .param p1, "spentTime"    # I

    .prologue
    .line 386
    iput p1, p0, Lim/doit/pro/model/Task;->spentTime:I

    .line 387
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 388
    return-void
.end method

.method public setStartAt(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "startAt"    # Ljava/util/Calendar;

    .prologue
    .line 166
    iput-object p1, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 168
    return-void
.end method

.method public setSubTasks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/SubTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "subTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/SubTask;>;"
    iput-object p1, p0, Lim/doit/pro/model/Task;->subTasks:Ljava/util/ArrayList;

    .line 627
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 458
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lim/doit/pro/model/Task;->tags:Ljava/util/ArrayList;

    .line 459
    if-nez p1, :cond_0

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonTags(Ljava/lang/String;)V

    .line 464
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 465
    return-void

    .line 462
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setJsonTags(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lim/doit/pro/model/Task;->title:Ljava/lang/String;

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setChanged(Z)V

    .line 112
    return-void
.end method

.method public updateAfterStartAtChange(Ljava/util/Calendar;)V
    .locals 14
    .param p1, "oriStartAt"    # Ljava/util/Calendar;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 662
    sget-object v8, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    iget-object v9, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v8, v9}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 663
    invoke-virtual {p0, v12}, Lim/doit/pro/model/Task;->setProject(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0, v12}, Lim/doit/pro/model/Task;->setGoal(Ljava/lang/String;)V

    .line 667
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeater()Lim/doit/pro/model/Repeater;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 668
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v8

    if-nez v8, :cond_1

    .line 669
    invoke-virtual {p0, v12}, Lim/doit/pro/model/Task;->setRepeater(Lim/doit/pro/model/Repeater;)V

    .line 673
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 674
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    .line 675
    .local v2, "endAt":Ljava/util/Calendar;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v8

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v9

    iget-boolean v10, p0, Lim/doit/pro/model/Task;->allDay:Z

    invoke-static {v8, v9, v10}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 676
    const/4 v2, 0x0

    .line 684
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lim/doit/pro/model/Task;->setEndAt(Ljava/util/Calendar;)V

    .line 687
    .end local v2    # "endAt":Ljava/util/Calendar;
    :cond_3
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 688
    const-wide/16 v0, 0x0

    .line 689
    .local v0, "diff":J
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 690
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 692
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v5, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getReminders()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 709
    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 710
    invoke-virtual {p0, v12}, Lim/doit/pro/model/Task;->setReminders(Ljava/util/ArrayList;)V

    .line 715
    .end local v0    # "diff":J
    .end local v5    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isNow()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 716
    invoke-virtual {p0, v13}, Lim/doit/pro/model/Task;->setNow(Z)V

    .line 718
    :cond_7
    return-void

    .line 677
    .restart local v2    # "endAt":Ljava/util/Calendar;
    :cond_8
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v10

    invoke-static {v8, v9, v10}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 678
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 679
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 680
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v8

    if-nez v8, :cond_2

    .line 681
    const/4 v8, 0x1

    invoke-static {v2, v8, v13}, Lim/doit/pro/utils/DateUtils;->addCurrentDateHour(Ljava/util/Calendar;IZ)V

    goto/16 :goto_0

    .line 693
    .end local v2    # "endAt":Ljava/util/Calendar;
    .restart local v0    # "diff":J
    .restart local v5    # "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/Reminder;

    .line 695
    .local v3, "reminder":Lim/doit/pro/model/Reminder;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v9

    if-nez v9, :cond_a

    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v9

    if-nez v9, :cond_5

    .line 699
    :cond_a
    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v9

    if-nez v9, :cond_b

    .line 700
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 703
    :cond_b
    invoke-virtual {v3}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v4

    .line 704
    .local v4, "reminderTime":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v6, v10, v0

    .line 705
    .local v6, "reminderTimeMills":J
    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 706
    invoke-virtual {v3, v4}, Lim/doit/pro/model/Reminder;->setTime(Ljava/util/Calendar;)V

    .line 707
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 712
    .end local v3    # "reminder":Lim/doit/pro/model/Reminder;
    .end local v4    # "reminderTime":Ljava/util/Calendar;
    .end local v6    # "reminderTimeMills":J
    :cond_c
    invoke-virtual {p0, v5}, Lim/doit/pro/model/Task;->setReminders(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method public updateEndAt(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "endAt"    # Ljava/util/Calendar;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lim/doit/pro/model/Task;->setEndAt(Ljava/util/Calendar;)V

    .line 181
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAssignment()Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v3

    invoke-static {p1, v2, v3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 186
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v1

    .line 187
    .local v1, "oriStartAt":Ljava/util/Calendar;
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 189
    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    .line 193
    :goto_0
    iget-object v2, p0, Lim/doit/pro/model/Task;->startAt:Ljava/util/Calendar;

    if-eqz v2, :cond_2

    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    iget-object v3, p0, Lim/doit/pro/model/Task;->attribute:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v2, v3}, Lim/doit/pro/model/enums/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {p0, v2}, Lim/doit/pro/model/Task;->setAttribute(Lim/doit/pro/model/enums/Attribute;)V

    .line 196
    :cond_2
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {p0, v1}, Lim/doit/pro/model/Task;->updateAfterStartAtChange(Ljava/util/Calendar;)V

    .line 201
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "oriStartAt":Ljava/util/Calendar;
    :cond_3
    return-void

    .line 191
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v1    # "oriStartAt":Ljava/util/Calendar;
    :cond_4
    invoke-virtual {p0, v0}, Lim/doit/pro/model/Task;->setStartAt(Ljava/util/Calendar;)V

    goto :goto_0
.end method
