.class Lim/doit/pro/utils/SmartAddUtils$NotParseException;
.super Ljava/lang/Exception;
.source "SmartAddUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/utils/SmartAddUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotParseException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1c7ac8afa664b4d5L


# instance fields
.field final synthetic this$0:Lim/doit/pro/utils/SmartAddUtils;


# direct methods
.method private constructor <init>(Lim/doit/pro/utils/SmartAddUtils;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lim/doit/pro/utils/SmartAddUtils$NotParseException;->this$0:Lim/doit/pro/utils/SmartAddUtils;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/utils/SmartAddUtils;Lim/doit/pro/utils/SmartAddUtils$NotParseException;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lim/doit/pro/utils/SmartAddUtils$NotParseException;-><init>(Lim/doit/pro/utils/SmartAddUtils;)V

    return-void
.end method
