.class Lim/doit/pro/activity/NoticeActivity$LoadingNotices;
.super Lim/doit/pro/asynctask/DoitAsyncTask;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/NoticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingNotices"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lim/doit/pro/asynctask/DoitAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lim/doit/pro/activity/NoticeActivity$NoticeVo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/NoticeActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/NoticeActivity;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {p0}, Lim/doit/pro/asynctask/DoitAsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;-><init>(Lim/doit/pro/activity/NoticeActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;-><init>(Lim/doit/pro/activity/NoticeActivity;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->closeDialog(Landroid/app/Activity;)V

    .line 351
    return-void
.end method

.method private getSenderEmail(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lim/doit/pro/model/Notice;
    .param p2, "contact"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 292
    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getSenderEmail()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "email":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 294
    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_0
    return-object v0
.end method

.method private getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Lim/doit/pro/model/Notice;
    .param p2, "contact"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 284
    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getSenderNickname()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "contactName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 286
    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    return-object v0
.end method

.method private setBodyAboutActivateProject(Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 8
    .param p1, "vo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 313
    iget-object v5, p1, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->notice:Lim/doit/pro/model/Notice;

    invoke-virtual {v5}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findByProject(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 314
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Task;>;"
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v2

    .line 315
    .local v2, "startOftomorrow":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    .line 329
    return-void

    .line 315
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Task;

    .line 316
    .local v0, "item":Lim/doit/pro/model/Task;
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isDead()Z

    move-result v5

    if-nez v5, :cond_0

    .line 319
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v2, v6}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 320
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v5

    .line 323
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getEndAt()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v7

    .line 322
    invoke-static {v5, v6, v7}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatTime(Ljava/util/Calendar;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setBodyTitleAboutTask(Lim/doit/pro/model/Notice;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V
    .locals 4
    .param p1, "item"    # Lim/doit/pro/model/Notice;
    .param p2, "vo"    # Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    .prologue
    .line 300
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 301
    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lim/doit/pro/model/Notice;->getRepeatNo()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v1, v2, v3}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v0

    .line 302
    .local v0, "task":Lim/doit/pro/model/Task;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    const v1, 0x7f0c01c3

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 305
    iput-object v1, p2, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/activity/NoticeActivity$NoticeVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v12

    iget-object v12, v12, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    invoke-virtual {v12}, Lim/doit/pro/db/persist/NoticeDao;->findAll()Ljava/util/ArrayList;

    move-result-object v6

    .line 155
    .local v6, "notices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Notice;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v5, "noticeVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/NoticeActivity$NoticeVo;>;"
    const/4 v3, 0x0

    .line 158
    .local v3, "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 280
    :cond_1
    return-object v5

    .line 158
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/Notice;

    .line 159
    .local v4, "item":Lim/doit/pro/model/Notice;
    const/16 v13, 0x32

    if-ge v3, v13, :cond_1

    .line 162
    new-instance v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-direct {v11, v13, v4}, Lim/doit/pro/activity/NoticeActivity$NoticeVo;-><init>(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/model/Notice;)V

    .line 163
    .local v11, "vo":Lim/doit/pro/activity/NoticeActivity$NoticeVo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v13}, Lim/doit/pro/activity/NoticeActivity;->access$0(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getUuid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 164
    const/4 v13, 0x1

    iput-boolean v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->isShow:Z

    .line 166
    :cond_3
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getNoticeType()Lim/doit/pro/model/enums/NoticeType;

    move-result-object v10

    .line 167
    .local v10, "type":Lim/doit/pro/model/enums/NoticeType;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v13

    iget-object v13, v13, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    .line 168
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getSender()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lim/doit/pro/db/persist/ContactDao;->findByUserId(Ljava/lang/String;)Lim/doit/pro/model/Contact;

    move-result-object v2

    .line 169
    .local v2, "contact":Lim/doit/pro/model/Contact;
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->FORWARD:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 172
    const v13, 0x7f0c01c5

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 173
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 171
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 170
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->setBodyTitleAboutTask(Lim/doit/pro/model/Notice;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    .line 274
    :cond_4
    :goto_1
    iget-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    invoke-static {v13}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 277
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_5
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 178
    const v13, 0x7f0c01c6

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 179
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 177
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 176
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->setBodyTitleAboutTask(Lim/doit/pro/model/Notice;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto :goto_1

    .line 181
    :cond_6
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->ALL_RECEIVER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 183
    const v13, 0x7f0c01c7

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 184
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 182
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 185
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->setBodyTitleAboutTask(Lim/doit/pro/model/Notice;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto :goto_1

    .line 186
    :cond_7
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->SENDER_DELETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 189
    const v13, 0x7f0c01c9

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 188
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 187
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->setBodyTitleAboutTask(Lim/doit/pro/model/Notice;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto/16 :goto_1

    .line 192
    :cond_8
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->SENDER_COMPLETED:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 195
    const v13, 0x7f0c01c8

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 194
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 193
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->setBodyTitleAboutTask(Lim/doit/pro/model/Notice;Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto/16 :goto_1

    .line 198
    :cond_9
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->INVITE:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 201
    const v13, 0x7f0c01ca

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 203
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderEmail(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 200
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 199
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 206
    const v13, 0x7f0c01cb

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 207
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 208
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderEmail(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 205
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 204
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 209
    :cond_a
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->ACCEPT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 212
    const v13, 0x7f0c01cc

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 213
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 214
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderEmail(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 211
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 210
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 215
    :cond_b
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->REJECT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 218
    const v13, 0x7f0c01cd

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 219
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderEmail(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 217
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 216
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_c
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->SYSTEM:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 221
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getTitle()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 222
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getBody()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 223
    :cond_d
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->AD:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 224
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getTitle()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 225
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getBody()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 226
    :cond_e
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->ACTIVATE_BY_TASK:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 229
    const v13, 0x7f0c008c

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 230
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 231
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderEmail(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 228
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 227
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->setBodyAboutActivateProject(Lim/doit/pro/activity/NoticeActivity$NoticeVo;)V

    goto/16 :goto_1

    .line 233
    :cond_f
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->NEW_COMMENT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 234
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v13

    iget-object v13, v13, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 235
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v14

    .line 236
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getRepeatNo()Ljava/lang/String;

    move-result-object v15

    .line 235
    invoke-virtual {v13, v14, v15}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v9

    .line 237
    .local v9, "task":Lim/doit/pro/model/Task;
    if-eqz v9, :cond_10

    .line 238
    invoke-virtual {v9}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyTitle:Ljava/lang/String;

    .line 240
    :cond_10
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v13

    iget-object v13, v13, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    .line 241
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getComment()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lim/doit/pro/db/persist/TaskCommentDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/TaskComment;

    .line 242
    .local v1, "comment":Lim/doit/pro/model/TaskComment;
    if-eqz v1, :cond_11

    .line 243
    invoke-virtual {v1}, Lim/doit/pro/model/TaskComment;->getAuthor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getSender()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 246
    const v13, 0x7f0c01ce

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 247
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 245
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 244
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 248
    invoke-virtual {v1}, Lim/doit/pro/model/TaskComment;->getContent()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 252
    :cond_11
    const v13, 0x7f0c01cf

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 253
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->getSenderName(Lim/doit/pro/model/Notice;Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 251
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 250
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    .line 254
    if-eqz v1, :cond_4

    .line 255
    invoke-virtual {v1}, Lim/doit/pro/model/TaskComment;->getContent()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->bodyContent:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    .end local v1    # "comment":Lim/doit/pro/model/TaskComment;
    .end local v9    # "task":Lim/doit/pro/model/Task;
    :cond_12
    sget-object v13, Lim/doit/pro/model/enums/NoticeType;->AUTO_ACTIVATE_PROJECT:Lim/doit/pro/model/enums/NoticeType;

    invoke-virtual {v13, v10}, Lim/doit/pro/model/enums/NoticeType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 259
    const/4 v8, 0x0

    .line 260
    .local v8, "projectName":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v13

    iget-object v13, v13, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 261
    invoke-virtual {v4}, Lim/doit/pro/model/Notice;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lim/doit/pro/db/persist/ProjectDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v7

    check-cast v7, Lim/doit/pro/model/Project;

    .line 262
    .local v7, "project":Lim/doit/pro/model/Project;
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lim/doit/pro/model/Project;->isNotDeleted()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 263
    invoke-virtual {v7}, Lim/doit/pro/model/Project;->isNotArchived()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 264
    invoke-virtual {v7}, Lim/doit/pro/model/Project;->getName()Ljava/lang/String;

    move-result-object v8

    .line 267
    const v13, 0x7f0c01d0

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 268
    aput-object v8, v14, v15

    .line 266
    invoke-static {v13, v14}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 265
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 271
    :cond_13
    const v13, 0x7f0c01c3

    invoke-static {v13}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v13

    .line 270
    iput-object v13, v11, Lim/doit/pro/activity/NoticeActivity$NoticeVo;->title:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/activity/NoticeActivity$NoticeVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/activity/NoticeActivity$NoticeVo;>;"
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lim/doit/pro/activity/NoticeActivity;->access$2(Lim/doit/pro/activity/NoticeActivity;Ljava/util/ArrayList;)V

    .line 338
    :goto_0
    invoke-static {p1}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$3(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    .line 343
    :goto_1
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$4(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/activity/NoticeActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/activity/NoticeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 345
    invoke-direct {p0}, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->dismissDialog()V

    .line 346
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/doit/pro/activity/NoticeActivity;->access$5(Lim/doit/pro/activity/NoticeActivity;Lim/doit/pro/activity/NoticeActivity$LoadingNotices;)V

    .line 347
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$1(Lim/doit/pro/activity/NoticeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/activity/NoticeActivity;->access$3(Lim/doit/pro/activity/NoticeActivity;)Lim/doit/pro/ui/component/ListViewEmptyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/ListViewEmptyView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lim/doit/pro/activity/NoticeActivity$LoadingNotices;->this$0:Lim/doit/pro/activity/NoticeActivity;

    invoke-static {v0}, Lim/doit/pro/ui/component/DProgressDialog;->show(Landroid/app/Activity;)Lim/doit/pro/ui/component/DProgressDialog;

    .line 149
    return-void
.end method
